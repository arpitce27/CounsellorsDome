<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>CounsellorsDome|Login</title>
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
        .style1
        {
            width: 242px;
        }
        .style2
        {
            width: 201px;
        }
        .style3
        {
            width: 4px;
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
          <li><a href="Home.aspx">Home</a></li>
          <li><a href="Process_info.aspx">Process Info</a></li>
          <li><a href="Aboutus.aspx">About US</a></li>
          <li><a href="Signup.aspx">Sign UP</a></li>
          <li class="current"><a href="Login.aspx">Login</a></li>
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
          <p class="text-1"> Confused <span>about future</span></p><br/>
          <p class="text-2">Don't know whom to ask for guidance?</p>
        </div>
      </li>
      <li><img src="images/slider-2.jpg" alt="">
        <div class="banner">
          <p class="text-1">Here We <span>Are!</span></p><br/>
          <p class="text-2">Have faith on us.</p>
        </div>
      </li>
      <li><img src="images/slider-3.jpg" alt="">
        <div class="banner">
          <p class="text-1">Don't<span>wait till this!</span></p><br/>
          <p class="text-2">Lets not take this much time till your hair are gone.</p>
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
        <p class="text-3">Welcome to Our Website!<br /><span>Login here</span> </p>
          <%--<p class="text-4">Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse</p>--%>
        <table style="width:100%; height: 184px;">
        <tr>
            <td class="style1">&nbsp;</td>
            <td class="style2">&nbsp;</td>
            <td class="style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="style1">&nbsp;</td>
            <td class="style2"><asp:Label ID="lbl_email" runat="server" Text="Email ID"></asp:Label></td>
            <td class="style3"><asp:TextBox ID="txt_emailid" runat="server" Width="226px" placeholder="Email id"
                    CssClass="form-control"></asp:TextBox></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="style1">&nbsp;</td>
            <td class="style2"><asp:Label ID="lbl_pass" runat="server" Text="Password"></asp:Label></td>
            <td class="style3"><asp:TextBox ID="txt_pass" runat="server" Width="226px" placeholder="Password" CssClass="form-control"></asp:TextBox></td>
            <td>&nbsp;</td>
         </tr>
        <tr>
            <td class="style1">&nbsp;</td>
            <td class="style2">&nbsp;</td>
            <td class="style3">
                <asp:Button ID="btn_login" runat="server" class="btn btn-default" 
                     Text="Login" onclick="btn_login_Click"/><asp:Label ID="lbl_message" 
                    runat="server" Visible="False"></asp:Label>
                <asp:LinkButton ID="lb_pass" runat="server" onclick="lb_pass_Click" 
                    Width="120px">Forgot Password</asp:LinkButton>
            </td>
            <td>&nbsp;</td>
         </tr>
       </table>
      </div>
    </div>
    <div class="grid_8">
      <h2 class="top-1">Our Ideas</h2>
      <div class="box-3">
        <div> <img src="images/Untitled-2.jpg" alt="" class="img-border"> <a href="Career_list.aspx" class="link-2">Career options.</a>
          <p>List of wide range of career options.</p>
        </div>
        <div> <img src="images/Untitled-4.jpg" alt="" class="img-border"> <a href="examsafter12th.aspx" class="link-2">Exams after 12th.</a>
          <p>Exams that you can take after 10+2.</p>
        </div>
        <div class="last"> <img src="images/Untitled-3.jpg" alt="" class="img-border"> <a href="examsaftergraduation.aspx" class="link-2">Exams after graduation.</a><br />
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
