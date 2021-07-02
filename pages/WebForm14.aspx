<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm14.aspx.cs" Inherits="prediction__system.WebForm14" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
   
       
    <nav class="container, text-left" style="font-size:30px; background-color:aqua;border-radius: 10px;">
           <asp:Label ID="Label1" runat="server" Text="--YOUR PREVIOUS HEART PREDICTIONS--" style="margin-left: 430px;"  ></asp:Label> 
            </nav>
    <br />
        <!--<nav class="container, text-left" style="font-size:30px; background-color:darkred;">

           <asp:Label ID="Label2" runat="server"   >
               <asp:Table ID="Table1" runat="server"></asp:Table>
               <table style="width:100%; border: 1px solid black;">
                   <tr style="border: 1px solid black;">
                       <th style="border: 1px solid black;">ID</th>
                       <th style="border: 1px solid black;" >Name</th>
                       <th style="border: 1px solid black;">Email</th>
                       <th style="border: 1px solid black;">Password</th>
                       <th style="border: 1px solid black;">Contact number</th>
                       
                   </tr>

                   

               </table>
           </asp:Label> 
            </nav>-->

    <div>        
    <asp:GridView ID="GridView2" runat="server"  style="width:100%; color:white;font-size:20px;border: 5px solid white; position:center;" AutoGenerateColumns="False">
        <Columns>
            <asp:TemplateField HeaderText="DISEASE DIAGNOSED">
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("DiseaseDiagnosed") %>'></asp:Label>
                </ItemTemplate>
                <ItemStyle HorizontalAlign="Center" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="DATE OF ANALYSIS">
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("Date") %>'></asp:Label>
                </ItemTemplate>
                <ItemStyle HorizontalAlign="Center" />
            </asp:TemplateField>
        </Columns>
     

    </asp:GridView>
   </div>

   
</asp:Content>
