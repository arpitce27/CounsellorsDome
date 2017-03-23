<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Signup.aspx.cs" Inherits="Signup" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>CounsellorsDome|Sign-Up</title>
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
<!--[if lt IE 9]>
<script src="js/html5.js"></script>
<link rel="stylesheet" type="text/css" media="screen" href="css/ie.css">
<![endif]-->

    <style type="text/css">
        .style4
        {
            width: 292px;
            text-align: center;
        }
        .style5
        {
            width: 227px;
        }
        .style6
        {
            width: 130px;
            text-align: center;
        }
        .style7
        {
            width: 96px;
            text-align: left;
        }
        .style8
        {
            width: 130px;
            text-align: center;
            height: 34px;
        }
        .style9
        {
            width: 292px;
            text-align: center;
            height: 34px;
        }
        .style10
        {
            height: 34px;
            text-align: left;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">
    <header>
  <div>
    <div>
      <h1><a href="Home.aspx"><img src="images/logo.png" alt=""></a></h1>
      <nav>
        <ul class="menu">
          <li ><a href="Home.aspx">Home</a></li>
          <li><a href="Process_info.aspx">Process Info</a></li>
          <li><a href="Aboutus.aspx">About US</a></li>
          <li class="current"><a href="Signup.aspx">Sign UP</a></li>
          <li><a href="Login.aspx">Login</a></li>
        </ul>
      </nav>
      <div class="clear"></div>
    </div>
  </div>
</header>
<div id="slide">
  <div class="slider">
    <ul class="items">
      <li><img src="images/slider-1.jpg" alt="">
        <div class="banner">
          <p class="text-1">We've Got <strong>an Idea!</strong></p>
          <p class="text-2">Ut wisi enim ahd minim veniam quis nostrud exerci takltion ulamc orper suscipit lobortis</p>
        </div>
      </li>
      <li><img src="images/slider-2.jpg" alt="">
        <div class="banner">
          <p class="text-1">Here We <strong>Are!</strong></p>
          <p class="text-2">Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat.</p>
        </div>
      </li>
      <li><img src="images/slider-3.jpg" alt="">
        <div class="banner">
          <p class="text-1">Stay <strong>Creative!</strong></p>
          <p class="text-2">Feugiat nulla facilisis at vero erots et accumsan et iusto odio dignis sim qui blandit.</p>
        </div>
      </li>
    </ul>
  </div>
</div>
<!--==============================content================================-->
<section id="content">
  <div class="container_12">
    <div class="grid_6 box-1"> <img src="images/page1-img1.png" alt="">
            <div class="extra-wrap">
        <h2>Who We Are</h2>
        <p>CounsellorsDome is a career counselling website, which will answer your questions about the future career options available for you.</p>
      </div>
    </div>
    <div class="grid_6 box-1"> <img src="images/page1-img2.png" alt="">
      <div class="extra-wrap">
        <h2>Starting Up...</h2>
        <p>First of all just get registered with us and follow the counselling process.</p>
      </div>
    </div>
    <div class="grid_12 box-2">
      <div>
        <p class="text-3"><span>Sign-Up here!</span></p>
          <%--<p class="text-4">Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse</p>--%>
        <table style="width:100%; height: 490px;">
        <tr>
            <td class="style6">&nbsp;</td>
            <td class="style4">&nbsp;</td>
            <td class="style7">&nbsp;</td>
            <td class="style5">&nbsp;</td>
        </tr>
        <tr>
            <td class="style6">&nbsp;</td>
            <td class="style4"><asp:Label ID="lbl_utype" runat="server" Text="User type"></asp:Label></td>
            <td class="style7">
                <asp:RadioButtonList ID="rbl_utype" runat="server" 
                    DataSourceID="SqlDS_usertype" DataTextField="user_type" 
                    DataValueField="pk_user_type" Height="28px" RepeatDirection="Horizontal" 
                    Width="215px">
                </asp:RadioButtonList>
                <asp:SqlDataSource ID="SqlDS_usertype" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT * FROM [user_type] WHERE ([pk_user_type] &gt; @pk_user_type)">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="1" Name="pk_user_type" Type="Int64" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td class="style5">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">&nbsp;</td>
            <td class="style4">&nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">&nbsp;</td>
            <td class="style4"><asp:Label ID="lbl_fname" runat="server" Text="First Name"></asp:Label></td>
            <td class="style7"><asp:TextBox ID="txt_fname" runat="server" Width="226px" placeholder="First Name" 
                    CssClass="form-control"></asp:TextBox></td>
            <td class="style5">&nbsp;</td>
        </tr>
        <tr>
            <td class="style6">&nbsp;</td>
            <td class="style4">&nbsp;</td>
            <td class="style7">&nbsp;</td>
            <td class="style5">&nbsp;</td>
        </tr>
        <tr>
            <td class="style6">&nbsp;</td>
            <td class="style4"><asp:Label ID="lbl_lname" runat="server" Text="Last Name"></asp:Label></td>
            <td class="style7"><asp:TextBox ID="txt_lname" runat="server" Width="226px" placeholder="Last Name" 
                    CssClass="form-control"></asp:TextBox></td>
            <td class="style5">&nbsp;</td>
        </tr>
        <tr>
            <td class="style6">&nbsp;</td>
            <td class="style4">&nbsp;</td>
            <td class="style7">&nbsp;</td>
            <td class="style5">&nbsp;</td>
        </tr>
        <tr>
            <td class="style6">&nbsp;</td>
            <td class="style4"><asp:Label ID="lbl_dob" runat="server" Text="Date of Birth"></asp:Label></td>
            <td class="style7"><asp:TextBox ID="txt_dob" runat="server" Width="226px" placeholder="Date of Birth" CssClass="form-control" ></asp:TextBox></td>
            <td class="style5">&nbsp;</td>
        </tr>
        <tr>
            <td class="style6">&nbsp;</td>
            <td class="style4">&nbsp;</td>
            <td class="style7">&nbsp;</td>
            <td class="style5">&nbsp;</td>
        </tr>
        <tr>
            <td class="style6">&nbsp;</td>
            <td class="style4"><asp:Label ID="lbl_gender" runat="server" Text="Gender"></asp:Label></td>
            <td class="style7">
                <asp:RadioButtonList ID="RBL_gender" runat="server" Height="26px" 
                        RepeatDirection="Horizontal" Width="258px">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:RadioButtonList></td>
            <td class="style5">&nbsp;</td>
        </tr>
        <tr>
            <td class="style6">&nbsp;</td>
            <td class="style4">&nbsp;</td>
            <td class="style7">&nbsp;</td>
            <td class="style5">&nbsp;</td>
        </tr>
        <tr>
            <td class="style6">&nbsp;</td>
            <td class="style4"><asp:Label ID="lbl_pass" runat="server" Text="Password"></asp:Label></td>
            <td class="style7"><asp:TextBox ID="txt_password" runat="server" Width="226px" 
                    placeholder="Password" CssClass="form-control"></asp:TextBox></td>
            <td class="style5">&nbsp;</td>
        </tr>
        <tr>
            <td class="style6">&nbsp;</td>
            <td class="style4">&nbsp;</td>
            <td class="style7">&nbsp;</td>
            <td class="style5">&nbsp;</td>
        </tr>
        <tr>
            <td class="style6">&nbsp;</td>
            <td class="style4"><asp:Label ID="lbl_repass" runat="server" Text="Re-Password"></asp:Label></td>
            <td class="style7"><asp:TextBox ID="txt_repassword" runat="server" Width="226px" 
                    placeholder="Repeat Password" CssClass="form-control"></asp:TextBox>            </td>
            <td class="style5">&nbsp;</td>
        </tr>
        <tr>
            <td class="style6">&nbsp;</td>
            <td class="style4">&nbsp;</td>
            <td class="style7">&nbsp;</td>
            <td class="style5">&nbsp;</td>
        </tr>
        <tr>
            <td class="style6">&nbsp;</td>
            <td class="style4"><asp:Label ID="lbl_num" runat="server" Text="Phone Number"></asp:Label></td>
            <td class="style7"><asp:TextBox ID="txt_phnum" runat="server" Width="226px" placeholder="Phone Number" 
                    CssClass="form-control"></asp:TextBox></td>
            <td class="style5">&nbsp;</td>
        </tr>
        <tr>
            <td class="style6">&nbsp;</td>
            <td class="style4">&nbsp;</td>
            <td class="style7">&nbsp;</td>
            <td class="style5">&nbsp;</td>
        </tr>
        <tr>
            <td class="style6">&nbsp;</td>
            <td class="style4"><asp:Label ID="lbl_email" runat="server" Text="Email ID"></asp:Label></td>
            <td class="style7"><asp:TextBox ID="txt_email" runat="server" Width="226px" placeholder="Email ID" 
                    CssClass="form-control"></asp:TextBox></td>
            <td class="style5">&nbsp;</td>
        </tr>
        <tr>
            <td class="style6">&nbsp;</td>
            <td class="style4">&nbsp;</td>
            <td class="style7">&nbsp;</td>
            <td class="style5">&nbsp;</td>
        </tr>
        <tr>
            <td class="style6">&nbsp;</td>
            <td class="style4"><asp:Label ID="lbl_add" runat="server" Text="Adress"></asp:Label></td>
            <td class="style7"><asp:TextBox ID="txt_add" runat="server" Width="226px" placeholder="Adress" 
                    CssClass="form-control"></asp:TextBox></td>
            <td class="style5">&nbsp;</td>
        </tr>
        <tr>
            <td class="style6">&nbsp;</td>
            <td class="style4">&nbsp;</td>
            <td class="style7">&nbsp;</td>
            <td class="style5">&nbsp;</td>
        </tr>
        <tr>
            <td class="style6">&nbsp;</td>
            <td class="style4"><asp:Label ID="lbl_city" runat="server" Text="City"></asp:Label></td>
            <td class="style7"><asp:TextBox ID="txt_city" runat="server" Width="226px" placeholder="City" 
                    CssClass="form-control"></asp:TextBox></td>
            <td class="style5">&nbsp;</td>
        </tr>
        <tr>
            <td class="style6">&nbsp;</td>
            <td class="style4">&nbsp;</td>
            <td class="style7">&nbsp;</td>
            <td class="style5">&nbsp;</td>
        </tr>
        <tr>
            <td class="style6">&nbsp;</td>
            <td class="style4"><asp:Label ID="lbl_state" runat="server" Text="State"></asp:Label></td>
            <td class="style7"><asp:TextBox ID="txt_state" runat="server" Width="226px" placeholder="State" 
                    CssClass="form-control"></asp:TextBox></td>
            <td class="style5">&nbsp;</td>
        </tr>
        <tr>
            <td class="style6">&nbsp;</td>
            <td class="style4">&nbsp;</td>
            <td class="style7">&nbsp;</td>
            <td class="style5">&nbsp;</td>
        </tr>
        <tr>
            <td class="style6">&nbsp;</td>
            <td class="style4"><asp:Label ID="lbl_country" runat="server" Text="Country"></asp:Label></td>
            <td class="style7"><asp:TextBox ID="txt_country" runat="server" Width="226px" 
                    placeholder="Country" CssClass="form-control"></asp:TextBox></td>
            <td class="style5">&nbsp;</td>
        </tr>
        <tr>
            <td class="style6">&nbsp;</td>
            <td class="style4">&nbsp;</td>
            <td class="style7">&nbsp;</td>
            <td class="style5">&nbsp;</td>
        </tr>
        <tr>
            <td class="style6">&nbsp;</td>
            <td class="style4"><asp:Label ID="lbl_zip" runat="server" Text="Zip code"></asp:Label></td>
            <td class="style7"><asp:TextBox ID="txt_zip" runat="server" Width="226px" placeholder="Zip Code" 
                    CssClass="form-control"></asp:TextBox></td>
            <td class="style5">&nbsp;</td>
         </tr>
        <tr>
            <td class="style6">&nbsp;</td>
            <td class="style4">&nbsp;</td>
            <td class="style7">&nbsp;</td>
            <td class="style5">&nbsp;</td>
         </tr>
        <tr>
            <td class="style8"></td>
            <td class="style9"><asp:Label ID="lbl_secque" runat="server" 
                    Text="Security question"></asp:Label></td>
            <td class="style10" colspan="2">
                <asp:DropDownList ID="DDL_sec_que" runat="server" Font-Size="Medium" 
                    Height="33px" Width="538px">
                    <asp:ListItem>What was your childhood nick name?</asp:ListItem>
                    <asp:ListItem>What is the name of your favorite childhood friend?</asp:ListItem>
                    <asp:ListItem>What was the name of your first stuffed animal?</asp:ListItem>
                    <asp:ListItem>In what city or town did your mother and father meet?</asp:ListItem>
                    <asp:ListItem>In what city does your nearest sibling live?</asp:ListItem>
                    <asp:ListItem>Which cartoon was your favorite in childhood?</asp:ListItem>
                    <asp:ListItem>Your favorite movie name?</asp:ListItem>
                    <asp:ListItem>Your favorite actor name?</asp:ListItem>
                </asp:DropDownList>
            </td>
         </tr>
        <tr>
            <td class="style6">&nbsp;</td>
            <td class="style4">&nbsp;</td>
            <td class="style7">&nbsp;</td>
            <td class="style5">&nbsp;</td>
         </tr>
            <tr>
            <td class="style6">&nbsp;</td>
            <td class="style4"><asp:Label ID="lbl_ans" runat="server" Text="Answer"></asp:Label></td>
            <td class="style7">
                <asp:TextBox ID="txt_ans" runat="server" Width="226px" placeholder="Answer" 
                    CssClass="form-control"></asp:TextBox></td>
            <td class="style5">&nbsp;</td>
            </tr>
        <tr>
            <td class="style6">&nbsp;</td>
            <td class="style4">&nbsp;</td>
            <td class="style7">&nbsp;</td>
            <td class="style5">&nbsp;</td>
         </tr>
        <tr>
            <td class="style6">&nbsp;</td>
            <td class="style4">&nbsp;</td>
            <td class="style7">&nbsp;</td>
            <td class="style5">&nbsp;</td>
         </tr>
        <tr>
            <td class="style6">&nbsp;</td>
            <td class="style4">&nbsp;</td>
            <td class="style7"><asp:Button ID="btn_signup" runat="server" 
                    class="btn btn-default" Text="Sign Up" onclick="btn_signup_Click" 
                    Width="224px"/></td>
            <td class="style5">&nbsp;</td>
         </tr>
        <tr>
            <td class="style6">&nbsp;</td>
            <td class="style4">&nbsp;</td>
            <td class="style7">&nbsp;</td>
            <td class="style5">&nbsp;</td>
         </tr>
       </table>
      </div>
    </div>
    <div class="grid_8">
      <h2 class="top-1">Our Ideas</h2>
      <div class="box-3">
        <div> <img src="images/Untitled-2.jpg" alt="" class="img-border"> <a href="Login.aspx" class="link-2">Career options.</a>
          <p>List of wide range of career options.</p>
        </div>
        <div> <img src="images/Untitled-4.jpg" alt="" class="img-border"> <a href="Login.aspx" class="link-2">Exams after 12th.</a>
          <p>Exams that you can take after 10+2.</p>
        </div>
        <div class="last"> <img src="images/Untitled-3.jpg" alt="" class="img-border"> <a href="Login.aspx" class="link-2">Exams after graduation.</a><br />
&nbsp;<p>List of exams that you can take after graduation.</p>
        </div>
      </div>
        <%--<a href="#" class="button top-4">Read More</a>--%> 
      </div>
    <div class="grid_4">
      <h2 class="top-1">Latest Events</h2>
      <div class="box-4 top-2">
        <div class="date"><strong>29</strong><span>April, 2014</span></div>
        <p><a href="#" class="link">GTU Counselling</a><br>
          Counselling session organised by GTU.</p>
      </div>
      <div class="box-4 top-3">
        <div class="date"><strong>21</strong><span>May, 2014</span></div>
        <p><a href="#" class="link">Gujarat University</a><br>
          Seminar for career guidance organised by Gujarat University.</p>
      </div>
      <a href="#" class="button top-4">Read More</a> </div>
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
