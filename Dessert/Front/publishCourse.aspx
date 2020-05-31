<%@ Page Title="" Language="C#" MasterPageFile="~/Front/Publish.Master" AutoEventWireup="true" CodeBehind="publishCourse.aspx.cs" Inherits="Dessert.Front.WebForm8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <div>
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
</div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
