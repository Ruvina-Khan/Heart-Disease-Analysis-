<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="prediction__system.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:prediction_systemConnectionString %>" SelectCommand="SELECT * FROM [Users]"></asp:SqlDataSource>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="P_id" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="P_id" HeaderText="P_id" InsertVisible="False" ReadOnly="True" SortExpression="P_id" />
                    <asp:BoundField DataField="P_name" HeaderText="P_name" SortExpression="P_name" />
                    <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                    <asp:BoundField DataField="password_" HeaderText="password_" SortExpression="password_" />
                    <asp:BoundField DataField="User_type" HeaderText="User_type" SortExpression="User_type" />
                    <asp:BoundField DataField="contact number" HeaderText="contact number" SortExpression="contact number" />
                </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>
