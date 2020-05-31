<%@ Page Title="" Language="C#" MasterPageFile="~/Front/LoginRes.Master" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="Dessert.Front.WebForm4" %>

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
            <div class="pp">注册</div>
        </div>
        <div class="sub">
            <p>已经注册？<a href="login.aspx"><span class="pink">请登录</span></a></p>
        </div>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <div>
                    <div class="txt">
                        <span style="letter-spacing:10px;">手机号码:</span>
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="txtphone"></asp:TextBox>
                    </div>
                    <div class="txt">
                        <span style="letter-spacing: 10px;">身份证号:</span>
                        <asp:TextBox ID="TextBox2" runat="server" CssClass="txtphone"></asp:TextBox>
                    </div>
                    <div class="txt">
                        <span style="letter-spacing: 10px;">用户名称:</span>
                        <asp:TextBox ID="TextBox5" runat="server" CssClass="txtphone"></asp:TextBox>
                    </div>
                    <div class="txt">
                        <span style="letter-spacing: 10px;">登录密码：</span>
                        <asp:TextBox ID="TextBox3" runat="server" CssClass="txtphone"></asp:TextBox>
                    </div>
                    <%--<div class="txt">
                        <span style="letter-spacing: 10px;">重复密码：</span>
                        <asp:TextBox ID="TextBox4" runat="server" CssClass="txtphone"></asp:TextBox>
                    </div>--%>
                </div>
            </ContentTemplate>
        </asp:UpdatePanel>

        <a href="register2.aspx">
            <asp:Button ID="Button1" runat="server" Text="确定注册" CssClass="auto-style1" Height="46px" Width="215px" OnClick="Button1_Click"/>
        </a>
    </div>
</asp:Content>
