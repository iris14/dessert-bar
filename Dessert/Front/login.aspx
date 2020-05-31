<%@ Page Title="" Language="C#" MasterPageFile="~/Front/LoginRes.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Dessert.Front.WebForm3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            line-height: 40px;
            text-align: center;
            color: #fff;
            background: #a26471;
            font-size: 14px;
            border-radius: 5px;
            margin-left: 110px;
            margin-top: 20px;
            cursor: pointer;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <div class="main_r_up">
            <img src="../Data/Front_img/user.png" />
            <div class="pp">登录</div>
        </div>
        <div class="sub">
            <p>还没有账号？<a href="register.aspx"><span class="pink">立即注册</span></a></p>
        </div>

        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <div class="txt">
                    <asp:Label ID="Label1" runat="server" Text="手机号码：" CssClass="phone"></asp:Label>
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="txtphone"></asp:TextBox>
                </div>
                <div class="txt">
                    <asp:Label ID="Label2" runat="server" Text="登录密码：" CssClass="pwd"></asp:Label>
                    <asp:TextBox ID="TextBox2" runat="server" CssClass="txtpwd"></asp:TextBox>
                </div>
            </ContentTemplate>

        </asp:UpdatePanel>
        <div>
            <asp:Button ID="Button1" runat="server" Height="45px" OnClick="Button1_Click1" Text="登录" CssClass="auto-style1" Width="260px" />
        </div>
    </div>
</asp:Content>
