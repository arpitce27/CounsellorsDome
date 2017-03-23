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
    skillmaster obj = new skillmaster();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bind_skill();
        }
    }

    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        bind_skill();

    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "edit_skill")
        {
            DataRow dRow = obj.selectskillbyid(int.Parse(e.CommandArgument.ToString()));
            filldata(dRow);
            btn_submit.Text = "Update";
        }
        else if (e.CommandName == "delete_skill")
        {
            int res = obj.delete_skill(int.Parse(e.CommandArgument.ToString()));
            if (res > 0)
            {
                lbl_message.Text = "Skill Deleted Succesfully.";
                lbl_message.Visible = true;
                bind_skill();
            }
        }
    }
    private void filldata(DataRow dr)
    {
        lblskill_id.Text = dr["pk_skill"].ToString();
        txtskill_type.Text = dr["fk_skill_type"].ToString();
        txtskill.Text = dr["skill"].ToString();
        txtskill_desc.Text = dr["description"].ToString();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        int res = 0;
        if (lblskill_id.Text == "")
        {
            res = obj.insert_skill(int.Parse(txtskill_type.Text), txtskill.Text, txtskill_desc.Text);
            if (res > 0)
            {
                lbl_message.Text = "Skill inserted";
                lbl_message.Visible = true;
            }
        }
        else
        {
            res = obj.update_skill(int.Parse(lblskill_id.Text), int.Parse(txtskill_type.Text), txtskill.Text, txtskill_desc.Text);
            if (res > 0)
            {
                lbl_message.Text = "Skill Data Updated";
                lbl_message.Visible = true;
            }
        }
        if (res > 0)
        {
            bind_skill();
        }
    }
    private void bind_skill()
    {
        GridView1.DataSource = obj.selectskill();
        GridView1.DataBind();
    }
}