<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Question_counsellor.aspx.cs" Inherits="Interest_assessment" %>

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
          <li class="current"><a href="Question_counsellor.aspx">Query</a></li>
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
        <p class="text-3">You should have to<span> Answers</span> following questions!</p>
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
                        DataKeyNames="pk_questions" ForeColor="Black" 
                        Width="991px" onpageindexchanging="GridView1_PageIndexChanging" 
                        onrowcommand="GridView1_RowCommand">
                        <Columns>
                            <asp:BoundField DataField="pk_questions" HeaderText="Que no." 
                                InsertVisible="False" ReadOnly="True" />
                            <asp:BoundField DataField="username_que" HeaderText="Questioner name" />
                            <asp:TemplateField HeaderText="Questions">
                                <HeaderTemplate>
                                    Questions
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <asp:LinkButton ID="lb_que" runat="server" 
                                        CommandArgument='<%# Eval("pk_questions") %>' Text='<%# Eval("questions") %>'></asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="answers_given" HeaderText="Answers given" />
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
                    <%--<asp:SqlDataSource ID="SqlDS_questions" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT * FROM [questions]"></asp:SqlDataSource>--%>
                </td>
            </tr>
            <tr>
                <td class="style4">&nbsp;</td>
                <td class="style2">&nbsp;</td>
                <td class="style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td colspan="4">&nbsp;</td>
            </tr>
            </table>
      </div>
</div>
    
  
</section>
    </div>

    <footer>
  <p>© 2012 Start-Up<br>
    Website Template by <a target="_blank" href="http://www.templatemonster.com/" class="link">Templatemonster.com</a></p>
  <div class="soc-icons"><span>Follow Us:</span><a href="#"><img src="images/icon-1.jpg" alt=""></a><a href="#"><img src="images/icon-2.jpg" alt=""></a><a href="#"><img src="images/icon-3.jpg" alt=""></a></div>
</footer>



    </form>
</body>
</html>
