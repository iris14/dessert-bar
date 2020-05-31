<%@ Page Title="" Language="C#" MasterPageFile="~/Front/Front.Master" AutoEventWireup="true" CodeBehind="personalMessage.aspx.cs" Inherits="Dessert.Front.WebForm7" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 20px;
        }

        .title {
            /*我的资料*/
            color: #666;
            font-size: 22px;
        }

        .trHeight {
            /*表格行高度*/
            height: 50px;
        }
        .messageContent{
            width:400px;
            margin: 30px auto;
        }
        .single{
            /*单数行*/
            background:#d8b2c7;

        }
        .double{
            /*偶数行*/
            background: #fff;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        
        <div>
            <div class="messageContent">
                <div>
            <span class="title">☀我的资料</span>
            <hr />
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </div>
                <asp:DataList ID="DataList1" runat="server" DataKeyField="UserId" Width="400px">
                    <ItemTemplate>
                        <table class="nav-justified">
                            <tr class="trHeight single">
                                <td class="auto-style1" style="padding: 10px; vertical-align: middle;">昵称：</td>
                                <td class="auto-style1" style="vertical-align: middle; padding: 10px">
                                    <asp:Label ID="UserNameLabel" runat="server" Text='<%# Eval("UserName") %>' />
                                </td>
                            </tr>
                            <tr class="trHeight double">
                                <td style="padding: 10px; vertical-align: middle;">性别：</td>
                                <td style="vertical-align: middle; padding: 10px">
                                    <asp:Label ID="UserGenderLabel" runat="server" Text='<%# Eval("UserGender") %>' />
                                </td>
                            </tr>
                            <tr class="trHeight single">
                                <td class="auto-style1" style="padding: 10px; vertical-align: middle;">邮箱：</td>
                                <td class="auto-style1" style="vertical-align: middle; padding: 10px">
                                    <asp:Label ID="UserEmailLabel" runat="server" Text='<%# Eval("UserEmail") %>' />
                                </td>
                            </tr>
                            <tr class="trHeight double ">
                                <td style="padding: 10px; vertical-align: middle;">注册手机号：</td>
                                <td style="vertical-align: middle; padding: 10px">
                                    <asp:Label ID="UserTelLabel" runat="server" Text='<%# Eval("UserTel") %>' />
                                </td>
                            </tr>
                            <tr class="trHeight single">
                                <td style="padding: 10px; vertical-align: middle;">注册身份证号：</td>
                                <td style="vertical-align: middle; padding: 10px">
                                    <asp:Label ID="UserCardLabel" runat="server" Text='<%# Eval("UserCard") %>' />
                                </td>
                            </tr>
                            <tr class="trHeight double ">
                                <td style="padding: 10px; vertical-align: middle;">加入DessertBar时间：</td>
                                <td style="vertical-align: middle; padding: 10px">
                                    <asp:Label ID="UserTimeLabel" runat="server" Text='<%# Eval("UserTime") %>' />
                                </td>
                            </tr>
                        </table>
                        <asp:Button ID="Button1" runat="server" BackColor="#D8B2C7" ForeColor="White" Height="50px" Text="编辑" Width="400px" />
                        <br />
                    </ItemTemplate>
                </asp:DataList>
            </div>


        </div>
    </div>
</asp:Content>
