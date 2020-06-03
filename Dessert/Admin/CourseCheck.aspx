<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="CourseCheck.aspx.cs" Inherits="Dessert.Admin.CourseCheck" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            margin-bottom: 0;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server">
        <asp:Label ID="Label1" runat="server" Text="标题："></asp:Label>
        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
        <br />
        <asp:Label ID="Label3" runat="server" Text="食材："></asp:Label>
        <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
        <br />
        <asp:Label ID="Label5" runat="server" Text="作者："></asp:Label>
        <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
        <br />
        <asp:Label ID="Label7" runat="server" Text="分类"></asp:Label>
        <asp:DropDownList ID="DropDownList1" runat="server">
        </asp:DropDownList>
        <br />
        <asp:Label ID="Label8" runat="server" Text="标签："></asp:Label>
        <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label>
        <asp:Label ID="Label10" runat="server" Text="Label"></asp:Label>
        <br />
        <asp:Label ID="Label11" runat="server" Text="热量填写："></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style5"></asp:TextBox>
        <br />
        <asp:HyperLink ID="HyperLink1" runat="server">详细教程</asp:HyperLink>
        <br />
        <asp:Label ID="Label12" runat="server" Text="是否通过审核："></asp:Label>
        <asp:RadioButton ID="Checked1" runat="server" />
        <asp:RadioButton ID="Unchecked1" runat="server" />
        <br />
        <asp:Label ID="Label13" runat="server" Text="是否设为精品："></asp:Label>
        <asp:RadioButton ID="Quatity1" runat="server" />
        <br />
        <asp:Button ID="Button1" runat="server" Text="审核完成" />
    </asp:Panel>
    <br />
    <br />
    <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
    <br />
</asp:Content>
