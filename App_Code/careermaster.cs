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


public class careermaster
{
    SqlConnection con;
    SqlDataAdapter da;
    SqlCommand cmd;
    DataSet ds;
	public careermaster()
	{
        con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\Arpit\Desktop\CounsellorsDome\App_Data\Database.mdf;Integrated Security=True;User Instance=True");
	}
    public DataTable selectcareer()
    {
        da = new SqlDataAdapter("select pk_career,career,fk_career_type,description from career", con);
        ds = new DataSet();
        da.Fill(ds);
        return ds.Tables[0];

    }
    public DataRow selectcareerbyid(int id)
    {
        string qry = "select pk_career,career,fk_career_type,description from career where pk_career =" + id;
        da = new SqlDataAdapter(qry, con);
        ds = new DataSet();
        da.Fill(ds);
        return ds.Tables[0].Rows[0];
    }
    public int insert_career(string career, int career_type, string desc)
    {
        cmd = new SqlCommand("insert_career", con);
        cmd.CommandType = CommandType.StoredProcedure;
        con.Open();
        cmd.Parameters.AddWithValue("@career", career);
        cmd.Parameters.AddWithValue("@fk_career_type", career_type);
        cmd.Parameters.AddWithValue("@description", desc);
        int result = cmd.ExecuteNonQuery();
        con.Close();
        return result;
    }
    public int update_career(int id, string career, int career_type, string desc)
    {
        cmd = new SqlCommand("update_career", con);
        cmd.CommandType = CommandType.StoredProcedure;
        con.Open();
        cmd.Parameters.AddWithValue("@pk_career", id);
        cmd.Parameters.AddWithValue("@career", career);
        cmd.Parameters.AddWithValue("@fk_career_type", career_type);
        cmd.Parameters.AddWithValue("@description", desc);
        int result = cmd.ExecuteNonQuery();
        con.Close();
        return result;
    }
    public int delete_career(int id)
    {
        cmd = new SqlCommand("delete_career", con);
        cmd.CommandType = CommandType.StoredProcedure;
        con.Open();
        cmd.Parameters.AddWithValue("@pk_career", id);
        int result = cmd.ExecuteNonQuery();
        con.Close();
        return result;

    }
}