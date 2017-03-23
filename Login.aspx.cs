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
    string connstring = ConfigurationManager.ConnectionStrings["WingtipToys"].ConnectionString;
    SqlConnection con = new SqlConnection();
    string uname,userpk;
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
    }
    protected void btn_login_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("select * from users where fk_user_type=1 and email_adress='"+txt_emailid.Text+"' and password='" + txt_pass.Text + "' ", con);
        SqlDataReader sdr = cmd.ExecuteReader();
        
        if (sdr.Read())
        {
            sdr.Close();
            SqlCommand cmdcdid = new SqlCommand("select first_name from users where email_adress ='" + txt_emailid.Text + "' ", con);
            SqlDataReader sdrid = cmdcdid.ExecuteReader();

            while (sdrid.Read())
            {
                //int userid = Convert.ToInt32(sdr1.ToString());
                uname = sdrid["first_name"].ToString();
                //Response.Write(userid);
            }
            Session["username"] = uname;
            Session["emailid"] = txt_emailid.Text;
            Response.Redirect("Home_admin.aspx");
        }
        else
        {
            sdr.Close();            
            SqlCommand cmd1 = new SqlCommand("select * from users where fk_user_type=2 and email_adress='" + txt_emailid.Text + "' and password='" + txt_pass.Text + "' ", con);
            SqlDataReader sdr1 = cmd1.ExecuteReader();
            if (sdr1.Read())
            {
                sdr1.Close();
                SqlCommand cmdcdid = new SqlCommand("select pk_users,first_name from users where email_adress ='" + txt_emailid.Text + "' ", con);
                SqlDataReader sdrid = cmdcdid.ExecuteReader();

                while (sdrid.Read())
                {
                    //int userid = Convert.ToInt32(sdr1.ToString());
                    uname = sdrid["first_name"].ToString();
                    userpk = sdrid["pk_users"].ToString();
                    //Response.Write(userid);
                }

                Session["emailid"] = txt_emailid.Text;
                Session["username"] = uname;
                Session["pkofuser"] = int.Parse(userpk);
                Response.Redirect("Home_student.aspx");
            }
            else
            {
                sdr1.Close();            
                SqlCommand cmd2 = new SqlCommand("select * from users where fk_user_type=3 and email_adress='" + txt_emailid.Text + "' and password='" + txt_pass.Text + "' ", con);
                SqlDataReader sdr2 = cmd2.ExecuteReader();
                if (sdr2.Read())
                {
                    sdr2.Close();
                    SqlCommand cmdcdid = new SqlCommand("select first_name from users where email_adress ='" + txt_emailid.Text + "' ", con);
                    SqlDataReader sdrid1 = cmdcdid.ExecuteReader();

                    while (sdrid1.Read())
                    {
                        //int userid = Convert.ToInt32(sdr1.ToString());
                        uname = sdrid1["first_name"].ToString();
                        //Response.Write(userid);
                    }

                    Session["emailid"] = txt_emailid.Text;
                    Session["username"] = uname;
                    Response.Redirect("Home_counsellor.aspx");

                }
                else
                {
                    lbl_message.Text = "Your username and password is invalid";
                    lbl_message.Visible = true;
                    //Response.Redirect("Login.aspx");
                }

            }
        }

    }
    protected void lb_pass_Click(object sender, EventArgs e)
    {
        Response.Redirect("Forgot_password.aspx");
    }
}