using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.IO;

public partial class Signup : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\Arpit\Desktop\CounsellorsDome\App_Data\Database.mdf;Integrated Security=True;User Instance=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
    }
    protected void btn_signup_Click(object sender, EventArgs e)
    {
        string str = "insert into users (fk_user_type,first_name,last_name,birthdate,gender,password,phone_no,email_adress,adress,city,state,country,zip_code,security_que,security_ans) values ('" + int.Parse(rbl_utype.SelectedValue) + "','" + txt_fname.Text + "','" + txt_lname.Text + "','" + txt_dob.Text + "','" + RBL_gender.SelectedValue + "','" + txt_password.Text + "','" + txt_phnum.Text + "','" + txt_email.Text + "','" + txt_add.Text + "','" + txt_city.Text + "','" + txt_state.Text + "','" + txt_country.Text + "','" + txt_zip.Text + "','"+DDL_sec_que.SelectedValue.ToString()+"','"+txt_ans.Text+"') ";
        SqlCommand cmd = new SqlCommand(str, con);
        cmd.ExecuteNonQuery();
        //Response.Write("<script>alert('Ur data is entered')</script>");
        Response.Redirect("Login.aspx");
    }

}