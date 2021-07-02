<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm6.aspx.cs" Inherits="prediction__system.WebForm6" %>
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
           <asp:Label ID="Label1" runat="server" Text="--Training Data--" style="margin-left: 530px;"  ></asp:Label> 
            </nav>
    <br />
        <nav class="container, text-left" style="font-size:30px; background-color:darkred;">

           <asp:Label ID="Label2" runat="server"   > <asp:Table ID="Table1" runat="server"></asp:Table>
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
    <asp:GridView ID="GridView1" runat="server" style="width:100%; color:white;font-size:20px; border: 5px solid white; position:center;-moz-border-radius: 15px;border-radius: 15px;" RowDataBound="GridView1_RowDataBound" DataKeyNames="DataID" AutoGenerateColumns="False" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" OnRowDeleting="GridView1_RowDeleting" >
        <Columns>
            <asp:TemplateField HeaderText="ID">
                <EditItemTemplate>
                    <asp:Label ID="Label11" runat="server" Text='<%# Eval("DataID") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("DataID") %>'></asp:Label>
                </ItemTemplate>
                <ItemStyle HorizontalAlign="Center" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="DISEASE NAME">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Eval("Disease") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("Disease") %>'></asp:Label>
                </ItemTemplate>
                <ItemStyle HorizontalAlign="Center" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="AGE">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Eval("Age") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("Age") %>'></asp:Label>
                </ItemTemplate>
                <ItemStyle HorizontalAlign="Center" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="GENDER">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Eval("Gender") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label6" runat="server" Text='<%# Eval("Gender") %>'></asp:Label>
                </ItemTemplate>
                <ItemStyle HorizontalAlign="Center" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="CHEST PAIN OCCURED">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Eval("ChestPain") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label7" runat="server" Text='<%# Eval("ChestPain") %>'></asp:Label>
                </ItemTemplate>
                <ItemStyle HorizontalAlign="Center" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="FASTING SUGAR LEVEL">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox5" runat="server" Text='<%# Eval("FastingSugarLevel") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label8" runat="server" Text='<%# Eval("FastingSugarLevel") %>'></asp:Label>
                </ItemTemplate>
                <ItemStyle HorizontalAlign="Center" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="BLOOD PRESSURE">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox6" runat="server" Text='<%# Eval("BP") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label9" runat="server" Text='<%# Eval("BP") %>'></asp:Label>
                </ItemTemplate>
                <ItemStyle HorizontalAlign="Center" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="CHOLESTROL">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox7" runat="server" Text='<%# Eval("Cholestrol") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label10" runat="server" Text='<%# Eval("Cholestrol") %>'></asp:Label>
                </ItemTemplate>
                <ItemStyle HorizontalAlign="Center" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="OPERATIONS">
                <EditItemTemplate>
                    <asp:Button ID="Button10" runat="server" CommandName="UPDATE" Text="UPDATE" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button11" runat="server" CommandName="CANCEL" Text="CANCEL" />
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Button ID="Button8" runat="server" CommandName="EDIT" Text="EDIT" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button9" runat="server" CommandName="DELETE" Text="DELETE" />
                </ItemTemplate>
                <ItemStyle HorizontalAlign="Center" />
            </asp:TemplateField>
        </Columns>
        <HeaderStyle CssClass="style3" />
    </asp:GridView>
   </div>

   
    
</asp:Content>
