<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="WebApplication1.signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 97%;
        }
        .auto-style2 {
            height: 23px;
        }
        .auto-style3 {
            height: 26px;
        }
        .auto-style4 {
            text-align: center;
        }
        .auto-style5 {
            height: 26px;
            text-align: center;
        }
        .auto-style6 {
            height: 23px;
            text-align: center;
        }
    </style>
</head>
<body style="height: 242px; width: 932px">
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style4">
                        <asp:TextBox ID="txt1fname" runat="server" BackColor="#CCCCCC" BorderStyle="Solid" CssClass="txtboxes" Height="19px" OnTextChanged="txt1fname_TextChanged" Width="149px">First Name</asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:TextBox ID="txt2lname" runat="server" BackColor="#CCCCCC" BorderStyle="Solid" CssClass="txtboxes" OnTextChanged="txt1fname_TextChanged" Width="148px">Last Name</asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:TextBox ID="txt3username" runat="server" BackColor="#CCCCCC" BorderStyle="Solid" CssClass="txtboxes" OnTextChanged="txt1fname_TextChanged" Width="146px">Username</asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
               
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:TextBox ID="txt4email" runat="server" BackColor="#CCCCCC" BorderStyle="Solid" CssClass="txtboxes" OnTextChanged="txt1fname_TextChanged" Width="146px">Email</asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
       
                </tr>
                <tr>
                    <td class="auto-style6">
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" Width="727px">
                            <asp:ListItem>Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td class="auto-style2"></td>
                    <td class="auto-style2"></td>
            
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:TextBox ID="txt5password" runat="server" BackColor="#CCCCCC" BorderStyle="Solid" CssClass="txtboxes" OnTextChanged="txt1fname_TextChanged" TextMode="Password" Width="147px">Password</asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                  
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:TextBox ID="txt6repassword" runat="server" BackColor="#CCCCCC" BorderStyle="Solid" CssClass="txtboxes" OnTextChanged="txt1fname_TextChanged" style="margin-top: 0px" TextMode="Password" Width="147px">Enter password again</asp:TextBox>
                    </td>
                    <td class="auto-style3"></td>
                    <td class="auto-style3"></td>
                    
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                   
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
