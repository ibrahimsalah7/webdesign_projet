<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="WebApplication1.signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
       
        .txtboxes {
            border-radius: 2px;
            padding:10px 10px;
            border-color: #ebebeb;
            border-style: solid; 
            width:320px;
            
        }

        #submit {
            background-color: #0C1D2C;
            border: none;
            color: white;
            padding: 5px 20px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin: 4px 2px;
            cursor: pointer;
            width:200px;
            
        }
      
        h1 {
            margin-left: 660px;
            margin-top: 50px;
            font-family:'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
        }  

        body {
            background-image: url("photos/1.png");
            height: 100%;
            background-position: center;
            background-size: cover;
        }

        table {
            margin-right: auto;
            margin-left: auto;
            background-color: white;
            height: auto;
            border-radius: 10px;
        }

        .auto-style1 {
            border-radius: 2px;
            padding: 10px 10px;
            border-color: #ebebeb;
            border-style: solid;
        }

        .auto-style2 {
            float: left;
        }
        .auto-style3 {
            text-align: justify;
        }
        
        .auto-style4 {
            text-align: left;
        }

         .labels{
            color: white;
            padding: 8px;
            font-family: Arial;
            font-weight:bold;
        }
        
     
        
        
     
        .auto-style5 {
            width: 201px;
        }
        .auto-style6 {
            text-align: justify;
            width: 201px;
        }
        .auto-style7 {
            text-align: left;
            width: 201px;
        }
        
     
        
        
     
    </style>
    <script>
      
    </script>
</head>
<body >
    <div id="bg">
    <h1>Sign in</h1>
    <form id="form1" runat="server" class="auto-style19" >
        <div>
            <table >
                <tbody>
                <tr>
                    <td style="background-color:#0C1D2C;" class="auto-style5">
                        <asp:Label ID="Label10" runat="server" Text="Email: " CssClass="labels"></asp:Label>
                    </td>                    
                    <td >
                        <asp:TextBox ID="txt4email" runat="server" CssClass="txtboxes" OnTextChanged="txt1fname_TextChanged"  TextMode="Email" placeholder="Email" Width="480" ></asp:TextBox>
                    </td>                 
                    <td >
                        &nbsp;</td>  
                </tr>
               
                <tr>
                    <td style="background-color:#0C1D2C;" class="auto-style5">
                        <asp:Label ID="Label7" runat="server" Text="Password: " CssClass="labels"></asp:Label>           
                    </td>

                    <td >
                        <asp:TextBox ID="txt5password" runat="server" CssClass="txtboxes" OnTextChanged="txt1fname_TextChanged" TextMode="Password"  placeholder="Password" Width="480" ></asp:TextBox>
                        
                        <asp:CheckBox ID="CheckBox1" runat="server" onclick="showPassword(1)" Text="Show" />
                        
                    </td>
       
                    <td >
                        &nbsp;</td>
                </tr>
  
                <tr>
                    <td class="auto-style5" >
                        &nbsp;</td>

                    <td >
                        <asp:Button ID="submit" runat="server" Text="Sign in"  Width="480" />
                    </td>
                </tr>
                    <tr>
                    <td >
                        
                    </td>
                    <td>

                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/homePage.html" >Forget Password?</asp:HyperLink>

                    </td>
                </tr>
            </table>
        </div>
        
    </form>
        </div>
    
</body>
</html>
