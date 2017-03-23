<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin_Institution.aspx.cs" Inherits="Home" %>

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
        .style7
        {
            width: 931px;
            height: 721px;
        }
        .style8
        {
            font-size: x-large;
            color: #FF8000;
        }
        .style9
        {
        }
        .style15
        {
            width: 292px;
        }
        .style16
        {
            width: 37px;
        }
        .style17
        {
            width: 39px;
        }
        .style18
        {
            width: 410px;
            text-align: center;
        }
        .style19
        {
            text-align: center;
            height: 37px;
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
          <table class="style7" align="center">
            <tr>
                <td class="style18">
                    &nbsp;</td>
                <td class="style15">
                    &nbsp;</td>
                <td class="style16">
                    &nbsp;</td>
                <td class="style17">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style19" colspan="4"><p class="text-center"><strong class="style8">Update 
                    any institution information of your website!</strong></p> </td>
            </tr>
            <tr>
                <td class="style18">
                    &nbsp;</td>
                <td class="style15">
                    &nbsp;</td>
                <td class="style16">
                    &nbsp;</td>
                <td class="style17">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style18">
                    <asp:Label ID="lbl_inst_id" runat="server"></asp:Label>
                </td>
                <td class="style15">
                    &nbsp;</td>
                <td class="style16">
                    &nbsp;</td>
                <td class="style17">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style18">
                    &nbsp;</td>
                <td class="style15">
                    &nbsp;</td>
                <td class="style16">
                    &nbsp;</td>
                <td class="style17">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style18">
                    <asp:Label ID="lbl_Itype" runat="server" Text="Type of Institution"></asp:Label>
                </td>
                <td class="style15">
                    <asp:TextBox ID="txt_inst_type" runat="server"></asp:TextBox>
                </td>
                <td class="style16">
                    &nbsp;</td>
                <td class="style17">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style18">
                    &nbsp;</td>
                <td class="style15">
                    &nbsp;</td>
                <td class="style16">
                    &nbsp;</td>
                <td class="style17">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style18">
                    <asp:Label ID="lbl_name" runat="server" Text="Name of Institute"></asp:Label>
                </td>
                <td class="style15">
                    <asp:TextBox ID="txt_name" runat="server"></asp:TextBox>
                </td>
                <td class="style16">
                    &nbsp;</td>
                <td class="style17">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style18">
                    &nbsp;</td>
                <td class="style15">
                    &nbsp;</td>
                <td class="style16">
                    &nbsp;</td>
                <td class="style17">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style18">
                    <asp:Label ID="lbl_city" runat="server" Text="City"></asp:Label>
                </td>
                <td class="style15">
                    <asp:TextBox ID="txt_city" runat="server"></asp:TextBox>
                </td>
                <td class="style16">
                    &nbsp;</td>
                <td class="style17">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style18">
                    &nbsp;</td>
                <td class="style15">
                    &nbsp;</td>
                <td class="style16">
                    &nbsp;</td>
                <td class="style17">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style18">
                    <asp:Label ID="lbl_state" runat="server" Text="State"></asp:Label>
                </td>
                <td class="style15">
                    <asp:TextBox ID="txt_state" runat="server"></asp:TextBox>
                </td>
                <td class="style16">
                    &nbsp;</td>
                <td class="style17">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style18">
                    &nbsp;</td>
                <td class="style15">
                    &nbsp;</td>
                <td class="style16">
                    &nbsp;</td>
                <td class="style17">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style18">
                    <asp:Label ID="lbl_country" runat="server" Text="Country"></asp:Label>
                </td>
                <td class="style15">
                    <asp:TextBox ID="txt_country" runat="server"></asp:TextBox>
                </td>
                <td class="style16">
                    &nbsp;</td>
                <td class="style17">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style18">
                    &nbsp;</td>
                <td class="style15">
                    &nbsp;</td>
                <td class="style16">
                    &nbsp;</td>
                <td class="style17">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style18">
                    <asp:Label ID="lbl_pin" runat="server" Text="Pin Code"></asp:Label>
                </td>
                <td class="style15">
                    <asp:TextBox ID="txt_pin" runat="server"></asp:TextBox>
                </td>
                <td class="style16">
                    &nbsp;</td>
                <td class="style17">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style18">
                    &nbsp;</td>
                <td class="style15">
                    &nbsp;</td>
                <td class="style16">
                    &nbsp;</td>
                <td class="style17">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style18">
                    <asp:Label ID="lbl_website" runat="server" Text="Website"></asp:Label>
                </td>
                <td class="style15">
                    <asp:TextBox ID="txt_website" runat="server"></asp:TextBox>
                </td>
                <td class="style16">
                    &nbsp;</td>
                <td class="style17">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style18">
                    &nbsp;</td>
                <td class="style15">
                    &nbsp;</td>
                <td class="style16">
                    &nbsp;</td>
                <td class="style17">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style18">
                    <asp:Label ID="lbl_contact" runat="server" Text="Contact number"></asp:Label>
                </td>
                <td class="style15">
                    <asp:TextBox ID="txt_number" runat="server"></asp:TextBox>
                </td>
                <td class="style16">
                    &nbsp;</td>
                <td class="style17">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style18">
                    &nbsp;</td>
                <td class="style15">
                    &nbsp;</td>
                <td class="style16">
                    &nbsp;</td>
                <td class="style17">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style18">
                    <asp:Label ID="lbl_course" runat="server" Text="Course Available"></asp:Label>
                </td>
                <td class="style15">
                    <asp:TextBox ID="txt_course" runat="server"></asp:TextBox>
                </td>
                <td class="style16">
                    &nbsp;</td>
                <td class="style17">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style18">
                    &nbsp;</td>
                <td class="style15">
                    &nbsp;</td>
                <td class="style16">
                    &nbsp;</td>
                <td class="style17">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style18">
                    &nbsp;</td>
                <td class="style15">
                    <asp:Button ID="btn_submit" runat="server" Text="Submit" 
                        onclick="btn_submit_Click" Font-Size="Large" Height="39px" Width="119px" />
                </td>
                <td class="style16">
                    &nbsp;</td>
                <td class="style17">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style18">
                    &nbsp;</td>
                <td class="style15">
                    <asp:Label ID="lbl_message" runat="server" Text="Label" Visible="False"></asp:Label>
                </td>
                <td class="style16">
                    &nbsp;</td>
                <td class="style17">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style9" colspan="4">
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                        AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" 
                        BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" 
                        ForeColor="Black" PageSize="5" 
                        onpageindexchanging="GridView1_PageIndexChanging" 
                        onrowcommand="GridView1_RowCommand">
                        <Columns>
                            <asp:BoundField DataField="pk_institution_list" HeaderText="Institution_ID" />
                            <asp:BoundField DataField="institution_type" HeaderText="Institute Type" />
                            <asp:BoundField DataField="institute_name" HeaderText="Institution Name" />
                            <asp:BoundField DataField="city" HeaderText="City" />
                            <asp:BoundField DataField="state" HeaderText="State" />
                            <asp:BoundField DataField="country" HeaderText="Country" />
                            <asp:BoundField DataField="pin_code" HeaderText="Pin Code" />
                            <asp:BoundField DataField="website" HeaderText="Website" />
                            <asp:BoundField DataField="contact_number" HeaderText="Contact Number" />
                            <asp:BoundField DataField="course_avail" HeaderText="Cources Available" />
                            <asp:TemplateField>
                                <HeaderTemplate>
                                    Edit
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <asp:LinkButton ID="lnkb_edit" runat="server" CommandName="edit_institute" 
                                        CommandArgument='<%# Eval("pk_institution_list") %>'>Edit</asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField>
                                <HeaderTemplate>
                                    Delete
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <asp:LinkButton ID="lnkb_delete" runat="server" CommandName="delete_institute" 
                                        CommandArgument='<%# Eval("pk_institution_list") %>'>Delete</asp:LinkButton>
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
                </td>
            </tr>
            <tr>
                <td class="style18">
                    &nbsp;</td>
                <td class="style15">
                    &nbsp;</td>
                <td class="style16">
                    &nbsp;</td>
                <td class="style17">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style18">
                    &nbsp;</td>
                <td class="style15">
                    &nbsp;</td>
                <td class="style16">
                    &nbsp;</td>
                <td class="style17">
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
