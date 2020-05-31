<%@ Page Title="" Language="C#" MasterPageFile="~/Front/Front.Master" AutoEventWireup="true" CodeBehind="personalMessage.aspx.cs" Inherits="Dessert.Front.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <div>
            <span class="title">☀我的甜品教程</span>
            <hr />
        </div>
        <div>

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Users] WHERE ([UserId] = @UserId)">
                <SelectParameters>
                    <asp:SessionParameter Name="UserId" SessionField="userid" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:DataList ID="DataList1" runat="server" DataKeyField="UserId" DataSourceID="SqlDataSource1">
                <ItemTemplate>
                    UserId:
                    <asp:Label ID="UserIdLabel" runat="server" Text='<%# Eval("UserId") %>' />
                    <br />
                    UserName:
                    <asp:Label ID="UserNameLabel" runat="server" Text='<%# Eval("UserName") %>' />
                    <br />
                    UserTel:
                    <asp:Label ID="UserTelLabel" runat="server" Text='<%# Eval("UserTel") %>' />
                    <br />
                    UserPwd:
                    <asp:Label ID="UserPwdLabel" runat="server" Text='<%# Eval("UserPwd") %>' />
                    <br />
                    UserGender:
                    <asp:Label ID="UserGenderLabel" runat="server" Text='<%# Eval("UserGender") %>' />
                    <br />
                    UserEmail:
                    <asp:Label ID="UserEmailLabel" runat="server" Text='<%# Eval("UserEmail") %>' />
                    <br />
                    UserCard:
                    <asp:Label ID="UserCardLabel" runat="server" Text='<%# Eval("UserCard") %>' />
                    <br />
                    UserTime:
                    <asp:Label ID="UserTimeLabel" runat="server" Text='<%# Eval("UserTime") %>' />
                    <br />
<br />
                </ItemTemplate>
            </asp:DataList>

        </div>
    </div>
</asp:Content>
