using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lbl_username.Text = Session["username"].ToString();
    }
    protected void btn_institution_Click(object sender, EventArgs e)
    {
        Response.Redirect("Admin_Institution.aspx");
    }
    protected void btn_career_Click(object sender, EventArgs e)
    {
        Response.Redirect("Admin_career.aspx");
    }
    protected void btn_skill_Click(object sender, EventArgs e)
    {
        Response.Redirect("Admin_skill.aspx");
    }
    protected void btn_interest_Click(object sender, EventArgs e)
    {
        Response.Redirect("Admin_interest.aspx");
    }
    protected void btn_add_admin_Click(object sender, EventArgs e)
    {
        Response.Redirect("Admin_add_admin.aspx");
    }
    protected void btn_account_manage_Click(object sender, EventArgs e)
    {
        Response.Redirect("Admin_manage_account.aspx");
    }
}