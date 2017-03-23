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

public partial class Home : System.Web.UI.Page
{
    institutemaster obj = new institutemaster();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bind_institute();
        }
    }
    private void bind_institute()
    {
        GridView1.DataSource = obj.selectinstitute();
        GridView1.DataBind();
    }
    private void filltextdata(DataRow drow)
    {
        lbl_inst_id.Text = drow["pk_institution_list"].ToString();
        txt_inst_type.Text = drow["institution_type"].ToString();
        txt_name.Text = drow["institute_name"].ToString();
        txt_city.Text = drow["city"].ToString();
        txt_state.Text = drow["state"].ToString();
        txt_country.Text = drow["country"].ToString();
        txt_pin.Text = drow["pin_code"].ToString();
        txt_website.Text = drow["website"].ToString();
        txt_number.Text = drow["contact_number"].ToString();
        txt_course.Text = drow["course_avail"].ToString();
    }
    protected void btn_submit_Click(object sender, EventArgs e)
    {
        int res = 0;
        if (lbl_inst_id.Text == "")
        {
            res = obj.insert_institute(txt_inst_type.Text, txt_name.Text, txt_city.Text, txt_state.Text, txt_country.Text, txt_pin.Text, txt_website.Text, txt_number.Text, txt_course.Text);
            if (res > 0)
            {
                lbl_message.Text = "Institute Data inserted";
                lbl_message.Visible = true;
            }
        }
        else
        {
            res = obj.update_institute(int.Parse(lbl_inst_id.Text), txt_inst_type.Text, txt_name.Text, txt_city.Text, txt_state.Text, txt_country.Text, txt_pin.Text, txt_website.Text, txt_number.Text, txt_course.Text);
            if (res > 0)
            {
                lbl_message.Text = "Institute Data Updated";
                lbl_message.Visible = true;
            }
        }
        if (res > 0)
        {
            bind_institute();
        }
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        bind_institute();
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "edit_institute")
        {
            DataRow dr = obj.selectinstitutebyid(int.Parse(e.CommandArgument.ToString()));
            filltextdata(dr);
            btn_submit.Text = "Update";
        }
        else if (e.CommandName == "delete_institute")
        {
            int res = obj.delete_institute(int.Parse(e.CommandArgument.ToString()));
            if (res > 0)
            {
                lbl_message.Text = "Your data deleted sucessfully";
                lbl_message.Visible = true;
                bind_institute();
            }
        }

    }
}