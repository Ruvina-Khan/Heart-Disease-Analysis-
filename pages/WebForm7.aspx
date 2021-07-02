<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm7.aspx.cs" Inherits="prediction__system.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
   
       
    <nav class="container, text-left" style="font-size:30px; background-color:aqua;border-radius: 10px;">
           <asp:Label ID="Label1" runat="server" Text="--User's Details--" style="margin-left: 530px;"  ></asp:Label> 
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

    <div class="auto-style1">        
    <asp:GridView ID="GridView2" runat="server"  style="width:100%; color:white;font-size:20px;border: 5px solid white; position:center;" AutoGenerateColumns="False" OnRowCancelingEdit="GridView2_RowCancelingEdit" OnRowEditing="GridView2_RowEditing" OnRowUpdating="GridView2_RowUpdating" OnRowDeleting="GridView2_RowDeleting">
        <Columns>
            <asp:TemplateField HeaderText="PATIENT ID">
                <EditItemTemplate>
                    <asp:Label ID="Label7" runat="server" Text='<%# Eval("P_id") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("P_id") %>'></asp:Label>
                </ItemTemplate>
                <ItemStyle HorizontalAlign="Center" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="PATIENT NAME">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Eval("P_name") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("P_name") %>'></asp:Label>
                </ItemTemplate>
                <ItemStyle HorizontalAlign="Center" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="EMAIL ">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Eval("email") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("email") %>'></asp:Label>
                </ItemTemplate>
                <ItemStyle HorizontalAlign="Center" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="CONTACT NO.">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Eval("contact_number") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label6" runat="server" Text='<%# Eval("contact_number") %>'></asp:Label>
                </ItemTemplate>
                <ItemStyle HorizontalAlign="Center" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="OPERATION">
                <EditItemTemplate>
                    <div class="auto-style2">
                        <asp:Button ID="Button10" runat="server" CommandName="UPDATE" Text="UPDATE" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button11" runat="server" CommandName="CANCEL" Text="CANCEL" />
                    </div>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Button ID="Button8" runat="server" CommandName="EDIT" Text="EDIT" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button9" runat="server" CommandName="DELETE" Text="DELETE" />
                </ItemTemplate>
                <ItemStyle HorizontalAlign="Center" />
            </asp:TemplateField>
        </Columns>
     

    </asp:GridView>
   </div>

   
    
</asp:Content>
