<%@ Page Title="" Language="C#" MasterPageFile="~/Front/Publish.Master" AutoEventWireup="true" CodeBehind="publishCourse.aspx.cs" Inherits="Dessert.Front.WebForm8" %>

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
                    <td style="height: 50px;"><span class="title">教程标题：</span></td>
                </tr>
                <tr>
                    <td style="height: 50px;"><asp:TextBox ID="TextBox1" runat="server" CssClass="txtStyle"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="height: 50px;"><span class="title">甜品类别：</span></td>
                </tr>
                <tr>
                    <td style="height: 50px;">
                        <asp:DropDownList ID="DropDownList1" runat="server" Height="30px" Width="155px" DataSourceID="SqlDataSource1" DataTextField="SortName" DataValueField="SortId"></asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [DessertSort]"></asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td style="height: 50px;"><span class="title">甜品标签：</span></td>
                </tr>
                <tr>
                    <td style="height: 50px;">
                        <asp:CheckBoxList ID="CheckBoxList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="LableTitle" DataValueField="LableId" RepeatColumns="5" RepeatDirection="Horizontal" Width="300px">
                        </asp:CheckBoxList>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [DessertLable]"></asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td style="height: 50px;"><span class="title">主要食材：</span></td>
                </tr>
                <tr>
                    <td style="height: 50px;">
                        <asp:TextBox ID="TextBox2" runat="server" Height="115px" TextMode="MultiLine" Width="300px"></asp:TextBox></td>
                </tr>
            </table>
            <div>
                <asp:Button ID="Button2" runat="server" Text="确认发布" CssClass="submitBtn" OnClick="Button2_Click"/></div>
        </div>
    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
