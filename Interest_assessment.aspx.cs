using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Interest_assessment : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_login_Click(object sender, EventArgs e)
    {
        assessment obj = new assessment();
        string interest = obj.interest_assessment(CBL_interest1, CBL_interest2, CBL_interest3, CBL_interest4, CBL_interest5, CBL_interest6);
        int flag = obj.check(obj.interest_count);
        if (flag == 0)
        {
            Session["interest_array"] = interest;
            Response.Redirect("Information_Assessment.aspx");
        }
        else if (flag == 1)
        {
            lbl_message.Text = "You should have to enter 3 interest value!";
            lbl_message.Visible = true;
        }

        else
        {
            CBL_interest1.ClearSelection();
            CBL_interest2.ClearSelection();
            CBL_interest3.ClearSelection();
            CBL_interest4.ClearSelection();
            CBL_interest5.ClearSelection();
            CBL_interest6.ClearSelection();
            lbl_message.Text = "You can enter maximum three BEST interests";
            lbl_message.Visible = true;
            //Response.Write("<script>alert('You can enter maximum three BEST interests')</script>");
        }
        //string[] interest_array = interest.Split(',');
        //Response.Write(interest);
        //foreach (string item in interest_array)
        //{
        //    Response.Write(item);
        //    Response.Write(" ");
        //}
    }
}