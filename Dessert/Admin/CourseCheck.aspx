<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="CourseCheck.aspx.cs" Inherits="Dessert.Admin.CourseCheck" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="row">
        <div class="col-lg-12 col-md-12 col-sm-12 text-center">
            <h2>未审核用户教程管理</h2>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-12 col-md-12 col-sm-12 ">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"  Height="198px" Width="1403px" CssClass="table table-bordered bg-warning">
            <Columns>
                <asp:BoundField DataField="CourseId" HeaderText="序号" InsertVisible="False" ReadOnly="True" SortExpression="CourseId" />
                <asp:BoundField DataField="CourseCheck" HeaderText="审核状态" SortExpression="CourseCheck" />
                <asp:BoundField DataField="UserName" HeaderText="上传用户名" SortExpression="UserName" />
                <asp:BoundField DataField="CourseTitle" HeaderText="教程名" SortExpression="CourseTitle" />
                <asp:BoundField DataField="UserIntegration" HeaderText="用户积分" SortExpression="UserIntegration" />
                <asp:TemplateField ConvertEmptyStringToNull="False" HeaderText="审核" SortExpression="CourseId">
                    <EditItemTemplate>
                        <asp:DynamicControl ID="DynamicControl1" runat="server" DataField="CourseId" Mode="Edit" />
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Eval("CourseId","UncheckedEdit.aspx?CourseId={0}") %>' CssClass="btn btn-default">审核</asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
        </div>
    </div>
    <br />
</asp:Content>
