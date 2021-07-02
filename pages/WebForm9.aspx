<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm9.aspx.cs" Inherits="prediction__system.WebForm9" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            margin-left: 69px;
        }
        .auto-style2 {
            margin-left: 150px;
            border-radius:10px;
        }
        .auto-style4 {
            margin-left: 45px;
            border-radius: 10px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />

     
        
           <div>
               <nav class="container, text-left" style="font-size:30px; background-color:red;border-radius: 10px;margin-left: 330px;margin-right: 330px;">
           <asp:Label ID="Label1" runat="server" Text="--Add Doctor--" style="margin-left: 250px;"  ></asp:Label> 
            </nav>
               <table class="auto-style2" style="margin:25px 0 0 25px; margin: auto;width: 50%;border: 2px solid white; padding: 10px;height: 500px; color:white; ">
                   <tr style="font-size:25px;  ">
                    <!--<td>User Name</td>-->
                    <td class="auto-style1"><asp:TextBox ID="TextBox1" runat="server" placeholder="Doctor Name" TextMode="SingleLine" BorderColor="Black" Height="40px" Width="350px" CssClass="auto-style2"  ></asp:TextBox></td>
                </tr>
                   
                <tr style="font-size:25px; height: 80px;">
                   
                    <td class="auto-style1"><asp:TextBox ID="TextBox8" runat="server" placeholder="Address" TextMode="SingleLine" BorderColor="Black" Height="40px" Width="350px" CssClass="auto-style2"  ></asp:TextBox></td>
               </tr>
                <tr style="font-size:25px;height: 80px;">
                    
                    <td class="auto-style1"><asp:TextBox ID="TextBox2" runat="server" placeholder="Mobile Number" TextMode="SingleLine" BorderColor="Black" Height="40px" Width="350px" CssClass="auto-style2" MaxLength="10" ></asp:TextBox></td>
               </tr>
                <tr style="font-size:25px;height: 80px;">
                    
                    <td class="auto-style1"><asp:TextBox ID="TextBox4" runat="server" placeholder="Email ID " TextMode="Email" BorderColor="Black" Height="40px" Width="350px" CssClass="auto-style2"  ></asp:TextBox></td>
               </tr>
                <tr style="font-size:25px;height: 80px;">
                    
                    <td class="auto-style1"><asp:TextBox ID="TextBox3" runat="server" placeholder="Specialist " TextMode="SingleLine" BorderColor="Black" Height="40px" Width="350px" CssClass="auto-style2"  ></asp:TextBox></td>
               </tr>
                <tr style="font-size:20px;">
                <td> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Gender
                    <asp:RadioButton GroupName="user" ID="RadioButton4" runat="server" text="Male" Height="30px" Width="89px" CssClass="auto-style4" OnCheckedChanged="RadioButton4_CheckedChanged"  />
                        <asp:RadioButton GroupName="user" ID="RadioButton5" runat="server" text="Female" Height="30px" Width="200px" OnCheckedChanged="RadioButton5_CheckedChanged"  />
                       </td>
                    
                    
                    </tr>
                   
                <tr>
                     <td><asp:Button ID="Button1" runat="server" Text="SUBMIT" class="btn btn" Style="margin-top: 40px; margin-left: 10px; width: 100%; height: 40px; font-size:medium; color: black; background-color:grey; font-size:20px; border-radius: 12px; box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24), 0 17px 50px 0 rgba(0,0,0,0.19);" OnClick="Button1_Click" />
           </td>
                </tr>
                   <tr>
                     <td><asp:Button ID="Button4" runat="server" Text="RESET" class="btn btn" Style="margin-top: 40px; margin-left: 10px; width: 100%; height: 40px; font-size:medium; color: black; background-color: grey; font-size:20px; border-radius: 12px; box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24), 0 17px 50px 0 rgba(0,0,0,0.19);" OnClick="Button4_Click"/>
           </td>
                </tr>
                
                
            </table>
            
           </div>

</asp:Content>
