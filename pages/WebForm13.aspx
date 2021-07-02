<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm13.aspx.cs" Inherits="prediction__system.WebForm13" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
       CssClass{
           background-color:aqua;
       }
    </style>
    <br />
   
   
       
    <nav class="container, text-left" style="font-size:30px; background-color:aqua;border-radius: 10px;">
           <asp:Label ID="Label1" runat="server" Text="--Consult These Doctors--" style="margin-left: 530px;"  ></asp:Label> 
            </nav>
    <br />
        <nav class="container, text-left" style="font-size:30px; background-color:darkred;">

           <asp:Label ID="Label2" runat="server"   >
               <asp:Table ID="Table1" runat="server"></asp:Table>
               <!--<table style="width:100%; border: 1px solid black;">
                   <tr style="border: 1px solid black;">
                       <th style="border: 1px solid black; margin-left: 10%;">Disease</th>
                       <th style="border: 1px solid black;" >Age</th>
                       <th style="border: 1px solid black;">Gender</th>
                       <th style="border: 1px solid black;">Pain</th>
                       <th style="border: 1px solid black;">Sugar Level</th>
                       <th style="border: 1px solid black;">BP</th>
                       <th style="border: 1px solid black;">Cholestrol</th>
                       <th style="border: 1px solid black;">Chest Pain</th>
                   </tr>

                   

               </table>-->
           </asp:Label> 
            </nav>

    <div>        
    <asp:GridView ID="GridView1" runat="server" style="width:100%; color:white;font-size:20px; border: 5px solid white; position:center;-moz-border-radius: 15px;border-radius: 15px;" RowDataBound="GridView1_RowDataBound" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" >
        <HeaderStyle CssClass="style3" />
    </asp:GridView>
   </div>

   
</asp:Content>
