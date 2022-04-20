<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="WebApplication1.signup" %>
<%@ import Namespace="System.Data.SqlClient" %>
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
        
     
        
        
     
    </style>
    <script  runat ="server">

        protected void submit_Click(Object sender, EventArgs e){
            // create connection Object and connection string
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|Database1.mdf;Integrated Security=True";



            // craete sql statement
            String insert = String.Format("INSERT INTO MEMBER VALUES('{0}','{1}','{2}','{3}','{4}','{5}','{6}','{7}')",txt1fname.Text, txt2lname.Text , txt3username.Text , txt4email.Text, gender.SelectedValue, txt5password.Text, txt7birthday.Text, portal.SelectedValue);
            SqlCommand cmdInsert = new SqlCommand(insert,conn);

            // open database command
            conn.Open();
            // execute sql command
            cmdInsert.ExecuteNonQuery();
            // close database
            conn.Close();

            result_label.Text = "Account has been created successfully";
        }

    </script>
</head>
<body >
    <div id="bg">
    <h1>Sign UP</h1>
    <form id="form1" runat="server" class="auto-style19" >
        <div>
            <table >
                <tbody>

                <tr >
                    <td style="background-color:#0C1D2C;" >
                        <asp:Label ID="Label3" runat="server" Text="First name: " CssClass="labels"></asp:Label>
                    </td>
                    <td >
                        <asp:TextBox ID="txt1fname" runat="server" CssClass="auto-style1"  OnTextChanged="txt1fname_TextChanged"  placeholder="First name" Width="480" ></asp:TextBox>
                       
                    </td>
                    <td >
                        <asp:RequiredFieldValidator ID="FnameValidator" runat="server" ControlToValidate="txt1fname" ErrorMessage="*Required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                
                    <td >
                        <asp:RegularExpressionValidator ID="FnameRegValidator" runat="server" ControlToValidate="txt1fname" ErrorMessage="Input alphabets  only" ForeColor="Red" ValidationExpression="^[a-zA-Z]+$"></asp:RegularExpressionValidator>
                    </td>
                
                </tr>
                <tr>
                    <td style="background-color:#0C1D2C;">
                       <asp:Label ID="Label4" runat="server" Text="Last name: " CssClass="labels"></asp:Label></td>
                    <td >
                        <asp:TextBox ID="txt2lname" runat="server" CssClass="auto-style1" OnTextChanged="txt1fname_TextChanged" placeholder="Last name" Width="480"  ></asp:TextBox>
                    </td>
                    <td >
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt2lname" ErrorMessage="*Required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                
                    <td >
                        <asp:RegularExpressionValidator ID="LnameRegValidator" runat="server" ControlToValidate="txt2lname" ErrorMessage="Input alphabets  only" ForeColor="Red" ValidationExpression="^[a-zA-Z]+$"></asp:RegularExpressionValidator>
                    </td>
                
                </tr>
                <tr>
                    <td style="background-color:#0C1D2C;" >
                        <asp:Label ID="Label5" runat="server" Text="Username: " CssClass="labels"></asp:Label></td>
                    
                    <td >
                        <asp:TextBox ID="txt3username" runat="server" CssClass="auto-style1" OnTextChanged="txt1fname_TextChanged" placeholder="Username" Width="480" ></asp:TextBox>
                    </td>
                    
                    <td >
                        <asp:RequiredFieldValidator ID="UsernameValidator" runat="server" ControlToValidate="txt3username" ErrorMessage="*Required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    
                    <td >
                        <asp:RegularExpressionValidator ID="UsernameRegValidator" runat="server" ControlToValidate="txt3username" ErrorMessage="must start with alphapet" ForeColor="Red" ValidationExpression="^[A-Za-z][A-Za-z0-9_]{7,29}$"></asp:RegularExpressionValidator>
                    </td>
                    
                </tr>
                <tr>
                    <td style="background-color:#0C1D2C;">
                        <asp:Label ID="Label10" runat="server" Text="Email: " CssClass="labels"></asp:Label>
                    </td>
                    
                    <td >
                        <asp:TextBox ID="txt4email" runat="server" CssClass="txtboxes" OnTextChanged="txt1fname_TextChanged"  TextMode="Email" placeholder="Email" Width="480" ></asp:TextBox>
                    </td>
                    
                    <td >
                        <asp:RequiredFieldValidator ID="MailValidator" runat="server" ControlToValidate="txt4email" ErrorMessage="*Required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    
                    <td >
                        <asp:RegularExpressionValidator ID="MailRegValidator" runat="server" ControlToValidate="txt4email" ErrorMessage="Not valid" ForeColor="Red" ValidationExpression="^\w+@[a-zA-Z_]+?\.[a-zA-Z]{2,3}$"></asp:RegularExpressionValidator>
                    </td>
                    
                </tr>
                <tr>
                    <td class="auto-style3" style="background-color:#0C1D2C;">
                        <asp:Label ID="Label6" runat="server" Text="Gender: " CssClass="labels"></asp:Label>
                        </td>
               
                    <td class="auto-style3" >
                        <asp:RadioButtonList ID="gender" runat="server" CssClass="auto-style2" RepeatDirection="Horizontal" Width="176px">
                            <asp:ListItem>Male</asp:ListItem><asp:ListItem>Female</asp:ListItem>
                        </asp:RadioButtonList>
                        </td>
               
                    <td >
                        <asp:RequiredFieldValidator ID="GenderValidator" runat="server" ControlToValidate="gender" ErrorMessage="*Required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
               
                    <td >
                        &nbsp;</td>
               
                </tr>
                <tr>
                    <td style="background-color:#0C1D2C;">
                        <asp:Label ID="Label7" runat="server" Text="Password: " CssClass="labels"></asp:Label>
                        
                    </td>
       
                    <td >
                        <asp:TextBox ID="txt5password" runat="server" CssClass="txtboxes" OnTextChanged="txt1fname_TextChanged" TextMode="Password"  placeholder="Password" Width="480" ></asp:TextBox>
                        
                        <asp:CheckBox ID="CheckBox1" runat="server" onclick="showPassword(1)" Text="Show" />
                        
                    </td>
       
                    <td >
                        <asp:RequiredFieldValidator ID="PasswordValidator" runat="server" ControlToValidate="txt5password" ErrorMessage="*Required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
       
                    <td >
                        <asp:RegularExpressionValidator ID="PasswordRegValidator" runat="server" ControlToValidate="txt5password" ErrorMessage="Not valid" ForeColor="White" ValidationExpression="^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[a-zA-Z]).{8,}$"></asp:RegularExpressionValidator>
                    </td>
       
                </tr>
                <tr>
                    <td style="background-color:#0C1D2C;">
                        
                        <asp:Label ID="Label8" runat="server" Text="Re-type Password: " CssClass="labels"></asp:Label>
                        
                    </td>
            
                    <td >
                        
                        <asp:TextBox ID="txt6repassword" runat="server" CssClass="txtboxes" OnTextChanged="txt1fname_TextChanged" TextMode="Password" placeholder="Confirm password" Width="480" ></asp:TextBox>
                        
                        <asp:CheckBox ID="CheckBox2" runat="server" onclick="showPassword(2)" Text="Show" />
                        
                    </td>
            
                    <td >
                        
                        <asp:RequiredFieldValidator ID="RepasswordValidator" runat="server" ControlToValidate="txt6repassword" ErrorMessage="*Required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
            
                    <td >
                        
                        <asp:CompareValidator ID="RepasswordValidator1" runat="server" ControlToCompare="txt5password" ControlToValidate="txt6repassword" ErrorMessage="Not matching" ForeColor="Red"></asp:CompareValidator>
                    </td>
            
                </tr>
                <tr>
                    <td style="background-color:#0C1D2C;">
                        <asp:Label ID="Label1" runat="server" Text="Birthday:" CssClass="labels"></asp:Label>
                    </td>
                  
                    <td >
                        <asp:TextBox ID="txt7birthday" runat="server" CssClass="txtboxes" TextMode="Date" ></asp:TextBox>
                    </td>
                  
                    <td >
                        <asp:RequiredFieldValidator ID="BirthdayValidator" runat="server" ControlToValidate="txt7birthday" ErrorMessage="*Required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                  
                    <td >
                        &nbsp;</td>
                  
                </tr>
                <tr>
                    <td style="background-color:#0C1D2C;">
                        <asp:Label ID="Label2" runat="server" CssClass="labels">Upload photo</asp:Label>
                    </td>
                    
                    <td >
                        <asp:FileUpload ID="FileUpload1" runat="server" /> 
                    </td>
                    
                    <td >
                        &nbsp;</td>
                    
                    <td >
                        &nbsp;</td>
                    
                </tr>
                <tr>
                    <td class="auto-style4" style="background-color:#0C1D2C; padding:10px" >
                        <asp:Label ID="Label9" runat="server" CssClass="labels">Portal</asp:Label>
                    </td>
                    
                    <td class="auto-style4" >
                        <asp:RadioButtonList ID="portal" runat="server" RepeatDirection="Horizontal" >
                            <asp:ListItem Value="B">Broker</asp:ListItem><asp:ListItem Value="C">Client</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    
                    <td >
                        <asp:RequiredFieldValidator ID="PortalValidator" runat="server" ControlToValidate="portal" ErrorMessage="*Required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    
                    <td >
                        &nbsp;</td>
                    
                </tr>
                <tr>
                    <td >
                        &nbsp;</td>

                    <td >
                        <asp:Button ID="submit" runat="server" Text="Sign up" Width="480" OnClick="submit_Click" />
                    </td>

                </tr>
                <tr>
                    <td colspan="2" >
                        <asp:Label ID="result_label" runat="server"></asp:Label>
                    </td>

                </tr>
            </table>
        </div>
        
    </form>
        </div>
    <script>
        function showPassword(id) {
            
            var x;
            if (id == 1) {
                x = document.getElementById("txt5password");
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
