<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm18.aspx.cs" Inherits="prediction__system.WebForm18" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
       CssClass{
           background-color:aqua;
       }
        .auto-style1 {
            text-align: center;
        }
    </style>
    <br />
   <nav class="container, text-left" style="font-size:30px; background-color:aqua;border-radius: 10px;">
           <asp:Label ID="Label1" runat="server" Text="--USER'S FEEDBACK--" style="margin-left: 530px;"  ></asp:Label> 
            </nav>
    <br />
        <div>        
    <asp:GridView ID="GridView1" runat="server" style="width:100%; color:white;font-size:25px; border: 5px solid none; border-block-color:aqua; position:center;-moz-border-radius: 15px;border-radius: 15px;"  AutoGenerateColumns="False"   >
        <Columns>
            <asp:TemplateField HeaderText="ALL THE FEEDBACKS OF THE USER'S ARE DISPLAYED HERE....!!!!">
                <ItemTemplate>
                    <nav class="container, text-left" style="font-size:25px; background-color:darkred;">
           <asp:Label ID="Label3" runat="server" Text='<%# Eval("Name")+ " &nbsp;:- " + Eval("Feedback") %>'   ></asp:Label> 
            </nav>
   
                        </ItemTemplate>
                <HeaderStyle ForeColor="#009900" />
                <ItemStyle HorizontalAlign="Left" />
            </asp:TemplateField>
            </Columns>
        <HeaderStyle BorderStyle="None" />
        </asp:GridView>
        </div>
</asp:Content>
