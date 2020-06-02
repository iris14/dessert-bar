<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="CourseDetail.aspx.cs" Inherits="Dessert.Admin.CourseDetail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .divstyle  {
            text-align: center;
            
        }
         .Label1{
            font-size:large;
            font-weight:800;
        }
        .Label2{
            font-size:small;
            font-weight:800;
        }
        .auto-style5 {
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="divstyle col-lg-12 col-md-12 col-sm-12" style="margin:30px auto">

            <asp:Label ID="Label1" runat="server" Text="Label" CssClass="Label1"></asp:Label>
        </div>
    </div>
    <div class="row">
        <div class="divstyle col-lg-12 col-md-12 col-sm-12">

            <asp:Label ID="Label2" runat="server" Text="食材：" CssClass="Label2"></asp:Label>

            <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>

        </div>
    </div>
    <div class="row">
        <div class="auto-style5">

            <asp:Panel ID="Panel1" runat="server">
                <br />
                
            </asp:Panel>

            <div class="auto-style5">

            <br />
            <asp:Button Text="返回" runat="server" CssClass="btn btn-default" ID="button1" OnClick="Unnamed1_Click" />
            </div>
        </div>
    </div>
</asp:Content>
