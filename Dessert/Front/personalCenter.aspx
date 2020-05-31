<%@ Page Title="" Language="C#" MasterPageFile="~/Front/Front.Master" AutoEventWireup="true" CodeBehind="personalCenter.aspx.cs" Inherits="Dessert.Front.WebForm6" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 104px;
        }

        .title {
            color: #666;
            font-size: 22px;
        }
        .personContent{
            background:#fff;
            padding: 50px;
        }
        .trHeight{
            height:30px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <div>
            <span class="title">☀我的甜品教程</span>
            <hr />
            
        </div>
        <div class="personContent">
            <asp:Label ID="Label1" runat="server"></asp:Label>
            <asp:DataList ID="DataList1" runat="server" DataKeyField="CourseId" RepeatColumns="4">
                <ItemTemplate>
                    <table class="nav-justified">
                        <tr>
                            <td colspan="3" style="text-align: center">
                                <asp:ImageButton ID="ImageButton1" runat="server" Height="200px" Width="250px" ImageUrl='<%# Eval("CourseCover", "~/images/dessert/{0}") %>' />
                            </td>
                        </tr>
                        <tr class="trHeight">
                            <td class="auto-style1">★<asp:Label ID="CourseTitleLabel" runat="server" Text='<%# Eval("CourseTitle") %>' />
                                </td>
                            <td colspan="2">☽发布时间：<asp:Label ID="CourseTimeLabel" runat="server" Text='<%# Eval("CourseTime") %>' />
                            </td>
                            <td>审核状态：<asp:Label ID="Label2" runat="server" Text='<%# Eval("CourseCheck") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr class="trHeight">
                            <td colspan="3" style="text-align: right">浏览（<asp:Label ID="CourseBrowseLabel" runat="server" Text='<%# Eval("CourseBrowse") %>' />
                                ） | 点赞♥（<asp:Label ID="CourseTagLabel" runat="server" Text='<%# Eval("CourseTag") %>' />
                                ） | 评论（<asp:Label ID="CourseCommentLabel" runat="server" Text='<%# Eval("CourseComment") %>' />
                                ）</td>
                        </tr>
                        <tr>
                            <td class="auto-style1">
                                <asp:Button ID="Button1" runat="server" Height="25px" Text="查看" Width="60px" />
                            </td>
                            <td>&nbsp;</td>
                            <td>
                                <asp:Button ID="Button2" runat="server" Height="25px" Text="编辑" Width="60px" />
                                &nbsp;
                            <asp:Button ID="Button3" runat="server" Height="25px" Text="删除" Width="60px" />
                            </td>
                        </tr>
                    </table>
                    <br />
                    <br />
                </ItemTemplate>
            </asp:DataList>
        </div>
        <div>
        </div>
    </div>
</asp:Content>
