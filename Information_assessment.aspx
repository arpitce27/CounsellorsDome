<%@ Page Language="C#" AutoEventWireup="true" Debug="true" CodeFile="Information_assessment.aspx.cs" Inherits="Information_assessment" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>CounsellorsDome</title>
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
            width: 224px;
        }
        .style2
        {
            width: 382px;
        }
        .style3
        {
            width: 508px;
            text-align: left;
        }
        .style4
        {
            width: 508px;
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
          <li class="current"><a href="#">Assessment</a></li>
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
        <p class="text-3">Please fill up this<br /><span>Information form</span><br />for further details!</p>
          <%--<p class="text-4">Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse</p>--%>
        <table style="width:100%; height: 163px;">
        <tr>
            <td class="style1">&nbsp;</td>
            <td class="style2">&nbsp;</td>
            <td class="style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="style1">&nbsp;</td>
            <td class="style2"><asp:Label ID="lbl_stream" runat="server" Text="Stream" 
                        style="text-align: right"></asp:Label></td>
            <td class="style3">
                <asp:RadioButtonList ID="rbl_stream" runat="server" DataSourceID="SqlDS_stream" 
                    DataTextField="stream" DataValueField="pk_stream" Height="32px" 
                    Width="175px"> 
                </asp:RadioButtonList>
                <asp:SqlDataSource ID="SqlDS_stream" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT * FROM [stream] WHERE ([pk_stream] &lt;= @pk_stream)">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="4" Name="pk_stream" Type="Int64" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="style1">&nbsp;</td>
            <td class="style2">Academic Percentage of 10th std</td>
            <td class="style3"><asp:TextBox ID="txt_10thper" runat="server" Width="226px" 
                    placeholder="Password" CssClass="form-control"></asp:TextBox></td>
            <td>&nbsp;</td>
         </tr>
        <tr>
            <td class="style1">&nbsp;</td>
            <td class="style2">&nbsp;</td>
            <td class="style3">&nbsp;</td>
            <td>&nbsp;</td>
         </tr>
        <tr>
            <td class="style1">&nbsp;</td>
            <td class="style2">Academic Percentage of 12th std</td>
            <td class="style3"><asp:TextBox ID="txt_12thper" runat="server" Width="226px" 
                    placeholder="Password" CssClass="form-control"></asp:TextBox></td>
            <td>&nbsp;</td>
         </tr>
        <tr>
            <td class="style1">&nbsp;</td>
            <td class="style2">&nbsp;</td>
            <td class="style3">&nbsp;</td>
            <td>&nbsp;</td>
         </tr>
        <tr>
            <%--<td class="style1">&nbsp;</td>
            <td class="style2">Subjects You do Well In</td>
            <td class="style3">
            <asp:CheckBoxList ID="cb1_sub_sci" runat="server" CellPadding="5" 
                        CellSpacing="1" RepeatColumns="3" RepeatDirection="Horizontal" 
                        Width="550px" Height="59px">
                        <asp:ListItem>Physics</asp:ListItem>
                        <asp:ListItem>Chemistry</asp:ListItem>
                        <asp:ListItem>Mathematics</asp:ListItem>
                        <asp:ListItem>English</asp:ListItem>
                        <asp:ListItem>Computer</asp:ListItem>
                    </asp:CheckBoxList>
                    <asp:CheckBoxList ID="cbl_sub_com" runat="server" CellPadding="5" 
                        CellSpacing="1" Height="60px" RepeatColumns="3" RepeatDirection="Horizontal" 
                        Width="550px">
                        <asp:ListItem>Accounting</asp:ListItem>
                        <asp:ListItem>Finance</asp:ListItem>
                        <asp:ListItem>Mathematics</asp:ListItem>
                        <asp:ListItem>Economics</asp:ListItem>
                        <asp:ListItem>Business Studies</asp:ListItem>
                        <asp:ListItem>Home Science</asp:ListItem>
                    </asp:CheckBoxList>
                    <asp:CheckBoxList ID="cbl_sub_arts" runat="server" CellPadding="5" 
                        CellSpacing="1" Height="60px" RepeatColumns="3" RepeatDirection="Horizontal" 
                        Width="550px">
                        <asp:ListItem>Economics</asp:ListItem>
                        <asp:ListItem>History</asp:ListItem>
                        <asp:ListItem>Geography</asp:ListItem>
                        <asp:ListItem>Political Sciense</asp:ListItem>
                        <asp:ListItem>Fine Arts</asp:ListItem>
                        <asp:ListItem>Social Studies</asp:ListItem>
                    </asp:CheckBoxList>
                    <asp:CheckBoxList ID="cbl_sub_10th" runat="server" CellPadding="5" 
                        CellSpacing="1" Height="75px" RepeatColumns="3" RepeatDirection="Horizontal" 
                        Width="550px">
                        <asp:ListItem>Mathematics</asp:ListItem>
                        <asp:ListItem>Science</asp:ListItem>
                        <asp:ListItem>Social Science</asp:ListItem>
                        <asp:ListItem>English</asp:ListItem>
                        <asp:ListItem>Computer</asp:ListItem>
                    </asp:CheckBoxList>
            </td>--%>
            <td>&nbsp;</td>
         </tr>
        <tr>
            <td class="style1">&nbsp;</td>
            <td class="style2">&nbsp;</td>
            <td class="style3">
                <asp:Label ID="lbl_message" runat="server" Text="Your data is entered!" 
                    Visible="False"></asp:Label>
            </td>
            <td>&nbsp;</td>
         </tr>
        <tr>
            <td class="style1">&nbsp;</td>
            <td class="style2">&nbsp;</td>
            <td class="style4">
                <asp:Button ID="btn_sub_asses" runat="server" class="btn btn-default" 
                     Text="Submit your details" onclick="btn_login_Click" Width="172px"/></td>
            <td class="text-left">&nbsp;</td>
         </tr>
        <tr>
            <td class="style1">&nbsp;</td>
            <td class="style2">&nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td class="text-left">&nbsp;</td>
         </tr>
        <tr>
            <td class="style1">&nbsp;</td>
            <td class="style2">&nbsp;</td>
            <td class="style4">
                <asp:LinkButton ID="lb_career" runat="server" onclick="lb_career_Click" 
                    Visible="False">Please check it out appropriate career list!</asp:LinkButton>
            </td>
            <td class="text-left">&nbsp;</td>
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
    </form>
</body>
</html>
