using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.IO;

public partial class Skill_assessment : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_sub_skill_Click1(object sender, EventArgs e)
    {
        assessment obj = new assessment();
        string skill = obj.skill_assessment(CBL_skill1, CBL_skill2, CBL_skill3, CBL_skill4);
        int flag = obj.check(obj.skill_count);
        if (flag == 0)
        {
            Session["skill_array"] = skill;
            Response.Redirect("Interest_assessment.aspx");
        }
        else if (flag == 1)
        {
            lbl_message.Text = "You should have to enter 3 skill value!";
            lbl_message.Visible = true;
        }
        else
        {
            CBL_skill1.ClearSelection();
            CBL_skill2.ClearSelection();
            CBL_skill3.ClearSelection();
            CBL_skill4.ClearSelection();
            lbl_message.Text = "You can enter maximum three BEST skill";
            lbl_message.Visible = true;
            //Response.Write("<script>alert('You can enter maximum three BEST skills')</script>");
        }
    }
}