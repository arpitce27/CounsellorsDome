using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.IO;
using System.Data;

public partial class Information_assessment : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\Arpit\Desktop\CounsellorsDome\App_Data\Database.mdf;Integrated Security=True;User Instance=True");
    string skill_list;
    string interest_list;
    string stream, percentage_10, percentage_12, suitable_career,final3career;
    int percentage_avg,career_count;
    string[] skill_listint, interest_listint,careers;
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
        //cb1_sub_sci.Visible = false;
        //cbl_sub_com.Visible = false;
        //cbl_sub_arts.Visible = false;
        //cbl_sub_10th.Visible = false;
    }

    //protected void rbl_stream_SelectedIndexChanged(object sender, EventArgs e)
    //{
    //    if (rbl_stream.SelectedValue == "1")
    //    {
    //        cb1_sub_sci.Visible = true;
    //        cbl_sub_com.Visible = false;
    //        cbl_sub_arts.Visible = false;
    //        cbl_sub_10th.Visible = false;
    //    }
    //    else if (rbl_stream.SelectedValue == "2")
    //    {
    //        cb1_sub_sci.Visible = false;
    //        cbl_sub_com.Visible = true;
    //        cbl_sub_arts.Visible = false;
    //        cbl_sub_10th.Visible = false;
    //    }
    //    else if (rbl_stream.SelectedValue == "3")
    //    {
    //        cb1_sub_sci.Visible = false;
    //        cbl_sub_com.Visible = false;
    //        cbl_sub_arts.Visible = true;
    //        cbl_sub_10th.Visible = false;
    //    }
    //    else
    //    {
    //        cb1_sub_sci.Visible = false;
    //        cbl_sub_com.Visible = false;
    //        cbl_sub_arts.Visible = false;
    //        cbl_sub_10th.Visible = true;
    //    }
    //}

    public void enter_data()
    {
        string str = "insert into assessment_master (assessment_date,fk_interest_list,fk_skill_list,fk_stream,fk_user,tenth_percentage,twelve_percentage,fk_career_list) values ('" + DateTime.Now.ToShortDateString() + "','" + Session["interest_array"] + "','" + Session["skill_array"] + "','" + rbl_stream.SelectedValue + "','" + int.Parse(Session["pkofuser"].ToString()) + "','" + Convert.ToInt32(txt_10thper.Text) + "','" + Convert.ToInt32(txt_12thper.Text) + "','') ";
        SqlCommand cmd = new SqlCommand(str, con);
        cmd.ExecuteNonQuery();
        //Response.Write("<script>alert('Ur data is entered')</script>");
        lbl_message.Visible = true;
    }
    public void enter_data1()
    {
        string str = "update assessment_master set fk_career_list ='" + final3career.ToString() + "' where fk_user ='" + int.Parse(Session["pkofuser"].ToString()) + "' ";
        SqlCommand cmd = new SqlCommand(str, con);
        cmd.ExecuteNonQuery();
        //Response.Write("<script>alert('Ur data is entered')</script>");
        lbl_message.Visible = true;
        lb_career.Visible = true;
    }

    public int fquery()
    {
        string qry = "select * from career_suggation where (',' +fk_skill+ ',' like '%" + skill_listint[0] + "%') and (',' +fk_skill+ ',' like '%" + skill_listint[1] + "%') and (',' +fk_skill+ ',' like '%" + skill_listint[2] + "%') and (',' +fk_interest+ ',' like '%" + interest_listint[0] + "%') and (',' +fk_interest+ ',' like '%" + interest_listint[1] + "%') and (',' +fk_interest+ ',' like '%" + interest_listint[2] + "%') and (',' +fk_stream+ ',' like '%" + stream + "%') and minimum_markes<=(" + percentage_avg + ") ";
        SqlCommand com = new SqlCommand();
        SqlDataReader read = (null);
        com.Connection = con;
        com.CommandText = (qry);
        read = com.ExecuteReader();
        career_count = 0;
        while (read.Read())
        {
            suitable_career += read["fk_career"].ToString();
            suitable_career += ",";
            career_count++;
        }
        if (career_count == 1)
        {
            careers[0] = suitable_career;
        }
        else if(career_count>=2)
        careers = suitable_career.Split(',');
        read.Close();
        //Label1.Text = suitable_career;
        return career_count;
    }
    public void squery()
    {
        string qry = "select * from career_suggation where ((',' +fk_skill+ ',' like '%" + skill_listint[0] + "%' and ',' +fk_skill+ ',' like '%" + skill_listint[1] + "%' or ',' +fk_skill+ ',' like '%" + skill_listint[2] + "%') or (',' +fk_skill+ ',' like '%" + skill_listint[0] + "%' or ',' +fk_skill+ ',' like '%" + skill_listint[1] + "%' and ',' +fk_skill+ ',' like '%" + skill_listint[2] + "%') or (',' +fk_skill+ ',' like '%" + skill_listint[0] + "%' and ',' +fk_skill+ ',' like '%" + skill_listint[2] + "%' or ',' +fk_skill+ ',' like '%" + skill_listint[1] + "%' )) and ((',' +fk_interest+ ',' like '%" + interest_listint[0] + "%' and ',' +fk_interest+ ',' like '%" + interest_listint[1] + "%' or ',' +fk_interest+ ',' like '%" + interest_listint[2] + "%')or(',' +fk_interest+ ',' like '%" + interest_listint[0] + "%' or ',' +fk_interest+ ',' like '%" + interest_listint[1] + "%' and ',' +fk_interest+ ',' like '%" + interest_listint[2] + "%')or(',' +fk_interest+ ',' like '%" + interest_listint[0] + "%' and ',' +fk_interest+ ',' like '%" + interest_listint[2] + "%' or ',' +fk_interest+ ',' like '%" + interest_listint[1] + "%' ))	and (',' +fk_stream+ ',' like '%" + stream + "%') and minimum_markes<=(" + percentage_avg + ") ";
        SqlCommand com = new SqlCommand();
        SqlDataReader read = (null);
        com.Connection = con;
        com.CommandText = (qry);
        read = com.ExecuteReader();
        //career_count = 0;
        while (read.Read())
        {
            suitable_career += read["fk_career"].ToString();
            suitable_career += ",";
            //career_count++;
        }
        careers = suitable_career.Split(',');
        read.Close();
        //Label1.Text = suitable_career;
        //return career_count;
    }
    public void final3career_fun()
    {
        for (int i = 0; i < 3; i++)
        {
            final3career += careers[i].ToString();
            final3career += ",";
        }
    }
    protected void btn_login_Click(object sender, EventArgs e)
    {
        enter_data();

        //deseparate skill from comma string
        string skill_list_qry = "select fk_skill_list from assessment_master where fk_user ='" + Session["pkofuser"].ToString() + "' ";
        SqlCommand skill_list_command = new SqlCommand(skill_list_qry, con);
        SqlDataReader dr_skill_list = null;
        dr_skill_list = skill_list_command.ExecuteReader();
        while (dr_skill_list.Read())
        {
            skill_list = dr_skill_list["fk_skill_list"].ToString();
        }
        skill_listint = skill_list.Split(',');
        dr_skill_list.Close();

        //deseparate interest from comma string
        string interest_list_qry = "select fk_interest_list from assessment_master where fk_user ='" + Session["pkofuser"].ToString() + "' ";
        SqlCommand interest_list_command = new SqlCommand(interest_list_qry, con);
        SqlDataReader dr_interest_list = null;
        dr_interest_list = interest_list_command.ExecuteReader();
        while (dr_interest_list.Read())
        {
            interest_list = dr_interest_list["fk_interest_list"].ToString();
        }
        interest_listint = interest_list.Split(',');
        dr_interest_list.Close();

        //get other information
        string stream_per_query = "select fk_stream , tenth_percentage,twelve_percentage from assessment_master where fk_user ='" + Session["pkofuser"].ToString() + "' ";
        SqlCommand stream_per_ccommand = new SqlCommand(stream_per_query, con);
        SqlDataReader dr_stream_per = null;
        dr_stream_per = stream_per_ccommand.ExecuteReader();
        while (dr_stream_per.Read())
        {
            stream = dr_stream_per["fk_stream"].ToString();
            percentage_10 = dr_stream_per["tenth_percentage"].ToString();
            percentage_12 = dr_stream_per["twelve_percentage"].ToString();
        }
        percentage_avg = (int.Parse(percentage_10.ToString()) + int.Parse(percentage_12.ToString())) / 2;
        dr_stream_per.Close();
        //Response.Write(stream + " " + percentage_10 + "  " + percentage_12 +"  "+ percentage_avg);


        //final query
        int count = fquery();
        if (count >= 3)
        {
            final3career_fun();
            enter_data1();
        }
        else
        {
            squery();
            final3career_fun();
            enter_data1();

        }
    }
    protected void lb_career_Click(object sender, EventArgs e)
    {
        Response.Redirect("Career.aspx");
    }
}