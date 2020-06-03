<%@ Page Title="" Language="C#" MasterPageFile="~/Front/Front.Master" AutoEventWireup="true" CodeBehind="dessertCourse.aspx.cs" Inherits="Dessert.Front.dessertCourse" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 240px;
            width: 562px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [DessertImage] WHERE ([CourseId] = @CourseId)">
        <SelectParameters>
            <asp:QueryStringParameter Name="CourseId" QueryStringField="CourseId" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>

    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [DessertCourse] WHERE ([CourseId] = @CourseId)">
        <SelectParameters>
            <asp:QueryStringParameter Name="CourseId" QueryStringField="CourseId" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>

    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [DessertFood] WHERE ([CourseId] = @CourseId)">
        <SelectParameters>
            <asp:QueryStringParameter Name="CourseId" QueryStringField="CourseId" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>

    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <div align="center">
        <asp:FormView ID="FormView1" runat="server" Height="25px" Width="401px">
            <ItemTemplate>
                <asp:Label ID="Label3" runat="server" Text='<%# Eval("CourseTitle") %>' Font-Size="XX-Large"></asp:Label>
            </ItemTemplate>
        </asp:FormView>
        <br />
        <asp:FormView ID="FormView2" runat="server" Height="65px" Width="799px">
            <ItemTemplate>
                <asp:Label ID="Label2" runat="server" Font-Size="Medium" Text="所需食材："></asp:Label>
                &nbsp;<asp:Label ID="FoodNameLabel" runat="server" Font-Size="Medium" Text='<%# Bind("FoodName") %>' />
                <br />

            </ItemTemplate>
        </asp:FormView>
        <br />
        <br />
        <br />
    </div>

    <div align="center">
        <asp:DataList ID="DataList1" runat="server" RepeatColumns="1" CellPadding="4" DataKeyField="CourseId" ForeColor="#333333" Height="773px" Width="802px">
        <AlternatingItemStyle BackColor="White" />
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <ItemStyle BackColor="#E3EAEB" />
        <ItemTemplate>
            <table class="auto-style1">
                <tr>
                    <td colspan="2">
                        <asp:Label ID="Label1" runat="server" Text="步骤：" Font-Size="X-Large"></asp:Label>
                        <asp:Label ID="DessertStepLabel" runat="server" Text='<%# Eval("DessertStep") %>' Font-Size="X-Large" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("ImageFile", "~/images/dessert/{0}") %>' BorderStyle="Double" Width="200px" />
                    </td>
                    <td style="text-align: left">
                        <asp:Label ID="CourseDetailLabel" runat="server" Text='<%# Eval("CourseDetail") %>' Font-Size="Large" />
                    </td>
                </tr>
            </table>
            <br />
            <br />
        </ItemTemplate>
        <SelectedItemStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
    </asp:DataList>

    <br />
    </div>
    

    </asp:Content>
