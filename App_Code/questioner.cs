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

public class questioner
{
    SqlConnection con;
    SqlDataAdapter da;
    SqlCommand cmd;
    DataSet ds;
	public questioner()
	{
        con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\Arpit\Desktop\CounsellorsDome\App_Data\Database.mdf;Integrated Security=True;User Instance=True");
	}
    public DataTable selectquestions()
    {
        da = new SqlDataAdapter("select pk_questions,username_que,questions,answers_given from questions", con);
        ds = new DataSet();
        da.Fill(ds);
        return ds.Tables[0];

    }
    public DataTable selectanswers(int a)
    {
        da = new SqlDataAdapter("select fk_questions,answers,username_ans from answers where fk_questions='"+ a +"'  ", con);
        ds = new DataSet();
        da.Fill(ds);
        return ds.Tables[0];
    }

}