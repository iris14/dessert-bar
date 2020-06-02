<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="UserArticle.aspx.cs" Inherits="Dessert.Admin.UserArticle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-lg-12 col-md-12 col-sm-12">
            <h2 class="text-center">查看用户文章</h2>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;
            <div class="row">
                <div style="margin:auto">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataKeyNames="CourseId" ForeColor="Black" GridLines="None" Height="29px" Width="1252px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1">
                        <AlternatingRowStyle BackColor="PaleGoldenrod" />
                        <Columns>
                            <asp:BoundField DataField="CourseId" HeaderText="序号" InsertVisible="False" ReadOnly="True" SortExpression="CourseId" />
                            <asp:BoundField DataField="LableTitle" HeaderText="所属标签" SortExpression="LableTitle" />
                            <asp:BoundField DataField="CourseTitle" HeaderText="教程名" SortExpression="CourseTitle" />
                            <asp:BoundField DataField="CourseTag" HeaderText="点赞数" SortExpression="CourseTag" />
                            <asp:BoundField DataField="CourseComment" HeaderText="评论数" SortExpression="CourseComment" />
                            <asp:BoundField DataField="CourseBrowse" HeaderText="浏览量" SortExpression="CourseBrowse" />
                            <asp:BoundField DataField="CourseCheck" HeaderText="审核是否通过" SortExpression="CourseCheck" />
                            <asp:TemplateField HeaderText="封面" SortExpression="CourseCover">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("CourseCover") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Eval("CourseCover","~/images/dessert/{0}") %>'>封面</asp:HyperLink>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="CourseTime" HeaderText="发布时间" SortExpression="CourseTime" />
                            <asp:TemplateField HeaderText="教程详情">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("CourseId") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%# Eval("CourseId","CourseDetail.aspx?CourseId={0}") %>'>文章详情</asp:HyperLink>
                                </ItemTemplate>
                            </asp:TemplateField>
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
                </div>
            </div>
             <br />
            <asp:Button Text="返回" runat="server" CssClass="btn btn-info" OnClick="Unnamed1_Click" />
        </div>
    </div>
</asp:Content>
