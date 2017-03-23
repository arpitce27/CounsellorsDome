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

public class institutemaster
{
    SqlConnection con;
    SqlDataAdapter da;
    SqlCommand cmd;
    DataSet ds;
	public institutemaster()
	{
        con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\Arpit\Desktop\CounsellorsDome\App_Data\Database.mdf;Integrated Security=True;User Instance=True");
    }
    public DataTable selectinstitute()
    {
        da = new SqlDataAdapter("select pk_institution_list,institution_type,institute_name,city,state,country,pin_code,website,contact_number,course_avail from institution_list ", con);
        ds = new DataSet();
        da.Fill(ds);
        return ds.Tables[0];
    }

    public DataRow selectinstitutebyid(int id)
    {
        string str = "select pk_institution_list,institution_type,institute_name,city,state,country,pin_code,website,contact_number,course_avail from institution_list where pk_institution_list=" + id;
        da = new SqlDataAdapter(str, con);
        ds = new DataSet();
        da.Fill(ds);
        return ds.Tables[0].Rows[0];
    }

    public int insert_institute(string inst_type, string inst_name, string city, string state, string country, string pin, string website, string contact, string course)
    {
        cmd = new SqlCommand("insert_institute",con);
        cmd.CommandType = CommandType.StoredProcedure;
        con.Open();
        cmd.Parameters.AddWithValue("@institution_type",inst_type);
        cmd.Parameters.AddWithValue("@institute_name",inst_name);
        cmd.Parameters.AddWithValue("@city",city); 
        cmd.Parameters.AddWithValue("@state",state); 
        cmd.Parameters.AddWithValue("@country",country);
        cmd.Parameters.AddWithValue("@pin_code",pin);
        cmd.Parameters.AddWithValue("@website", website);
        cmd.Parameters.AddWithValue("@contact_number",contact);
        cmd.Parameters.AddWithValue("@course_avail",course);
        int result = cmd.ExecuteNonQuery();
        con.Close();
        return result;
    }

    public int update_institute(int id,string inst_type, string inst_name, string city, string state, string country, string pin, string website, string contact, string course)
    {
        cmd = new SqlCommand("update_institute", con);
        cmd.CommandType = CommandType.StoredProcedure;
        con.Open();
        cmd.Parameters.AddWithValue("@pk_institution_list",id);
        cmd.Parameters.AddWithValue("@institution_type", inst_type);
        cmd.Parameters.AddWithValue("@institute_name", inst_name);
        cmd.Parameters.AddWithValue("@city", city);
        cmd.Parameters.AddWithValue("@state", state);
        cmd.Parameters.AddWithValue("@country", country);
        cmd.Parameters.AddWithValue("@pin_code", pin);
        cmd.Parameters.AddWithValue("@website", website);
        cmd.Parameters.AddWithValue("@contact_number", contact);
        cmd.Parameters.AddWithValue("@course_avail", course);
        int result = cmd.ExecuteNonQuery();
        con.Close();
        return result;
    }

    public int delete_institute(int id)
    {
        cmd = new SqlCommand("delete_institute", con);
        cmd.CommandType = CommandType.StoredProcedure;
        con.Open();
        cmd.Parameters.AddWithValue("@pk_institution_list", id);
        int result = cmd.ExecuteNonQuery();
        con.Close();
        return result;
    }
}