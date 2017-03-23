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
    interestmaster obj = new interestmaster();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bind_interest();
        }
    }
    private void bind_interest()
    {
        GridView1.DataSource = obj.selectinterest();
        GridView1.DataBind();
    }

    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        bind_interest();
    }

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "edit_interest")
        {
            DataRow dRow = obj.selectinterestbyid(int.Parse(e.CommandArgument.ToString()));
            filldata(dRow);
            btn_submit.Text = "Update";
        }
        else if (e.CommandName == "delete_interest")
        {
            int res = obj.delete_interest(int.Parse(e.CommandArgument.ToString()));
            if (res > 0)
            {
                lbl_message.Text = "Skill Deleted Succesfully.";
                lbl_message.Visible = true;
                bind_interest();
            }
        }
    }
    private void filldata(DataRow dr)
    {
        lblinterest_id.Text = dr["pk_interest"].ToString();
        txtinterest.Text = dr["interest"].ToString();
        txtinterest_type.Text = dr["fk_interest_type"].ToString();
        txt_desc.Text = dr["description"].ToString();
    }
    protected void btn_submit_Click(object sender, EventArgs e)
    {
        int res = 0;
        if (lblinterest_id.Text == "")
        {
            res = obj.insert_interest(txtinterest.Text, int.Parse(txtinterest_type.Text), txt_desc.Text);
            if (res > 0)
            {
                lbl_message.Text = "Interest inserted";
                lbl_message.Visible = true;
            }
        }
        else
        {
            res = obj.update_interest(int.Parse(lblinterest_id.Text), txtinterest.Text, int.Parse(txtinterest_type.Text), txt_desc.Text);
            if (res > 0)
            {
                lbl_message.Text = "Interest Data Updated";
                lbl_message.Visible = true;
            }
        }
        if (res > 0)
        {
            bind_interest();
        }
    }
}