<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="prediction__system.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
       
        .auto-style2 {
            top:50px;
            height: 308px;
            width: 506px;
            margin-top:10px 

        }
        .auto-style3 {
            height: 520px;
            width: 106%;
            position: absolute;
            top: 100px;
            left: 4px;
        }
        </style>
</head>
<body>
      <form id="form1" runat="server">
        <nav class="container, text-left" style="font-size:40px; background-color:white">
          <asp:Label ID="Label1" runat="server" Text="HEART PREDICTION SYSTEM"  ></asp:Label>
       <asp:Button ID="Button6" runat="server" Text="HOME" class="btn btn" Style="margin-top: 40px; margin-left: 1000px; width:78px; height: 70px; font-size:medium; color: black; background-color: cadetblue;font-size:20px;box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24), 0 17px 50px 0 rgba(0,0,0,0.19);" OnClick="Button6_Click"  />
            <asp:Button ID="Button7" runat="server" Text="LOGIN" class="btn btn" Style="margin-top: 40px; margin-left: 10px; width:78px; height: 70px; font-size:medium; color: black; background-color: cadetblue; font-size:20px;box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24), 0 17px 50px 0 rgba(0,0,0,0.19);" OnClick="Button7_Click"/>
            </nav>
          
          <div style="background-image: url('images/heart11.jpg'); background-repeat: no-repeat; background-size: 100% 100%;" class="auto-style3">
  
            <table class="auto-style2" style="margin:25px 0 0 25px; margin: auto;width: 50%;border: 13px double black; padding: 10px;height: 500px;">
                <tr style="font-size:25px;">
                    <td>User Name</td>
                    <td class="auto-style1"><asp:TextBox ID="TextBox1" runat="server" placeholder="enter your name" BorderColor="Black" Height="30px" Width="200"  ></asp:TextBox></td>
                </tr>
                <tr style="font-size:25px">
                    <td>Email Id</td>
                    <td class="auto-style1"><asp:TextBox ID="TextBox8" runat="server" placeholder="xyz@gmail.com" TextMode="Email" BorderColor="Black" Height="30px" Width="200" ></asp:TextBox></td>
               </tr>
                <tr style="font-size:25px">
                    <td>Password</td>
                    <td class="auto-style1"><asp:TextBox ID="TextBox2" runat="server" placeholder="password" TextMode="password" BorderColor="Black" Height="30px" Width="200px" ></asp:TextBox></td>
               </tr>
                <tr style="font-size:25px">
                    <td>Confirm Password</td>
                    <td class="auto-style1"><asp:TextBox ID="TextBox4" runat="server" placeholder="confirm password" TextMode="password" BorderColor="Black" Height="30px" Width="200px" ></asp:TextBox></td>
               </tr>
                <tr style="font-size:25px">
                    <td>Contact Number</td>
                    <td class="auto-style1"><asp:TextBox ID="TextBox5" runat="server" placeholder="987-254-14214" TextMode="number" BorderColor="Black" Height="30px" Width="200px" MaxLength="10" ></asp:TextBox></td>
               </tr>
                <tr style="font-size:25px">
                <td>USER</td>
                    <td class="auto-style1"><asp:RadioButton GroupName="user" ID="RadioButton4" runat="server" text="ADMIN" Height="30px" Width="200px" OnCheckedChanged="RadioButton4_CheckedChanged" /><br />
                        <asp:RadioButton GroupName="user" ID="RadioButton5" runat="server" text="PATIENT" Height="30px" Width="200px" OnCheckedChanged="RadioButton5_CheckedChanged"/>
                       </td>
                    </tr>
                <tr>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="SUBMIT" class="btn btn" Style="margin-top: 40px; margin-left: 10px; width:90px; height: 70px; font-size:medium; color: black; background-color: cadetblue; font-size:20px; border-radius: 12px; margin-left:190px; box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24), 0 17px 50px 0 rgba(0,0,0,0.19);" OnClick="Button1_Click"/>
           </td>
                    <td><asp:Button ID="Button4" runat="server" Text="RESET" class="btn btn" Style="margin-top: 40px; margin-left: 10px; width:90px; height: 70px; font-size:medium; color: black; background-color: cadetblue; font-size:20px; border-radius: 12px; box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24), 0 17px 50px 0 rgba(0,0,0,0.19);"/>
           </td>
                </tr>
                
                
            </table>
              </div>
    </form>
        
</body>
</html>
