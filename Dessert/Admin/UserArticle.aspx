<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="UserArticle.aspx.cs" Inherits="Dessert.Admin.UserArticle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="col-lg-12 col-md-12 col-sm-12">
        <h3 class="text-center">查看用户文章</h3>
    
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataKeyNames="CourseId" ForeColor="Black" GridLines="None" Height="232px" Width="1383px">
        <AlternatingRowStyle BackColor="PaleGoldenrod" />
        <Columns>
            <asp:BoundField DataField="CourseId" HeaderText="CourseId" InsertVisible="False" ReadOnly="True" SortExpression="CourseId" />
            <asp:BoundField DataField="CourseTitle" HeaderText="CourseTitle" SortExpression="CourseTitle" />
            <asp:BoundField DataField="CourseTag" HeaderText="CourseTag" SortExpression="CourseTag" />
            <asp:BoundField DataField="CourseComment" HeaderText="CourseComment" SortExpression="CourseComment" />
            <asp:BoundField DataField="CourseCover" HeaderText="CourseCover" SortExpression="CourseCover" />
            <asp:BoundField DataField="CourseBrowse" HeaderText="CourseBrowse" SortExpression="CourseBrowse" />
            <asp:BoundField DataField="CourseCheck" HeaderText="CourseCheck" SortExpression="CourseCheck" />
            <asp:BoundField DataField="LableTitle" HeaderText="LableTitle" SortExpression="LableTitle" />
            <asp:BoundField DataField="CourseTime" HeaderText="CourseTime" SortExpression="CourseTime" />
        </Columns>
        <FooterStyle BackColor="Tan" />
        <HeaderStyle BackColor="Tan" Font-Bold="True" />
        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
        <SortedAscendingCellStyle BackColor="#FAFAE7" />
        <SortedAscendingHeaderStyle BackColor="#DAC09E" />
        <SortedDescendingCellStyle BackColor="#E1DB9C" />
        <SortedDescendingHeaderStyle BackColor="#C2A47B" />
    </asp:GridView>
    <br />
        <asp:Button Text="返回" runat="server" CssClass="btn btn-info" OnClick="Unnamed1_Click" />
        </div>
</asp:Content>
