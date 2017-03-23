<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin_add_admin.aspx.cs" Inherits="Home" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>CounsellorsDome|Admin</title>
<meta charset="utf-8">
<link rel="stylesheet" type="text/css" media="screen" href="css/reset.css">
<link rel="stylesheet" type="text/css" media="screen" href="css/grid_12.css">
<link rel="stylesheet" type="text/css" media="screen" href="css/style.css">
<link rel="stylesheet" type="text/css" media="screen" href="css/slider.css">
    <link href="css/bootstrap-theme.min.css" rel="stylesheet" type="text/css" />
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
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
        .style1
        {
        width: 177px;
    }
        .style4
        {
        width: 484px;
    }
        .style5
        {
            width: 344px;
        }
    .style6
    {
        height: 41px;
    }
    .style8
    {
        font-size: x-large;
        color: #FF8000;
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
          <li><a href="Home_admin.aspx">Home</a></li>
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
        <p class="text-3">Welcome in<span> Admin section </span>of Website!</p>
        <p class="text-4">You can make changes in datebase!</p>
        <table style="width:100%; height: 490px;">
        <tr>
            <td class="style1">&nbsp;</td>
            <td class="style4">&nbsp;</td>
            <td class="style5">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="style6" colspan="4"><p class="text-center"><strong class="style8">Enter another admin of your website!</strong></p></td>
        </tr>
        <tr>
            <td class="style1">&nbsp;</td>
            <td class="style4">&nbsp;</td>
            <td class="style5">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="style1">&nbsp;</td>
            <td class="style4">&nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="style1">&nbsp;</td>
            <td class="style4"><asp:Label ID="lbl_fname" runat="server" Text="First Name"></asp:Label></td>
            <td class="style5"><asp:TextBox ID="txt_fname" runat="server" Width="226px" placeholder="First Name" 
                    CssClass="form-control"></asp:TextBox></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="style1">&nbsp;</td>
            <td class="style4">&nbsp;</td>
            <td class="style5">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="style1">&nbsp;</td>
            <td class="style4"><asp:Label ID="lbl_lname" runat="server" Text="Last Name"></asp:Label></td>
            <td class="style5"><asp:TextBox ID="txt_lname" runat="server" Width="226px" placeholder="Last Name" 
                    CssClass="form-control"></asp:TextBox></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="style1">&nbsp;</td>
            <td class="style4">&nbsp;</td>
            <td class="style5">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="style1">&nbsp;</td>
            <td class="style4"><asp:Label ID="lbl_dob" runat="server" Text="Date of Birth"></asp:Label></td>
            <td class="style5"><asp:TextBox ID="txt_dob" runat="server" Width="226px" placeholder="Date of Birth" CssClass="form-control" ></asp:TextBox></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="style1">&nbsp;</td>
            <td class="style4">&nbsp;</td>
            <td class="style5">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="style1">&nbsp;</td>
            <td class="style4"><asp:Label ID="lbl_gender" runat="server" Text="Gender"></asp:Label></td>
            <td class="style5"><asp:RadioButtonList ID="RBL_gender" runat="server" Height="26px" 
                        RepeatDirection="Horizontal" Width="258px" AutoPostBack="True">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:RadioButtonList></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="style1">&nbsp;</td>
            <td class="style4">&nbsp;</td>
            <td class="style5">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="style1">&nbsp;</td>
            <td class="style4"><asp:Label ID="lbl_pass" runat="server" Text="Password"></asp:Label></td>
            <td class="style5"><asp:TextBox ID="txt_password" runat="server" Width="226px" 
                    placeholder="Password" CssClass="form-control"></asp:TextBox></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="style1">&nbsp;</td>
            <td class="style4">&nbsp;</td>
            <td class="style5">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="style1">&nbsp;</td>
            <td class="style4"><asp:Label ID="lbl_repass" runat="server" Text="Re-Password"></asp:Label></td>
            <td class="style5"><asp:TextBox ID="txt_repassword" runat="server" Width="226px" 
                    placeholder="Repeat Password" CssClass="form-control"></asp:TextBox>            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="style1">&nbsp;</td>
            <td class="style4">&nbsp;</td>
            <td class="style5">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="style1">&nbsp;</td>
            <td class="style4"><asp:Label ID="lbl_num" runat="server" Text="Phone Number"></asp:Label></td>
            <td class="style5"><asp:TextBox ID="txt_phnum" runat="server" Width="226px" placeholder="Phone Number" 
                    CssClass="form-control"></asp:TextBox></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="style1">&nbsp;</td>
            <td class="style4">&nbsp;</td>
            <td class="style5">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="style1">&nbsp;</td>
            <td class="style4"><asp:Label ID="lbl_email" runat="server" Text="Email ID"></asp:Label></td>
            <td class="style5"><asp:TextBox ID="txt_email" runat="server" Width="226px" placeholder="Email ID" 
                    CssClass="form-control"></asp:TextBox></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="style1">&nbsp;</td>
            <td class="style4">&nbsp;</td>
            <td class="style5">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="style1">&nbsp;</td>
            <td class="style4"><asp:Label ID="lbl_add" runat="server" Text="Adress"></asp:Label></td>
            <td class="style5"><asp:TextBox ID="txt_add" runat="server" Width="226px" placeholder="Adress" 
                    CssClass="form-control"></asp:TextBox></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="style1">&nbsp;</td>
            <td class="style4">&nbsp;</td>
            <td class="style5">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="style1">&nbsp;</td>
            <td class="style4"><asp:Label ID="lbl_city" runat="server" Text="City"></asp:Label></td>
            <td class="style5"><asp:TextBox ID="txt_city" runat="server" Width="226px" placeholder="City" 
                    CssClass="form-control"></asp:TextBox></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="style1">&nbsp;</td>
            <td class="style4">&nbsp;</td>
            <td class="style5">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="style1">&nbsp;</td>
            <td class="style4"><asp:Label ID="lbl_state" runat="server" Text="State"></asp:Label></td>
            <td class="style5"><asp:TextBox ID="txt_state" runat="server" Width="226px" placeholder="State" 
                    CssClass="form-control"></asp:TextBox></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="style1">&nbsp;</td>
            <td class="style4">&nbsp;</td>
            <td class="style5">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="style1">&nbsp;</td>
            <td class="style4"><asp:Label ID="lbl_country" runat="server" Text="Country"></asp:Label></td>
            <td class="style5"><asp:TextBox ID="txt_country" runat="server" Width="226px" 
                    placeholder="Country" CssClass="form-control"></asp:TextBox></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="style1">&nbsp;</td>
            <td class="style4">&nbsp;</td>
            <td class="style5">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="style1">&nbsp;</td>
            <td class="style4"><asp:Label ID="lbl_zip" runat="server" Text="Zip code"></asp:Label></td>
            <td class="style5"><asp:TextBox ID="txt_zip" runat="server" Width="226px" placeholder="Zip Code" 
                    CssClass="form-control"></asp:TextBox></td>
            <td>&nbsp;</td>
         </tr>
        <tr>
            <td class="style1">&nbsp;</td>
            <td class="style4">&nbsp;</td>
            <td class="style5">&nbsp;</td>
            <td>&nbsp;</td>
         </tr>
        <tr>
            <td class="style1">&nbsp;</td>
            <td class="style4">&nbsp;</td>
            <td class="style5">
                <asp:Button ID="btn_signup" runat="server" 
                    class="btn btn-default" Text="Add admin" onclick="btn_signup_Click"/></td>
            <td>&nbsp;</td>
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
