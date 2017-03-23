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

public class interestmaster
{
    SqlConnection con;
    SqlDataAdapter da;
    SqlCommand cmd;
    DataSet ds;
	public interestmaster()
	{
        con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\Arpit\Desktop\CounsellorsDome\App_Data\Database.mdf;Integrated Security=True;User Instance=True");
	}
    public DataTable selectinterest()
    {
        da = new SqlDataAdapter("select pk_interest,interest,fk_interest_type,description from interest", con);
        ds = new DataSet();
        da.Fill(ds);
        return ds.Tables[0];

    }
    public DataRow selectinterestbyid(int id)
    {
        string qry = "select pk_interest,interest,fk_interest_type,description from interest where pk_interest =" + id;
        da = new SqlDataAdapter(qry, con);
        ds = new DataSet();
        da.Fill(ds);
        return ds.Tables[0].Rows[0];
    }
    public int insert_interest(string interest, int interest_type, string desc)
    {
        cmd = new SqlCommand("insert_interest", con);
        cmd.CommandType = CommandType.StoredProcedure;
        con.Open();
        cmd.Parameters.AddWithValue("@interest", interest);
        cmd.Parameters.AddWithValue("@fk_interest_type",interest_type);
        cmd.Parameters.AddWithValue("@description", desc);
        int result = cmd.ExecuteNonQuery();
        con.Close();
        return result;
    }
    public int update_interest(int id, string interest, int interest_type, string desc)
    {
        cmd = new SqlCommand("update_interest", con);
        cmd.CommandType = CommandType.StoredProcedure;
        con.Open();
        cmd.Parameters.AddWithValue("@pk_interest", id);
        cmd.Parameters.AddWithValue("@interest", interest);
        cmd.Parameters.AddWithValue("@fk_interest_type",interest_type );
        cmd.Parameters.AddWithValue("@description", desc);
        int result = cmd.ExecuteNonQuery();
        con.Close();
        return result;
    }
    public int delete_interest(int id)
    {
        cmd = new SqlCommand("delete_interest", con);
        cmd.CommandType = CommandType.StoredProcedure;
        con.Open();
        cmd.Parameters.AddWithValue("@pk_interest", id);
        int result = cmd.ExecuteNonQuery();
        con.Close();
        return result;

    }
}