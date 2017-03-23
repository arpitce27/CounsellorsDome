using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Configuration;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;

public class assessment
{
    public int skill_count = 0;
    public int interest_count = 0;
    public assessment()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public string interest_assessment(CheckBoxList CBL_i1, CheckBoxList CBL_i2, CheckBoxList CBL_i3, CheckBoxList CBL_i4, CheckBoxList CBL_i5, CheckBoxList CBL_i6)
    {
        string interest_list = "";
        for (int i = 0; i < CBL_i1.Items.Count; i++)
        {
            if (CBL_i1.Items[i].Selected)
            {
                interest_list += CBL_i1.Items[i].Value + ",";
                interest_count++;
            }
        }
        for (int i = 0; i < CBL_i2.Items.Count; i++)
        {
            if (CBL_i2.Items[i].Selected)
            {
                interest_list +=CBL_i2.Items[i].Value + ",";
                interest_count++;
            }
        }
        for (int i = 0; i <CBL_i3.Items.Count; i++)
        {
            if (CBL_i3.Items[i].Selected)
            {
                interest_list +=CBL_i3.Items[i].Value + ",";
                interest_count++;
            }
        }
        for (int i = 0; i <CBL_i4.Items.Count; i++)
        {
            if (CBL_i4.Items[i].Selected)
            {
                interest_list +=CBL_i4.Items[i].Value + ",";
                interest_count++;
            }
        }
        for (int i = 0; i <CBL_i5.Items.Count; i++)
        {
            if (CBL_i5.Items[i].Selected)
            {
                interest_list +=CBL_i5.Items[i].Value + ",";
                interest_count++;
            }
        }
        for (int i = 0; i <CBL_i6.Items.Count; i++)
        {
            if (CBL_i6.Items[i].Selected)
            {
                interest_list +=CBL_i6.Items[i].Value + ",";
                interest_count++;
            }
        }

        return(interest_list.ToString());
    }
    public string skill_assessment(CheckBoxList cb1, CheckBoxList cb2, CheckBoxList cb3, CheckBoxList cb4)
    {
        string skill_list = "";
        for (int i = 0; i <cb1.Items.Count; i++)
        {
            if (cb1.Items[i].Selected)
            {
                skill_list +=cb1.Items[i].Value + ",";
                skill_count++;
            }
        }
        for (int i = 0; i <cb2.Items.Count; i++)
        {
            if (cb2.Items[i].Selected)
            {
                skill_list +=cb2.Items[i].Value + ",";
                skill_count++;
            }
        }
        for (int i = 0; i <cb3.Items.Count; i++)
        {
            if (cb3.Items[i].Selected)
            {
                skill_list +=cb3.Items[i].Value + ",";
                skill_count++;
            }
        }
        for (int i = 0; i <cb4.Items.Count; i++)
        {
            if (cb4.Items[i].Selected)
            {
                skill_list +=cb4.Items[i].Value + ",";
                skill_count++;
            }
        }
        return(skill_list.ToString());
    }

    public int check(int k)
    {
        if (k <= 3)
            return 0;
        else if (k == 2 || k == 1)
            return 1;
        else
            return 2;
    }  

}