using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Home : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\Arpit\Desktop\CounsellorsDome\App_Data\Database.mdf;Integrated Security=True;User Instance=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
    }
    protected void btn_start_assess_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("select * from assessment_master where fk_user= "+Session["pkofuser"]+ " ", con);
        SqlDataReader sdr = cmd.ExecuteReader();
        if (sdr.Read())
        {
            lbl_message.Visible = true;
        }
        else
        {
            Response.Redirect("Skill_assessment.aspx");
        }
    }
}