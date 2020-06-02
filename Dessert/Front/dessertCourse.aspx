<%@ Page Title="" Language="C#" MasterPageFile="~/Front/Front.Master" AutoEventWireup="true" CodeBehind="dessertCourse.aspx.cs" Inherits="Dessert.Front.dessertCourse" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 8px;
            width: 405px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [DessertImage] WHERE ([CourseId] = @CourseId)">
        <SelectParameters>
            <asp:QueryStringParameter Name="CourseId" QueryStringField="CourseId" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>

    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" RepeatColumns="1" CellPadding="4" DataKeyField="ImageId" ForeColor="#333333" Height="667px" Width="1183px">
        <AlternatingItemStyle BackColor="White" />
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <ItemStyle BackColor="#E3EAEB" />
        <ItemTemplate>
            <table class="auto-style1">
                <tr>
                    <td colspan="2">
                        <asp:Label ID="Label1" runat="server" Text="步骤："></asp:Label>
                        <asp:Label ID="DessertStepLabel" runat="server" Text='<%# Eval("DessertStep") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("ImageFile", "~/images/dessert/{0}") %>' />
                    </td>
                    <td>
                        <asp:Label ID="CourseDetailLabel" runat="server" Text='<%# Eval("CourseDetail") %>' />
                    </td>
                </tr>
            </table>
            <br />
            <br />
        </ItemTemplate>
        <SelectedItemStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
    </asp:DataList>

    <br />

    </asp:Content>
