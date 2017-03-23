<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin_manage_account.aspx.cs" Inherits="Home" %>

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
               width: 193px;
           }
        .style3
        {
           }
           
        .style8
        {
            font-size: x-large;
            color: #FF8000;
        }
           .style9
           {
           }
           .style10
           {
           }
           .style11
           {
               width: 215px;
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
          <table style="width:97%;" align="center">
            <tr>
                <td class="style11">
                    &nbsp;</td>
                <td class="style3">
                    &nbsp;</td>
                <td class="style9">
                    &nbsp;</td>
                <td class="style1">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style10" colspan="8"><p class="text-center"><strong class="style8">Delete 
                    account of suspected student!</strong></p>
                </td>
            </tr>
            <tr>
                <td class="style11">
                    &nbsp;</td>
                <td class="style3">
                    &nbsp;</td>
                <td class="style9">
                    &nbsp;</td>
                <td class="style1">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style11">
                    &nbsp;</td>
                <td class="style3" colspan="7">
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                        AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" 
                        BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" 
                        ForeColor="Black" onpageindexchanging="GridView1_PageIndexChanging" 
                        onrowcommand="GridView1_RowCommand" PageSize="5" Height="255px" 
                        Width="566px" DataSourceID="SqlDS_delete_account">
                        <Columns>
                            <asp:BoundField DataField="first_name" HeaderText="First name" >
                            <FooterStyle HorizontalAlign="Center" />
                            <HeaderStyle HorizontalAlign="Center" />
                            <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:BoundField DataField="last_name" HeaderText="Last name" />
                            <asp:BoundField DataField="gender" HeaderText="Gender" />
                            <asp:BoundField DataField="phone_no" HeaderText="Phone number" />
                            <asp:BoundField DataField="email_adress" HeaderText="Email ID" />
                            <asp:TemplateField>
                                <HeaderTemplate>
                                    Delete
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <asp:LinkButton ID="lnk_del" runat="server" 
                                        CommandArgument='<%# Eval("pk_users") %>' CommandName="delete_account">Delete</asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <FooterStyle BackColor="#CCCCCC" />
                        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                        <RowStyle BackColor="White" />
                        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#808080" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#383838" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDS_delete_account" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT * FROM [users]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="style11">
                    &nbsp;</td>
                <td class="style3" colspan="7">
                    <asp:Label ID="lbl_message" runat="server" Visible="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style11">
                    &nbsp;</td>
                <td class="style3">
                    &nbsp;</td>
                <td class="style9">
                    &nbsp;</td>
                <td class="style1">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
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
