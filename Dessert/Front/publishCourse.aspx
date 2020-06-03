<%@ Page Title="" Language="C#" MasterPageFile="~/Front/Publish.Master" AutoEventWireup="true" CodeBehind="publishCourse.aspx.cs" Inherits="Dessert.Front.WebForm8" %>
<%@ Reference Control="step.ascx" %><%--引用控件--%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .pubContent {
            width: 1200px;
        }

        .step {
            /*步骤*/
            padding:30px;
            width: 800px;
            float: left;
            background:#fad9cd;
            margin-bottom: 100px;
        }

        .courseContent {
            /*教程步骤外其他内容*/
            padding:30px;
            width: 380px;
            margin-left:820px;
            background: #fad9cd;
        }

        .title {
            /*文字样式*/
            color: #666;
            font-size: 22px;
        }

        .txtStyle {
            height: 30px;
            border: 1px solid #ccc;
            padding-left: 20px;
            width: 300px;
        }
        .submitBtn{
            width:300px;
            line-height: 40px;
            text-align: center;
            color: #fff;
            background: #a26471;
            font-size: 14px;
            border-radius: 5px;
            margin-top: 20px;
            cursor: pointer;
            height:50px;
        }
        .auto-style1 {
            height: 50px;
            width: 375px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="pubContent">
        <div class="step">
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="添加步骤" />
                    <div>
                        <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
                    </div>
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
        <div class="courseContent">
            <table class="nav-justified">
                <tr>
                    <td class="auto-style1"><span class="title">教程标题：</span></td>
                </tr>
                <tr>
                    <td class="auto-style1"><asp:TextBox ID="TextBox1" runat="server" CssClass="txtStyle"></asp:TextBox></td>
                </tr>
                <%-- <tr>
                    <td style="height: 50px;"><span class="title">甜品类别：</span></td>
                </tr>
               <tr>
                    <td style="height: 50px;">
                        <asp:DropDownList ID="DropDownList1" runat="server" Height="30px" Width="155px" DataSourceID="SqlDataSource1" DataTextField="SortName" DataValueField="SortId"></asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [DessertSort]"></asp:SqlDataSource>
                    </td>
                </tr>--%>
                <tr>
                    <td class="auto-style1"><span class="title">甜品标签：</span></td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        蛋白质：<asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                            <asp:ListItem Value="1">高蛋白</asp:ListItem>
                            <asp:ListItem Value="2">低蛋白</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        脂肪：<asp:RadioButtonList ID="RadioButtonList2" runat="server" RepeatDirection="Horizontal">
                            <asp:ListItem Value="3">高脂</asp:ListItem>
                            <asp:ListItem Value="4">低脂</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        碳水化合物：<asp:RadioButtonList ID="RadioButtonList3" runat="server" RepeatDirection="Horizontal">
                            <asp:ListItem Value="5">高碳水</asp:ListItem>
                            <asp:ListItem Value="6">低碳水</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1"><span class="title">主要食材：</span></td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:TextBox ID="TextBox2" runat="server" Height="115px" TextMode="MultiLine" Width="300px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="auto-style1"><span class="title">教程封面：</span></td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:FileUpload ID="FileUpload1" runat="server" /></td>
                </tr>
            </table>
            <div>
                <asp:Button ID="Button2" runat="server" Text="确认发布" CssClass="submitBtn" OnClick="Button2_Click"/></div>
        </div>
    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
