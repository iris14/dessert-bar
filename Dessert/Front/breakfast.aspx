<%@ Page Title="" Language="C#" MasterPageFile="~/Front/Front.Master" AutoEventWireup="true" CodeBehind="breakfast.aspx.cs" Inherits="Dessert.Front.breakfast" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div>
        <div class="breakfast">
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [DessertCourse]"></asp:SqlDataSource>
            <p>
                <asp:Label ID="Label1" runat="server" Text="早餐" Font-Size="XX-Large" ForeColor="#33CC33"></asp:Label>
            </p>
            <div>
                <div align="center">
                    <p>
                    <asp:Label ID="Label2" runat="server" Text="☀美味" Font-Size="X-Large" ForeColor="#99CCFF"></asp:Label>
                </p>
                </div>
                <div>
                    <asp:DataList ID="DataList1" runat="server" CssClass="auto-style1" Height="77px" RepeatColumns="8" Width="1195px" BackColor="White" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False">
                        <ItemTemplate>
                        <br />
                         △
                            <asp:HyperLink ID="HyperLink1" runat="server" Font-Size="Medium" Text='<%# Eval("CourseTitle") %>'></asp:HyperLink>
                        <br />
                        <br />
                        <br />
                    </ItemTemplate>
                    </asp:DataList>
                </div>
            </div>

            <div>
                <div align="center">
                    <p>
                    <asp:Label ID="Label3" runat="server" Text="☀营养" Font-Size="X-Large" ForeColor="#99CCFF"></asp:Label>
                </p>
                </div>
                <div>
                    <asp:DataList ID="DataList2" runat="server" CssClass="auto-style1" Height="42px" RepeatColumns="8" Width="1195px" BackColor="White" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False">
                        <ItemTemplate>
                        <br />
                         △
                            <asp:HyperLink ID="HyperLink2" runat="server" Font-Size="Medium" Text='<%# Eval("CourseTitle") %>'></asp:HyperLink>
                        <br />
                        <br />
                        <br />
                    </ItemTemplate>
                    </asp:DataList>
                </div>
            </div>

            <div>
                <div align="center">
                    <p>
                    <asp:Label ID="Label4" runat="server" Text="☀零添加" Font-Size="X-Large" ForeColor="#99CCFF"></asp:Label>
                </p>
                </div>
                <div>
                    <asp:DataList ID="DataList3" runat="server" CssClass="auto-style1" Height="42px" RepeatColumns="8" Width="1195px" BackColor="White" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False">
                        <ItemTemplate>
                        <br />
                         △
                            <asp:HyperLink ID="HyperLink3" runat="server" Font-Size="Medium" Text='<%# Eval("CourseTitle") %>'></asp:HyperLink>
                        <br />
                        <br />
                        <br />
                    </ItemTemplate>
                    </asp:DataList>
                </div>
            </div>

            <div>
                <div align="center">
                    <p>
                    <asp:Label ID="Label5" runat="server" Text="☀好吃" Font-Size="X-Large" ForeColor="#99CCFF"></asp:Label>
                </p>
                </div>
                <div>
                    <asp:DataList ID="DataList4" runat="server" CssClass="auto-style1" Height="42px" RepeatColumns="8" Width="1195px" BackColor="White" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False">
                        <ItemTemplate>
                        <br />
                         △
                            <asp:HyperLink ID="HyperLink4" runat="server" Font-Size="Medium" Text='<%# Eval("CourseTitle") %>'></asp:HyperLink>
                        <br />
                        <br />
                        <br />
                    </ItemTemplate>
                    </asp:DataList>
                </div>
            </div>

            <div>
                <div align="center">
                    <p>
                    <asp:Label ID="Label6" runat="server" Text="☀饱腹" Font-Size="X-Large" ForeColor="#99CCFF"></asp:Label>
                </p>
                </div>
                <div>
                    <asp:DataList ID="DataList5" runat="server" CssClass="auto-style1" Height="42px" RepeatColumns="8" Width="1195px" BackColor="White" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False">
                        <ItemTemplate>
                        <br />
                         △
                            <asp:HyperLink ID="HyperLink5" runat="server" Font-Size="Medium" Text='<%# Eval("CourseTitle") %>'></asp:HyperLink>
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
