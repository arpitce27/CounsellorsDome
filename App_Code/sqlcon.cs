using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for sqlcon
/// </summary>
public class sqlcon
{
    public sqlcon()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    public static string constr()
    {
        string connstring = ConfigurationManager.ConnectionStrings["WingtipToys"].ConnectionString;
        return (connstring);
    }
}