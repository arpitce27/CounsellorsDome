using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Login : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\Arpit\Desktop\CounsellorsDome\App_Data\Database.mdf;Integrated Security=True;User Instance=True");
    string answer;
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
        t1.Visible = false;
        t2.Visible = false;
    }
    protected void btn_login_Click(object sender, EventArgs e)
    {
        t1.Visible = true;
        //t3.Visible = false;
        string qry = "select security_que,security_ans from users where email_adress ='" + txt_emailid.Text + "'  ";
        SqlCommand cmd = new SqlCommand(qry,con);
        SqlDataReader dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            
            txt_secque.Text = dr["security_que"].ToString();
            answer = dr["security_ans"].ToString();
        }
        dr.Close();

    }
    protected void btn_submit_Click(object sender, EventArgs e)
    {

        string qry3 = "select  * from users where email_adress ='" + txt_emailid.Text + "' and security_que='"+txt_secque.Text+"' and security_ans='"+txt_ans.Text+"' ";
        SqlCommand cmd3 = new SqlCommand(qry3,con);
        SqlDataReader sdr3 = cmd3.ExecuteReader();
        if (sdr3.Read())
        {
            t1.Visible = true;
            t2.Visible = true;
        }
        else
        {
            t1.Visible = true;
            Label1.Visible = true;
        }
        sdr3.Close();
    }
    protected void btn_set_Click(object sender, EventArgs e)
    {
        string qry1 = "update users set password ='" + txt_pass.Text + "' where email_adress ='" + txt_emailid.Text + "'  ";
        SqlCommand cmd1 = new SqlCommand(qry1,con);
        cmd1.ExecuteNonQuery();
        Response.Redirect("Login.aspx");
    }
}