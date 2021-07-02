<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm12.aspx.cs" Inherits="prediction__system.WebForm12" %>
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
               <nav class="container, text-left" style="font-size:30px; background-color:red;border-radius: 10px;">
           <asp:Label ID="Label1" runat="server" Text="--Check Your Heart--" style="margin-left: 550px;"  ></asp:Label> 
            </nav>
               <p style="color:white;margin-left: 420px;font-size:30px;"> ** Kindly fill all the details given below** </p>
               <table class="auto-style2" style="margin:25px 0 0 25px; margin-left:330px;width: 50%;border: 2px solid white; padding: 10px;height: 500px; color:white; ">
                   <tr style="font-size:25px;  ">
                    <!--<td>User Name</td>-->
                    <td class="auto-style1"><asp:TextBox ID="TextBox1" runat="server" placeholder="Chest Pain Frequency" TextMode="SingleLine" BorderColor="Black" Height="40px" Width="350px" CssClass="auto-style2"  ></asp:TextBox></td>
                </tr>
                   
                <tr style="font-size:25px; height: 80px;">
                   
                    <td class="auto-style1"><asp:TextBox ID="TextBox8" runat="server" placeholder="Fasting Blood Sugar Level" TextMode="SingleLine" BorderColor="Black" Height="40px" Width="350px" CssClass="auto-style2"  ></asp:TextBox></td>
               </tr>
                <tr style="font-size:25px;height: 80px;">
                    
                    <td class="auto-style1"><asp:TextBox ID="TextBox2" runat="server" placeholder="Blood Pressure Level" TextMode="SingleLine" BorderColor="Black" Height="40px" Width="350px" CssClass="auto-style2" ></asp:TextBox></td>
               </tr>
                <tr style="font-size:25px;height: 80px;">
                    
                    <td class="auto-style1"><asp:TextBox ID="TextBox4" runat="server" placeholder="Cholestrol Level" TextMode="SingleLine" BorderColor="Black" Height="40px" Width="350px" CssClass="auto-style2"  ></asp:TextBox></td>
               </tr>
                <tr style="font-size:25px;height: 80px;">
                   
                    <td class="auto-style1"><asp:TextBox ID="TextBox5" runat="server" placeholder="Age" TextMode="SingleLine" BorderColor="Black" Height="40px" Width="350px" MaxLength="10" CssClass="auto-style2" ></asp:TextBox></td>
               </tr>
                   <tr style="font-size:25px;height: 80px;">
                   
                    <td class="auto-style1"><asp:TextBox ID="TextBox6" runat="server" placeholder="Pulse Rate" TextMode="SingleLine" BorderColor="Black" Height="40px" Width="350px" MaxLength="10" CssClass="auto-style2" ></asp:TextBox></td>
               </tr>
                   <tr >
                       
                   <td style="margin-left:600px;font-size:20px;">&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Short Breath Ever&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<asp:DropDownList ID="DropDownList1" runat="server" >
                       <asp:ListItem Value="0">No</asp:ListItem>
                       <asp:ListItem Value="1">Yes</asp:ListItem>
                       </asp:DropDownList></td>
                </tr>
                   
                <tr style="font-size:20px;">
                <td> &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Gender
                    <asp:RadioButton GroupName="user" ID="RadioButton4" runat="server" text="Male" Height="30px" Width="89px" CssClass="auto-style4" OnCheckedChanged="RadioButton4_CheckedChanged"  />
                        <asp:RadioButton GroupName="user" ID="RadioButton5" runat="server" text="Female" Height="30px" Width="200px" OnCheckedChanged="RadioButton5_CheckedChanged"  />
                       </td>
                    
                    
                    </tr>
                   
                   
                <tr>
                    
                     <td><asp:Button ID="Button1" runat="server" Text="CHECK" class="btn btn" Style="margin-top: 40px; margin-left: 10px; width: 100%; height: 40px; font-size:medium; color: black; background-color:grey; font-size:20px; border-radius: 12px; box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24), 0 17px 50px 0 rgba(0,0,0,0.19);" OnClick="Button1_Click"  />
           </td>
                </tr>
                   <tr>
                     <td><asp:Button ID="Button4" runat="server" Text="RESET" class="btn btn" Style="margin-top: 40px; margin-left: 10px; width: 100%; height: 40px; font-size:medium; color: black; background-color: grey; font-size:20px; border-radius: 12px; box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24), 0 17px 50px 0 rgba(0,0,0,0.19);" OnClick="Button4_Click"/>
           </td>
                </tr>
                <!--<asp:TextBox ID="TextBox3" runat="server" ReadOnly="False" style="background-color:white; color:Violet;">
</asp:TextBox>-->
                   <asp:Label ID="Label2" runat="server" Text="--YOUR RESULT--" style="padding:4px 7px 8px 4px; margin-left: 550px; background-color:red;border-radius: 10px;margin-left:900px; font-size:20px;"  ><asp:TextBox ID="TextBox10" runat="server" ReadOnly="True" style="background-color:white; color:black; height:21px;font-size:20px; "></asp:TextBox>
     </asp:Label> 
            
                   <asp:Button ID="Button2" runat="server" Text="CONTACT DOCTOR" class="btn btn" Style="padding:4px 4px 4px 4px; margin-left: 550px; background-color:gray;border-color:black; border-radius: 10px;margin-left:900px; font-size:15px; margin-top:10px;" OnClick="Button2_Click" />
            </table>
                
           </div>
            
                  
    
</asp:Content>
