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

    protected void btn_start_assess_Click(object sender, EventArgs e)
    {
        Response.Redirect("Login.aspx");
    }
}