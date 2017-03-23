using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.IO;

public partial class Home : System.Web.UI.Page
{

    best_career obj = new best_career();
    string stream;
    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\Arpit\Desktop\CounsellorsDome\App_Data\Database.mdf;Integrated Security=True;User Instance=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from assessment_master where fk_user= " + Session["pkofuser"] + " ", con);
        SqlDataReader sdr = cmd.ExecuteReader();
        if (!sdr.Read())
        {
            Response.Redirect("Assessment.aspx");
        }
        sdr.Close();
        fetchdate();
    }
    public void fetchdate()
    {
        
        string user_info_qry = "select first_name,last_name,gender,email_adress, phone_no from users where pk_users = '" + int.Parse(Session["pkofuser"].ToString()) + "'   ";
        SqlCommand cmd1 = new SqlCommand(user_info_qry,con);
        SqlDataReader dr1 = cmd1.ExecuteReader();
        while (dr1.Read())
        {
            lbl_ufname.Text = dr1["first_name"].ToString();
            lbl_ulname.Text = dr1["last_name"].ToString();
            lbl_gender.Text = dr1["gender"].ToString();
            lbl_email.Text = dr1["email_adress"].ToString();
            lbl_ph_num.Text = dr1["phone_no"].ToString();
        }
        dr1.Close();

        string query = "select fk_stream,tenth_percentage,twelve_percentage from assessment_master where fk_user = '" + int.Parse(Session["pkofuser"].ToString()) + "'  ";
        SqlCommand cmd2 = new SqlCommand(query,con);
        SqlDataReader dr2 = cmd2.ExecuteReader();
        while (dr2.Read())
        {
            stream = dr2["fk_stream"].ToString();
            lbl_tenper.Text = dr2["tenth_percentage"].ToString();
            lbl_twelve.Text = dr2["twelve_percentage"].ToString();
        }
        dr2.Close();

        string str_qry = "select stream from stream where pk_stream='"+int.Parse(stream.ToString())+"'   ";
        SqlCommand cmd3 = new SqlCommand(str_qry,con);
        SqlDataReader dr3 = cmd3.ExecuteReader();
        while (dr3.Read())
        { 
            lbl_stream.Text = dr3["stream"].ToString();
        }
        dr3.Close();

        string career_list = obj.finalcareername(Session["pkofuser"].ToString());
        lbl_career.Text = career_list;

        string skill_list = obj.finalskillname(Session["pkofuser"].ToString());
        lbl_skill.Text = skill_list;

        string interest_list = obj.finalinterestname(Session["pkofuser"].ToString());
        lbl_interest.Text = interest_list;

    }
}