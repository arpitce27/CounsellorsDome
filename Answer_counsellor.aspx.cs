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

public partial class Interest_assessment : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\Arpit\Desktop\CounsellorsDome\App_Data\Database.mdf;Integrated Security=True;User Instance=True");
    questioner que_obj = new questioner();
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
        if (!IsPostBack)
        {
            bind_answers();
        }
        txt_uname.Text = Session["username"].ToString();
    }
    protected void btn_submit_Click(object sender, EventArgs e)
    {
        string str = "insert into answers(fk_questions,username_ans,answers) values ('"+int.Parse(Session["pk_que"].ToString())+"','"+Session["username"].ToString()+"','"+txt_question.InnerText+"')";
        SqlCommand cmd = new SqlCommand(str, con);
        cmd.ExecuteNonQuery();
        lbl_message.Text = "your answer is submited";
        lbl_message.Visible = true;
        bind_answers();
    }
    //protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    //{
    //    int pk_que = int.Parse(e.CommandArgument.ToString());
    //    //DataTable answer = que_obj.selectanswers(pk_que);
    //    Session["pk_que"] = pk_que;
    //    Response.Redirect("");
        
    //}
    private void bind_answers()
    {
        DataTable answer = que_obj.selectanswers(int.Parse(Session["pk_que"].ToString()));
        GridView1.DataSource = answer;
        GridView1.DataBind();
    }
    protected void GridView1_PageIndexChanging1(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        bind_answers();
    }
    protected void btn_goback_Click(object sender, EventArgs e)
    {
        Response.Redirect("Question_counsellor.aspx");
    }
}