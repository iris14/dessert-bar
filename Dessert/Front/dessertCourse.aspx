<%@ Page Title="" Language="C#" MasterPageFile="~/Front/Front.Master" AutoEventWireup="true" CodeBehind="dessertCourse.aspx.cs" Inherits="Dessert.Front.dessertCourse" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [DessertImage] WHERE ([CourseId] = @CourseId)">
        <SelectParameters>
            <asp:QueryStringParameter Name="CourseId" QueryStringField="CourseId" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>

    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" RepeatColumns="8"></asp:DataList>

    <br />

    </asp:Content>
