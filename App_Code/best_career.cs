using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.IO;
using System.Data;

public class best_career
{
    SqlConnection con;
    string career_list_int, career_list,skill_list, skill_list_int,interest_list, interest_list_int;
    string[] career_listint, skill_listint, interest_listint;
	public best_career()
	{
		con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\Arpit\Desktop\CounsellorsDome\App_Data\Database.mdf;Integrated Security=True;User Instance=True");
        con.Open();
	}
    public string finalcareername(string pk_user)
    {
      
        string career_list_qry = "select fk_career_list from assessment_master where fk_user = '" + pk_user + "' ";
        SqlCommand career_list_command = new SqlCommand(career_list_qry, con);
        SqlDataReader dr_career_list = null;
        dr_career_list = career_list_command.ExecuteReader();
        while (dr_career_list.Read())
        {
           career_list_int = dr_career_list["fk_career_list"].ToString();
        }
        career_listint = career_list_int.Split(',');
        dr_career_list.Close();

        string qry = "select career from career where pk_career =" + career_listint[0] + " or pk_career =" + career_listint[1] + " or pk_career =" + career_listint[2] + "      ";
        SqlCommand cmd1 = new SqlCommand(qry,con);
        SqlDataReader dr = cmd1.ExecuteReader();
        while (dr.Read())
        {
            career_list += dr["career"].ToString();
            career_list += "  ,";
        }
        dr.Close();
        return career_list;


    }
    public string finalskillname(string pk_user)
    {

        string skill_list_qry = "select fk_skill_list from assessment_master where fk_user = '" + pk_user + "' ";
        SqlCommand skill_list_command = new SqlCommand(skill_list_qry, con);
        SqlDataReader dr_skill_list = null;
        dr_skill_list = skill_list_command.ExecuteReader();
        while (dr_skill_list.Read())
        {
            skill_list_int = dr_skill_list["fk_skill_list"].ToString();
        }
        skill_listint = skill_list_int.Split(',');
        dr_skill_list.Close();

        string qry = "select skill from skill where pk_skill =" + skill_listint[0] + " or pk_skill =" + skill_listint[1] + " or pk_skill =" + skill_listint[2] + "      ";
        SqlCommand cmd1 = new SqlCommand(qry, con);
        SqlDataReader dr = cmd1.ExecuteReader();
        while (dr.Read())
        {
            skill_list += dr["skill"].ToString();
            skill_list += "  ,";
        }
        dr.Close();
        return skill_list;


    }
    public string finalinterestname(string pk_user)
    {

        string interest_list_qry = "select fk_interest_list from assessment_master where fk_user = '" + pk_user + "' ";
        SqlCommand interest_list_command = new SqlCommand(interest_list_qry, con);
        SqlDataReader dr_interest_list = null;
        dr_interest_list = interest_list_command.ExecuteReader();
        while (dr_interest_list.Read())
        {
            interest_list_int = dr_interest_list["fk_interest_list"].ToString();
        }
        interest_listint = interest_list_int.Split(',');
        dr_interest_list.Close();

        string qry = "select interest from interest where pk_interest =" + interest_listint[0] + " or pk_interest =" + interest_listint[1] + " or pk_interest =" + interest_listint[2] + "      ";
        SqlCommand cmd1 = new SqlCommand(qry, con);
        SqlDataReader dr = cmd1.ExecuteReader();
        while (dr.Read())
        {
            interest_list += dr["interest"].ToString();
            interest_list += "  ,";
        }
        dr.Close();
        return interest_list;
    }
    
}