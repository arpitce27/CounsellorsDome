﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Assessment.aspx.cs" Inherits="Home" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>CounsellorsDome</title>
<meta charset="utf-8">
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
<!--[if lt IE 9]>
<script src="js/html5.js"></script>
<link rel="stylesheet" type="text/css" media="screen" href="css/ie.css">
<![endif]-->
    <style type="text/css">
        .style1
        {
            width: 207px;
        }
        .style2
        {
            font-size: x-large;
        }
        .style3
        {
            color: #FF8000;
        }
        .style4
        {
            color: #FF8000;
            font-size: x-large;
        }
        .style5
        {
            width: 628px;
            text-align: center;
        }
        .style6
        {
            width: 628px;
            text-align: left;
        }
    </style>
</head>

<body>
<form id="form1" runat="server">
<header>
  <div>
    <div>
      <h1><a href="Home_student.aspx"><img src="images/logo.png" alt=""></a></h1>
      <nav>
        <ul class="menu">
          <li><a href="Home_student.aspx">Home</a></li>
          <li><a href="Process_info_logined.aspx">Process Info</a></li>
          <li class="current"><a href="Assessment.aspx">Assessment</a></li>
          <li><a href="Career.aspx">Career</a></li>
          <li><a href="Question_student.aspx">Query</a></li>
          <li><a href="Logout.aspx">Logout</a></li>
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
          <p class="text-1"> Confused <strong>about future</strong></p>
          <p class="text-2">Don't know whom to ask for guidance?</p>
        </div>
      </li>
      <li><img src="images/slider-2.jpg" alt="">
        <div class="banner">
          <p class="text-1">Here We <strong>Are!</strong></p>
          <p class="text-2">Have faith on us.</p>
        </div>
      </li>
      <li><img src="images/slider-3.jpg" alt="">
        <div class="banner">
          <p class="text-1">Don't<strong>wait till this!</strong></p>
          <p class="text-2">Lets not take this much time till your hair are gone.</p>
        </div>
      </li>
    </ul>
  </div>
</div>
<!--==============================content================================-->
<section id="content">
  <div class="container_12">
    <div class="grid_12 box-2">
      <div>
        <p class="text-3">Your full <span>Assessment</span> Will be done here!</p>
          <%--<p class="text-4">Don't waste time, here and there, asking about suitable career options to fools.</p>--%>

        <table style="width:100%; height: 444px;">
            <tr>
                <td class="style1">&nbsp;</td>
                <td class="style6">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="style1">&nbsp;</td>
                <td class="style6">
                    <p class="style2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; First your <span class="style3">Skill assessment</span> Will be done!</p>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="style1">&nbsp;</td>
                <td class="style5">
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/images/button_down.png" />
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="style1">&nbsp;</td>
                <td class="style5"><span class="style2">Then, your </span><span class="style4">Interest assessment</span><span 
                        class="style2"> Will be done!</span></td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="style1">&nbsp;</td>
                <td class="style5">
                    <asp:Image ID="Image2" runat="server" ImageUrl="~/images/button_down.png" />
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="style1">&nbsp;</td>
                <td class="style5"><span class="style2">Then, your </span><span class="style4">Final detail</span><span 
                        class="style2"> form Will be appear!</span></td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="style1">&nbsp;</td>
                <td class="style5">
                    <asp:Image ID="Image3" runat="server" ImageUrl="~/images/button_down.png" />
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="style1">&nbsp;</td>
                <td class="style5"><span class="style2">After your </span><span class="style4">Final submission,</span><span 
                        class="style2"> you can check<br />
                    <br />
                    your top <span class="style3">3</span> suitable <span class="style3">Career!</span></span></td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="style1">&nbsp;</td>
                <td class="style5">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="style1">&nbsp;</td>
                <td class="style5">
                    <asp:Label ID="lbl_message" runat="server" 
                        Text="You can not take assessment second time!" Visible="False"></asp:Label>
                    <br />
                    <asp:Label ID="Label1" runat="server" Text="You must assessment first!"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="style1">&nbsp;</td>
                <td class="style5">
                <asp:Button ID="btn_start_assess" runat="server" class="btn btn-default" 
                     Text="Let's start assessment" Width="262px" Height="29px" 
                        onclick="btn_start_assess_Click"/>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="style1">&nbsp;</td>
                <td class="style5">&nbsp;</td>
                <td>&nbsp;</td>
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
