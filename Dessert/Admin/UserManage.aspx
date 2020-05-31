<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="UserManage.aspx.cs" Inherits="Dessert.Admin.UserManage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Users] WHERE [UserId] = @UserId" InsertCommand="INSERT INTO [Users] ([UserName], [UserTel], [UserGender], [UserEmail], [UserCard], [UserTime]) VALUES (@UserName, @UserTel, @UserGender, @UserEmail, @UserCard, @UserTime)" SelectCommand="SELECT [UserId], [UserName], [UserTel], [UserGender], [UserEmail], [UserCard], [UserTime] FROM [Users] ORDER BY [UserTime]" UpdateCommand="UPDATE [Users] SET [UserName] = @UserName, [UserTel] = @UserTel, [UserGender] = @UserGender, [UserEmail] = @UserEmail, [UserCard] = @UserCard, [UserTime] = @UserTime WHERE [UserId] = @UserId">
        <DeleteParameters>
            <asp:Parameter Name="UserId" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="UserName" Type="String" />
            <asp:Parameter Name="UserTel" Type="String" />
            <asp:Parameter Name="UserGender" Type="String" />
            <asp:Parameter Name="UserEmail" Type="String" />
            <asp:Parameter Name="UserCard" Type="String" />
            <asp:Parameter Name="UserTime" Type="DateTime" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="UserName" Type="String" />
            <asp:Parameter Name="UserTel" Type="String" />
            <asp:Parameter Name="UserGender" Type="String" />
            <asp:Parameter Name="UserEmail" Type="String" />
            <asp:Parameter Name="UserCard" Type="String" />
            <asp:Parameter Name="UserTime" Type="DateTime" />
            <asp:Parameter Name="UserId" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="UserId" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" Height="466px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged2" Width="1372px">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="UserId" HeaderText="序号" InsertVisible="False" ReadOnly="True" SortExpression="UserId" />
            <asp:BoundField DataField="UserName" HeaderText="用户名" SortExpression="UserName" />
            <asp:BoundField DataField="UserTel" HeaderText="用户电话" SortExpression="UserTel" />
            <asp:BoundField DataField="UserGender" HeaderText="用户性别" SortExpression="UserGender" />
            <asp:BoundField DataField="UserEmail" HeaderText="用户邮箱" SortExpression="UserEmail" />
            <asp:BoundField DataField="UserCard" HeaderText="用户身份证号" SortExpression="UserCard" />
            <asp:BoundField DataField="UserTime" HeaderText="注册时间" SortExpression="UserTime" />
        </Columns>
        <FooterStyle BackColor="#CCCC99" />
        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
        <RowStyle BackColor="#F7F7DE" />
        <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FBFBF2" />
        <SortedAscendingHeaderStyle BackColor="#848384" />
        <SortedDescendingCellStyle BackColor="#EAEAD3" />
        <SortedDescendingHeaderStyle BackColor="#575357" />
</asp:GridView>
    <style>
.gridView {
        font-weight: 200px;
        font-size: 14px;
        color: black;
    }
    .gridView:hover{
        color:black;
    }
    </style>
<br />

</asp:Content>
