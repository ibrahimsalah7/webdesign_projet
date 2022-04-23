<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="WebApplication1.signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        body {
            display:flex;
            justify-content: center;
            margin-top:130px;
        }
        .txtboxes {
            width: 100%;
            height: 100%;
            padding-top: 10px;
            padding-bottom: 10px;
            border: solid;
            border-radius:10px;
            background-color:transparent;
            text-align:center;
            font-size:16px;
            font-weight:bold;
            
        }
            .txtboxes:hover {
                background-color:#ffc0cb;
                padding-top: 20px;
                padding-bottom: 20px;
            }
        #submit {
            background-color: #dc143c;
            border: none;
            color: white;
            padding: 5px 20px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 20px;
            font-weight: bold;
            margin: 4px 2px;
            cursor: pointer;
            border-radius: 10px;
            margin-left: 170px;
            width:120px;
        }
        #submit:hover {
            background-color: black;
            color: white;
        }
        #HyperLink1 {
            margin-left: 170px;
        }
    </style>
   
</head>
<body >
    <form runat="server"  >
            <table >
                <tbody>
                <tr>
                    <td >
                        <asp:TextBox ID="txt4email" runat="server" CssClass="txtboxes" OnTextChanged="txt1fname_TextChanged"  TextMode="Email" placeholder="Email" Width="480" ></asp:TextBox>
                    </td>                 
                    <td >
                        &nbsp;</td>  
                </tr>
                <tr>
                    <td >
                        <asp:TextBox ID="txt5password" runat="server" CssClass="txtboxes" OnTextChanged="txt1fname_TextChanged" TextMode="Password"  placeholder="Password" Width="480" ></asp:TextBox>
                        <asp:CheckBox ID="CheckBox1" runat="server" onclick="showPassword(1)" Text="Show" />           
                    </td>    
                    <td >
                        &nbsp;</td>
                </tr>
  
                <tr>

                    <td >
                        <asp:Button ID="submit" runat="server" Text="Sign in" />
                    </td>
                </tr>
                    <tr>
                    <td>

                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/homePage.html" >Forget Password?</asp:HyperLink>

                    </td>
                </tr>
            </table>
    </form>

    
</body>
</html>
