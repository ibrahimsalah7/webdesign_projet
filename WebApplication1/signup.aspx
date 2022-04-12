<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="WebApplication1.signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        html, body {
           min-height: 100%;
           background-image: url('background.png');
        }
        .txtboxes {
            outline: none;
            overflow: visible;
            box-shadow: none;
            font-weight: 300;
            background-color: transparent;
            border-bottom:1px solid #000000;
            border-left-style: none;
            border-left-color: inherit;
            border-left-width: medium;
            border-right-style: none;
            border-right-color: inherit;
            border-right-width: medium;
            border-top-style: none;
            border-top-color: inherit;
            border-top-width: medium;
            margin-top: 20px;
            font-size: 20px;
            
            
        }
        #submit {
            background-color: #000000;
            border: none;
            border-radius:10px;
            color: white;
            padding: 10px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            cursor: pointer;
        }
        #Button1,#button2 {
            border-radius: 12px;
            background-color: black;
            
        }
        
        #txt7birthday {
            margin-left: 10px;
        }
        .auto-style1 {
            width: 471px;
            height: 407px;
        }
        .auto-style4 {
            width: 446px;
        }
        .auto-style5 {
            height: 62px;
            text-align: left;
            width: 446px;
        }
        .auto-style7 {
            text-align: left;
            height: 61px;
            width: 446px;
        }
        .auto-style11 {
            text-align: left;
            height: 27px;
            width: 446px;
        }
        .auto-style17 {
            text-align: left;
            height: 14px;
            width: 446px;
        }
        form {
            background-color: #ffe2ce;
            margin-left: 450px; 
            margin-top: 20px;
            width: 900px;
            height: 400px;
            border-radius: 15px;
        }

        .auto-style19 {
            width: 584px;
            height: 494px;
        }
        
        
        .auto-style20 {
            height: 44px;
            width: 446px;
            text-align: left;
        }
        .auto-style22 {
            text-align: left;
            height: 52px;
            width: 446px;
        }
        .auto-style24 {
            text-align: left;
            height: 24px;
            width: 446px;
        }
        h1 {
            margin-left: 660px;
            margin-top: 50px;
            font-family:'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
        }  
        
        #Button2 {
            border-radius: 12px;
            background-color: black;
            
        }
     
        .auto-style25 {
            text-align: center;
        }
     
    </style>
</head>
<body >
    <h1>Sign UP</h1>
    <form id="form1" runat="server" class="auto-style19" >
        <div>
            <table class="auto-style1" align="center" >
                <tbody class="auto-style25">
                <tr>
                    <td class="auto-style11">
                        <asp:TextBox ID="txt1fname" runat="server" CssClass="txtboxes" Height="19px" OnTextChanged="txt1fname_TextChanged" Width="210px" placeholder="First name"></asp:TextBox>
                        <asp:TextBox ID="txt2lname" runat="server" CssClass="txtboxes" OnTextChanged="txt1fname_TextChanged" Width="210px" placeholder="Last name" Height="27px"></asp:TextBox>
                    </td>
                
                </tr>
                <tr>
                    <td class="auto-style7">
                        <asp:TextBox ID="txt3username" runat="server" CssClass="txtboxes" OnTextChanged="txt1fname_TextChanged" Width="213px" placeholder="Username"></asp:TextBox>
                        <asp:TextBox ID="txt4email" runat="server" CssClass="txtboxes" OnTextChanged="txt1fname_TextChanged" Width="214px" TextMode="Email" placeholder="Email"></asp:TextBox>
                    </td>
                    
                </tr>
                <tr>
                    <td class="auto-style17">
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server" Height="25px" Font-Size="Large" RepeatDirection="Horizontal">
                            <asp:ListItem>Male</asp:ListItem><asp:ListItem>Female</asp:ListItem>
                        </asp:RadioButtonList>
                        </td>
               
                </tr>
                <tr>
                    <td class="auto-style20">
                        <asp:TextBox ID="txt5password" runat="server" CssClass="txtboxes" OnTextChanged="txt1fname_TextChanged" TextMode="Password" Width="240px" placeholder="Password"></asp:TextBox>
                        
                        <asp:CheckBox ID="CheckBox1" runat="server" onclick="showPassword(1)" Text="Show" />
                        
                    </td>
       
                </tr>
                <tr>
                    <td class="auto-style22">
                        
                        <asp:TextBox ID="txt6repassword" runat="server" CssClass="txtboxes" OnTextChanged="txt1fname_TextChanged" style="margin-top: 0px" TextMode="Password" Width="238px" placeholder="Retype-Password"></asp:TextBox>
                        
                        <asp:CheckBox ID="CheckBox2" runat="server" onclick="showPassword(2)" Text="Show" />
                        
                    </td>
            
                </tr>
                <tr>
                    <td class="auto-style24">
                        <asp:Label ID="Label1" runat="server" Text="Birthday:" Font-Bold="True" Font-Size="Large" ></asp:Label>
                        <asp:TextBox ID="txt7birthday" runat="server" CssClass="txtboxes" TextMode="Date" Width="232px" ></asp:TextBox>
                    </td>
                  
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:Label ID="Label2" runat="server" Text="Upload photo" Font-Bold="True" Font-Size="Large" ></asp:Label>
                        <asp:FileUpload ID="FileUpload1" runat="server" BackColor="#FFE2CE" /> 
                    </td>
                    
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:RadioButtonList ID="RadioButtonList2" runat="server" Height="25px" Font-Size="Large" RepeatDirection="Horizontal">
                            <asp:ListItem>Broker</asp:ListItem><asp:ListItem>client</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Button ID="submit" runat="server" Text="Sign up" Width="437px" />
                    </td>
                   
                </tr>
            </table>
        </div>
    </form>
    <script>
        function showPassword(id) {
            
            var x;
            var y;
            if (id == 1) {
                x = document.getElementById("txt5password");
                y = document.getElementById("CheckBox1");
            }
            else if (id == 2) {
                x = document.getElementById("txt6repassword");
            }
            if (x.type == "password") {
                x.type = "text";
            }
            else {
                x.type = "password";
                
            }
            
        }
    </script>
</body>
</html>
