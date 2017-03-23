<%@ Page Language="C#" AutoEventWireup="true" Debug="true" CodeFile="Home_admin.aspx.cs" Inherits="Home" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>CounsellorsDome|Admin</title>
<meta charset="utf-8">
<link href="css/new.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" media="screen" href="css/reset.css">
<link rel="stylesheet" type="text/css" media="screen" href="css/grid_12.css">
<link rel="stylesheet" type="text/css" media="screen" href="css/style.css">
<link rel="stylesheet" type="text/css" media="screen" href="css/slider.css">
<link href='http://fonts.googleapis.com/css?family=Lato:300italic' rel='stylesheet' type='text/css'>
<script src="js/jquery-1.7.min.js"></script>
<script src="js/jquery.easing.1.3.js"></script>
<script src="js/cufon-yui.js"></script>
<script src="js/cufon-replace.js"></script>
<script src="js/Bilbo_400.font.js"></script>
<script src="js/tms-0.4.1.js"></script>
<script>
    $(document).ready(function () {
        $('.slider')._TMS({
            show: 0,
            pauseOnHover: true,
            prevBu: false,
            nextBu: false,
            playBu: false,
            duration: 800,
            preset: 'fade',
            pagination: true,
            pagNums: false,
            slideshow: 7000,
            numStatus: false,
            banners: 'fade',
            waitBannerAnimation: false,
            progressBar: false
        })
    });
</script>
    <style type="text/css">
        .style4
        {
            height: 502px;
            width: 1016px;
        }
        .style9
        {
            width: 302px;
            font-size: large;
        }
        .style10
        {
            width: 302px;
        }
        .style11
        {
            width: 319px;
            font-size: large;
        }
        .style12
        {
            width: 319px;
        }
        .style13
        {
            width: 384px;
            font-size: large;
        }
        .style14
        {
            width: 384px;
        }
    </style>
<!--[if lt IE 9]>
<script src="js/html5.js"></script>
<link rel="stylesheet" type="text/css" media="screen" href="css/ie.css">
<![endif]-->
</head>

<body>
<form id="form1" runat="server">
<header>
  <div>
    <div>
      <h1><a href="Home_admin.aspx"><img src="images/logo.png" alt=""></a></h1>
      <nav>
        <ul class="menu">
          <li class="current"><a href="Home_admin.aspx">Home</a></li>
          <li><a href="Admin_skill.aspx">Update skills</a></li>
          <li><a href="Admin_interest.aspx">Update interest </a></li>
          <li><a href="Admin_career.aspx">Update career</a></li>
          <li><a href="Logout.aspx">Logout</a></li>
        </ul>
      </nav>
      <div class="clear"></div>
    </div>
  </div>
</header>
<%--<div id="slide">
  
</div>--%>
<!--==============================content================================-->
<section id="content">
  <div class="container_12">
    <div class="grid_12 box-2">
      <div>
        <p id="p1" class="alignright">Welcome <asp:Label ID="lbl_username" runat="server"></asp:Label></p>
        <p class="text-3">Welcome in<span> Admin section </span>of Website!</p>
        <p class="text-4">You can make changes in datebase!</p>
          <table class="style4" align="center">
              <tr>
                  <td class="style11">
                      &nbsp;</td>
                  <td class="style13">
                      &nbsp;</td>
                  <td class="style9">
                      &nbsp;</td>
              </tr>
              <tr>
                  <td class="style11">
                      &nbsp;</td>
                  <td class="style13">
                      &nbsp;
                      Following are linkes to make changes :</td>
                  <td class="style9">
                      &nbsp;</td>
              </tr>
              <tr>
                  <td class="style12">
                      &nbsp;</td>
                  <td class="style14">
                      &nbsp;
                  <asp:Button ID="btn_institution" runat="server" class="btn btn-default" 
                     Text="Change in institution" Height="37px" 
                          Width="200px" onclick="btn_institution_Click"/>
                  </td>
                  <td class="style10">
                      &nbsp;</td>
              </tr>
              <tr>
                  <td class="style12">
                      &nbsp;</td>
                  <td class="style14">
                <asp:Button ID="btn_career" runat="server" class="btn btn-default" 
                     Text="Change in career"  Height="37px" Width="200px" 
                          onclick="btn_career_Click"/>
                  </td>
                  <td class="style10">
                      &nbsp;</td>
              </tr>
              <tr>
                  <td class="style12">
                      &nbsp;</td>
                  <td class="style14">
                <asp:Button ID="btn_skill" runat="server" class="btn btn-default" 
                     Text="Change in skill"  Height="37px" Width="200px" onclick="btn_skill_Click"/>
                  </td>
                  <td class="style10">
                      &nbsp;</td>
              </tr>
              <tr>
                  <td class="style12">
                      &nbsp;</td>
                  <td class="style14">
                <asp:Button ID="btn_interest" runat="server" class="btn btn-default" 
                     Text="Change in interest"  Height="37px" 
                          Width="200px" onclick="btn_interest_Click"/>
                  </td>
                  <td class="style10">
                      &nbsp;</td>
              </tr>
              <tr>
                  <td class="style12">
                      &nbsp;</td>
                  <td class="style14">
                <asp:Button ID="btn_add_admin" runat="server" class="btn btn-default" 
                     Text="Add another admin"  Height="37px" 
                          Width="200px" onclick="btn_add_admin_Click"/>
                  </td>
                  <td class="style10">
                      &nbsp;</td>
              </tr>
              <tr>
                  <td class="style12">
                      &nbsp;</td>
                  <td class="style14">
                      &nbsp;
                  <asp:Button ID="btn_account_manage" runat="server" class="btn btn-default" 
                     Text="Account management"  Height="37px" Width="200px" 
                          onclick="btn_account_manage_Click"/>
                  </td>
                  <td class="style10">
                      &nbsp;</td>
              </tr>
              <tr>
                  <td class="style12">
                      &nbsp;</td>
                  <td class="style14">
                      &nbsp;</td>
                  <td class="style10">
                      &nbsp;</td>
              </tr>
              <tr>
                  <td class="style12">
                      &nbsp;</td>
                  <td class="style14">
                      &nbsp;</td>
                  <td class="style10">
                      &nbsp;</td>
              </tr>
          </table>
      </div>
    </div>
      </div>
    </div>
    
    <div class="clear"></div>
  </div>
</section>
<!--==============================footer=================================-->
<footer>
  <p>© 2014 CounsellorsDome<br>
    </p>
  <div class="soc-icons"><span>Follow Us:</span><a href="#"><img src="images/icon-1.jpg" alt=""></a><a href="#"><img src="images/icon-2.jpg" alt=""></a><a href="#"><img src="images/icon-3.jpg" alt=""></a></div>
</footer>
<div align=center></div>

    </form>
    </body>

</html>
