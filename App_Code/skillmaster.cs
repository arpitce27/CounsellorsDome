using System;
using System.Data;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;
using System.IO;

public class skillmaster
{
    SqlConnection con;
    SqlDataAdapter da;
    SqlCommand cmd;
    DataSet ds;
	public skillmaster()
	{
        con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\Arpit\Desktop\CounsellorsDome\App_Data\Database.mdf;Integrated Security=True;User Instance=True");
	}

    public DataTable selectskill()
    {
        da = new SqlDataAdapter("select pk_skill,fk_skill_type,skill,description from skill", con);
        ds = new DataSet();
        da.Fill(ds);
        return ds.Tables[0];
        
    }
    public DataRow selectskillbyid(int id)
    {
        string qry = "select pk_skill,fk_skill_type,skill,description from skill where pk_skill =" + id;
        da = new SqlDataAdapter(qry, con);
        ds = new DataSet();
        da.Fill(ds);
        return ds.Tables[0].Rows[0];
    }
    public int insert_skill(int skill_type,string skill,string desc)
    {
        cmd = new SqlCommand("insert_skill", con);
        cmd.CommandType = CommandType.StoredProcedure;
        con.Open();
        cmd.Parameters.AddWithValue("@fk_skill_type",skill_type);
        cmd.Parameters.AddWithValue("@skill",skill);
        cmd.Parameters.AddWithValue("@description",desc);
        int result = cmd.ExecuteNonQuery();
        con.Close();
        return result;
    }
    public int update_skill(int id, int skill_type,string skill,string desc)
    {
        cmd = new SqlCommand("update_skill", con);
        cmd.CommandType = CommandType.StoredProcedure;
        con.Open();
        cmd.Parameters.AddWithValue("@pk_skill", id);
        cmd.Parameters.AddWithValue("@fk_skill_type",skill_type);
        cmd.Parameters.AddWithValue("@skill",skill);
        cmd.Parameters.AddWithValue("@description",desc);
        int result = cmd.ExecuteNonQuery();
        con.Close();
        return result; 
    }
    public int delete_skill(int id)
    {
        cmd = new SqlCommand("delete_skill", con);
        cmd.CommandType = CommandType.StoredProcedure;
        con.Open();
        cmd.Parameters.AddWithValue("@pk_skill", id);
        int result = cmd.ExecuteNonQuery();
        con.Close();
        return result;
 
    }
}