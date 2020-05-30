<%@ Page Title="" Language="C#" MasterPageFile="~/Front/Front.Master" AutoEventWireup="true" CodeBehind="breakfast.aspx.cs" Inherits="Dessert.Front.breakfast" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div>
        <div class="breakfast">
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [DessertCourse]"></asp:SqlDataSource>
            <p>
                <asp:Label ID="Label1" runat="server" Text="早餐"></asp:Label>
            </p>
            <div>
                <p>
                    <asp:Label ID="Label2" runat="server" Text="美味"></asp:Label>
                </p>
                <div>
                    <asp:DataList ID="DataList1" runat="server" CssClass="auto-style1" Height="42px" RepeatColumns="8" Width="1195px">
                        <ItemTemplate>
                        <br />
                         △
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("CourseTitle") %>'></asp:Label>
                        <br />
                        <br />
                        <br />
                    </ItemTemplate>
                    </asp:DataList>
                </div>
            </div>

            <div>
                <p>
                    <asp:Label ID="Label4" runat="server" Text="营养"></asp:Label>
                </p>
                <div>
                    <asp:DataList ID="DataList2" runat="server" CssClass="auto-style1" Height="42px" RepeatColumns="8" Width="1195px">
                        <ItemTemplate>
                        <br />
                         △
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("CourseTitle") %>'></asp:Label>
                        <br />
                        <br />
                        <br />
                    </ItemTemplate>
                    </asp:DataList>
                </div>
            </div>

            <div>
                <p>
                    <asp:Label ID="Label5" runat="server" Text="零添加"></asp:Label>
                </p>
                <div>
                    <asp:DataList ID="DataList3" runat="server" CssClass="auto-style1" Height="42px" RepeatColumns="8" Width="1195px">
                        <ItemTemplate>
                        <br />
                         △
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("CourseTitle") %>'></asp:Label>
                        <br />
                        <br />
                        <br />
                    </ItemTemplate>
                    </asp:DataList>
                </div>
            </div>

            <div>
                <p>
                    <asp:Label ID="Label6" runat="server" Text="养生"></asp:Label>
                </p>
                <div>
                    <asp:DataList ID="DataList4" runat="server" CssClass="auto-style1" Height="42px" RepeatColumns="8" Width="1195px">
                        <ItemTemplate>
                        <br />
                         △
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("CourseTitle") %>'></asp:Label>
                        <br />
                        <br />
                        <br />
                    </ItemTemplate>
                    </asp:DataList>
                </div>
            </div>

            <div>
                <p>
                    <asp:Label ID="Label7" runat="server" Text="饱腹"></asp:Label>
                </p>
                <div>
                    <asp:DataList ID="DataList5" runat="server" CssClass="auto-style1" Height="42px" RepeatColumns="8" Width="1195px">
                        <ItemTemplate>
                        <br />
                         △
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("CourseTitle") %>'></asp:Label>
                        <br />
                        <br />
                        <br />
                    </ItemTemplate>
                    </asp:DataList>
                </div>
            </div>


        </div>
    </div>

</asp:Content>
