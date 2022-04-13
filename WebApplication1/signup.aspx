<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="WebApplication1.signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        html{
           min-height: 100%;
            

        }
        .txtboxes {
            border-radius: 2px;
            padding:10px 10px;
            border-color: #ebebeb;
            border-style: solid;
            
            
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
        form {
            background-color: white;
            margin-left: auto; 
            margin-right: auto;
            margin-top: 20px;
            width: 900px;
            height: 400px;
            border-radius: 2px;
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
     
        body {
            background-image: url("photos/1.png");
            height: 100%;
            background-position: center;
            background-repeat: no-repeat;
            background-size: cover;
        }
     
        .auto-style1 {
            width: 100%;
        }
     
    </style>
</head>
<body >
    <form id="form1" runat="server">
    <div id="bg">

        <table class="auto-style1">
            <tr>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>

     </div>
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
    </form>
</body>
</html>
