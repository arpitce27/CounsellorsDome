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
        Session["username"] = null;
        Session["emailid"]= null;
        Session["pkofuser"]= null;
        Session["skill_array"]= null;
        Session["interest_array"] = null;
        Response.Redirect("Login.aspx");
        Response.Cache.SetNoStore();
    }
}