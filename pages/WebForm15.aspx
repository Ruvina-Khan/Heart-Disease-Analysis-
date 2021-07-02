<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm15.aspx.cs" Inherits="prediction__system.WebForm15" %>
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
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <br />

     
        
           <div>
               <nav class="container, text-left" style="font-size:30px; background-color:red;border-radius: 10px;">
           <asp:Label ID="Label1" runat="server" Text="--GIVE YOUR FEEDBACK HERE..--" style="margin-left: 550px;"  ></asp:Label> 
            </nav>
                <table class="auto-style2" style="margin:25px 0 0 25px; margin-left:330px;width: 50%;border: 2px solid white; padding: 10px;height: 500px; color:white; ">
                   <tr style="font-size:25px;  ">
                    <!--<td>User Name</td>-->
                    <td class="auto-style1"><asp:TextBox ID="TextBox1" runat="server" placeholder="YOUR EMAIL" TextMode="email" BorderColor="Black" Height="40px" Width="350px" CssClass="auto-style2"   ></asp:TextBox></td>
                </tr>
                   
                <tr style="font-size:25px; height: 100px;">
                   
                    <td class="auto-style1"><asp:TextBox ID="TextBox8" runat="server" placeholder="ENTER YOUR FEEDBACK HERE..!!" TextMode="SingleLine" BorderColor="Black" Height="70px" Width="350px" CssClass="auto-style2"  ></asp:TextBox></td>
               </tr>
                     <td><asp:Button ID="Button1" runat="server" Text="SUBMIT" class="btn btn" Style="margin-top: 40px; margin-left: 10px; width: 100%; height: 40px; font-size:medium; color: black; background-color:grey; font-size:20px; border-radius: 12px; box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24), 0 17px 50px 0 rgba(0,0,0,0.19);" OnClick="Button1_Click"  />
          
                         </td>
                
                   <tr>
                     <td><asp:Button ID="Button4" runat="server" Text="RESET" class="btn btn" Style="margin-top: 40px; margin-left: 10px; width: 100%; height: 40px; font-size:medium; color: black; background-color: grey; font-size:20px; border-radius: 12px; box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24), 0 17px 50px 0 rgba(0,0,0,0.19);"/>
           </td>
                </tr>
                </table>
                
           </div>
            
                  
    
</asp:Content>
