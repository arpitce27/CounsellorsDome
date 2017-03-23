using System;
using System.Data;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;
using System.IO;

public partial class Home : System.Web.UI.Page
{
    careermaster obj = new careermaster();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bind_career();
        }
    }
    private void bind_career()
    {
        GridView1.DataSource = obj.selectcareer();
        GridView1.DataBind();
    }

    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        bind_career();
    }

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "edit_career")
        {
            DataRow dRow = obj.selectcareerbyid(int.Parse(e.CommandArgument.ToString()));
            filldata(dRow);
            btn_submit.Text = "Update";
        }
        else if (e.CommandName == "delete_career")
        {
            int res = obj.delete_career(int.Parse(e.CommandArgument.ToString()));
            if (res > 0)
            {
                lbl_message.Text = "Career Deleted Succesfully.";
                lbl_message.Visible = true;
                bind_career();
            }
        }
    }
    private void filldata(DataRow dr)
    {
        lblcareer_id.Text = dr["pk_career"].ToString();
        txtcareer.Text = dr["career"].ToString();
        txtcareer_type.Text = dr["fk_career_type"].ToString();
        txtcareer_desc.Text = dr["description"].ToString();
    }
    protected void btn_submit_Click(object sender, EventArgs e)
    {
        int res = 0;
        if (lblcareer_id.Text == "")
        {
            res = obj.insert_career(txtcareer.Text, int.Parse(txtcareer_type.Text), txtcareer_desc.Text);
            if (res > 0)
            {
                lbl_message.Text = "career inserted";
                lbl_message.Visible = true;
            }
        }
        else
        {
            res = obj.update_career(int.Parse(lblcareer_id.Text), txtcareer.Text, int.Parse(txtcareer_type.Text), txtcareer_desc.Text);
            if (res > 0)
            {
                lbl_message.Text = "career Data Updated";
                lbl_message.Visible = true;
            }
        }
        if (res > 0)
        {
            bind_career();
        }
    }
}