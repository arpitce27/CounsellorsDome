<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Skill_assessment.aspx.cs" Inherits="Skill_assessment" %>

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
   <script type="text/javascript">
       $(document).ready(function () {
           $("#Div1").hide();
           $("#people_skill1").click(function () {
               $("#Div1").toggle();
           });
       });
   </script>
      <script type="text/javascript">
          $(document).ready(function () {
              $("#Div2").hide();
              $("#people_skill2").click(function () {
                  $("#Div2").toggle();
              });
          });
   </script>
      <script type="text/javascript">
          $(document).ready(function () {
              $("#Div3").hide();
              $("#people_skill3").click(function () {
                  $("#Div3").toggle();
              });
          });
   </script>
      <script type="text/javascript">
          $(document).ready(function () {
              $("#Div4").hide();
              $("#people_skill4").click(function () {
                  $("#Div4").toggle();
              });
          });
   </script>
    <style type="text/css">
        .style2
        {
            font-size: xx-large;
            width: 308px;
            text-align: justify;
        }
        .style9
        {
            font-size: xx-large;
            width: 343px;
            text-align: justify;
        }
        .style10
        {
            font-size: xx-large;
            font-style: normal;
            font-family: Papyrus;
            height: 50px;
            text-align: justify;
        }
        .style11
        {
            font-size: xx-large;
            font-style: normal;
            text-align: justify;
            height: 50px;
        }
        .style12
        {
            font-size: xx-large;
            font-style: normal;
            color: #FF8000;
            height: 50px;
            text-align: justify;
        }
         .style34
        {
            width: 585px;
            text-align: justify;
            height: 26px;
        }
        .style35
        {
            font-size: xx-large;
            width: 343px;
            text-align: justify;
            height: 26px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
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

    <section id="content">
  <div class="container_12">

    <div class="grid_12 box-2">
      <div>
        <p class="text-3">Your <span>Skill Assessment</span> Will be done here!</p>
          <%--<p class="text-4">Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse</p>--%>
        <table style="width:100%; height: 163px;">
        <tr>
            <td class="style10" colspan="2">
                <input id="people_skill1" class="link" type="button" 
                    value="People Skill :" /></td>
        </tr>
        <tr>
            <td class="style9">&nbsp;</td>
            <td class="style2"><div id="Div1">
                <asp:CheckBoxList ID="CBL_skill1" runat="server" CellPadding="5" 
                    CellSpacing="10" CssClass="checkbox-inline" DataSourceID="SqlDS_skill" 
                    DataTextField="skill" DataValueField="pk_skill" Font-Size="Large" Height="16px" 
                    RepeatColumns="2" RepeatDirection="Horizontal" Width="1003px">
                </asp:CheckBoxList></div>
                <asp:SqlDataSource ID="SqlDS_skill" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT * FROM [skill] WHERE ([fk_skill_type] = @fk_skill_type)">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="1" Name="fk_skill_type" Type="Int64" />
                    </SelectParameters>
                </asp:SqlDataSource>
                </td>
         </tr>
        <tr>
            <td class="style9">&nbsp;</td>
            <td class="style2">&nbsp;</td>
         </tr>
        <tr>
            <td class="style11" colspan="2">
                <input id="people_skill2" class="link" type="button" 
                    value="Information Skill :" /></td>
         </tr>
        <tr>
            <td class="style9">&nbsp;</td>
            <td class="style2"><div id="Div2">
                <asp:CheckBoxList ID="CBL_skill2" runat="server" CellPadding="5" 
                    CellSpacing="10" CssClass="checkbox-inline" DataSourceID="SqlDS_skill2" 
                    DataTextField="skill" DataValueField="pk_skill" Font-Size="Large" Height="16px" 
                    RepeatColumns="2" RepeatDirection="Horizontal" Width="1000px">
                </asp:CheckBoxList></div>
                <asp:SqlDataSource ID="SqlDS_skill2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT * FROM [skill] WHERE ([fk_skill_type] = @fk_skill_type)">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="2" Name="fk_skill_type" Type="Int64" />
                    </SelectParameters>
                </asp:SqlDataSource>
                </td>
         </tr>
        <tr>
            <td class="style9">&nbsp;</td>
            <td class="style2">&nbsp;</td>
         </tr>
        <tr>
            <td class="style12" colspan="2">
                <input id="people_skill3" class="link" type="button" 
                    value="Creative Skill :" /></td>
         </tr>
        <tr>
            <td class="style9">&nbsp;</td>
            <td class="style2"><div id="Div3">
                <asp:CheckBoxList ID="CBL_skill3" runat="server" CellPadding="5" 
                    CellSpacing="10" CssClass="checkbox-inline" DataSourceID="SqlDS_skill3" 
                    DataTextField="skill" DataValueField="pk_skill" Font-Size="Large" Height="16px" 
                    RepeatColumns="2" RepeatDirection="Horizontal" Width="998px">
                </asp:CheckBoxList></div>
                <asp:SqlDataSource ID="SqlDS_skill3" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT * FROM [skill] WHERE ([fk_skill_type] = @fk_skill_type)">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="3" Name="fk_skill_type" Type="Int64" />
                    </SelectParameters>
                </asp:SqlDataSource>
                </td>
         </tr>
        <tr>
            <td class="style9">&nbsp;</td>
            <td class="style2">&nbsp;</td>
         </tr>
        <tr>
            <td class="style11" colspan="2">
                <input id="people_skill4" class="link" type="button" 
                    value="Practical Skill :" /></td>
         </tr>
        <tr>
            <td class="style9">&nbsp;</td>
            <td class="style2"><div id="Div4">
                <asp:CheckBoxList ID="CBL_skill4" runat="server" CellPadding="5" 
                    CellSpacing="10" CssClass="checkbox-inline" DataSourceID="SqlDS_skill4" 
                    DataTextField="skill" DataValueField="pk_skill" Font-Size="Large" Height="16px" 
                    RepeatColumns="2" RepeatDirection="Horizontal" Width="1010px">
                </asp:CheckBoxList></div>
                <asp:SqlDataSource ID="SqlDS_skill4" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT * FROM [skill] WHERE ([fk_skill_type] = @fk_skill_type)">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="4" Name="fk_skill_type" Type="Int64" />
                    </SelectParameters>
                </asp:SqlDataSource>
                </td>
         </tr>
        <tr>
            <td class="style9">&nbsp;</td>
            <td class="style2">&nbsp;</td>
         </tr>
        <tr>
            <td class="style35"></td>
            <td class="style34">
                <asp:Label ID="lbl_message" runat="server" Visible="False"></asp:Label>
            </td>
         </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style2">
                <asp:Button ID="btn_sub_skill" runat="server" class="btn btn-default" 
                     Text="Submit your skill list here" Width="224px" 
                    onclick="btn_sub_skill_Click1"/>
            </td>
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
    </div>

    <footer>
  <p>© 2012 Start-Up<br>
    Website Template by <a target="_blank" href="http://www.templatemonster.com/" class="link">Templatemonster.com</a></p>
  <div class="soc-icons"><span>Follow Us:</span><a href="#"><img src="images/icon-1.jpg" alt=""></a><a href="#"><img src="images/icon-2.jpg" alt=""></a><a href="#"><img src="images/icon-3.jpg" alt=""></a></div>
</footer>
<div align=center>This template  downloaded form <a href='http://all-free-download.com/free-website-templates/'>free website templates</a></div>


    </form>
</body>
</html>
