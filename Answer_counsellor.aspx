<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Answer_counsellor.aspx.cs" Inherits="Interest_assessment" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>CounsellorsDome|Counsellor</title>
    <meta charset="utf-8">
<link rel="stylesheet" type="text/css" media="screen" href="css/reset.css">
<link rel="stylesheet" type="text/css" media="screen" href="css/grid_12.css">
<link rel="stylesheet" type="text/css" media="screen" href="css/style.css">
<link rel="stylesheet" type="text/css" media="screen" href="css/slider.css">
    <link href="css/bootstrap-theme.min.css" rel="stylesheet" type="text/css" />
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<link href='http://fonts.googleapis.com/css?family=Lato:300italic' rel='stylesheet' type='text/css'>
<link rel="stylesheet" type="text/css" media="screen" href="css/ie.css">
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
   <script type="text/javascript">
       $(document).ready(function () {
           $("#Div6").hide();
           $("#people_interest6").click(function () {
               $("#Div6").toggle();
           });
       });
   </script>
   <script type="text/javascript">
       $(document).ready(function () {
           $("#Div1").hide();
           $("#people_interest1").click(function () {
               $("#Div1").toggle();
           });
       });
   </script>
   <script type="text/javascript">
       $(document).ready(function () {
           $("#Div2").hide();
           $("#people_interest2").click(function () {
               $("#Div2").toggle();
           });
       });
   </script>
   <script type="text/javascript">
       $(document).ready(function () {
           $("#Div3").hide();
           $("#people_interest3").click(function () {
               $("#Div3").toggle();
           });
       });
   </script>
   <script type="text/javascript">
       $(document).ready(function () {
           $("#Div4").hide();
           $("#people_interest4").click(function () {
               $("#Div4").toggle();
           });
       });
   </script>
   <script type="text/javascript">
       $(document).ready(function () {
           $("#Div5").hide();
           $("#people_interest5").click(function () {
               $("#Div5").toggle();
           });
       });
   </script>
<!--[if lt IE 9]>
<script src="js/html5.js"></script>
<link rel="stylesheet" type="text/css" media="screen" href="css/ie.css">
<![endif]-->

    <style type="text/css">
        .style2
        {
            width: 163px;
        }
        .style3
        {
            width: 26px;
        }
        .style4
        {
            width: 128px;
        }
    </style>

    </head>
<body>
    <form id="form1" runat="server">

     <header>
  <div>
    <div>
      <h1><a href="Home_counsellor.aspx"><img src="images/logo.png" alt=""></a></h1>
      <nav>
        <ul class="menu">
          <li><a href="Home_counsellor.aspx">Home</a></li>
          <li><a href="Question_counsellor.aspx">Query</a></li>
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
        <p class="text-3">Give<span> answers!</span></p>
          <%--<p class="text-4">Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse</p>--%>

        <table style="width:98%; height: 93px;" align="center">
            <tr>
                <td class="style4">&nbsp;</td>
                <td class="style2">&nbsp;</td>
                <td class="style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td colspan="4">
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                        AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" 
                        BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" 
                        ForeColor="Black" Width="991px" 
                        onpageindexchanging="GridView1_PageIndexChanging1">
                        <Columns>
                            <asp:BoundField DataField="fk_questions" HeaderText="Que no." 
                                InsertVisible="False" ReadOnly="True" >
                            <HeaderStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:BoundField DataField="answers" HeaderText="Answer" >
                            <HeaderStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:BoundField DataField="username_ans" HeaderText="Answers by" >
                            <HeaderStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                        </Columns>
                        <FooterStyle BackColor="#CCCCCC" />
                        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                        <RowStyle BackColor="White" />
                        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="Gray" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#383838" />
                    </asp:GridView>
                </td>
            </tr>
            <tr>
                <td class="style4">&nbsp;</td>
                <td class="style2">&nbsp;</td>
                <td class="style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td colspan="4">Add your answer here!</td>
            </tr>
            <tr>
                <td class="style4">&nbsp;</td>
                <td class="style2">&nbsp;</td>
                <td class="style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="style4">&nbsp;</td>
                <td class="style2">
                    <asp:Label ID="lbl_uname" runat="server" Text="User name"></asp:Label>
                </td>
                <td class="style3">
                    <asp:TextBox ID="txt_uname" cssclass="form-control" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="style4">&nbsp;</td>
                <td class="style2">&nbsp;</td>
                <td class="style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="style4">&nbsp;</td>
                <td class="style2">
                    <asp:Label ID="Label2" runat="server" Text="Answer"></asp:Label>
                </td>
                <td class="style3">
                    <textarea class="form-control" id="txt_question" runat="server" rows="3"></textarea></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="style4">&nbsp;</td>
                <td class="style2">&nbsp;</td>
                <td class="style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="style4">&nbsp;</td>
                <td class="style2">&nbsp;</td>
                <td class="style3">
                    <asp:Button ID="btn_submit" runat="server" Font-Size="Large" Height="39px" 
                        onclick="btn_submit_Click" Text="Submit answer" Width="229px" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="style4">&nbsp;</td>
                <td class="style2">&nbsp;</td>
                <td class="style3">
                    <asp:Label ID="lbl_message" runat="server" Visible="False"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="style4">&nbsp;</td>
                <td class="style2">&nbsp;</td>
                <td class="style3">
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="style4">&nbsp;</td>
                <td class="style2">&nbsp;</td>
                <td class="style3">
                    <asp:Button ID="btn_goback" runat="server" Font-Size="Large" Height="38px" 
                        onclick="btn_goback_Click" Text="Go back to questions" Width="241px" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="style4">&nbsp;</td>
                <td class="style2">&nbsp;</td>
                <td class="style3">
                    &nbsp;</td>
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
      <a href="#" class="button top-4">Read More</a> </div><div class="clear"></div>
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
