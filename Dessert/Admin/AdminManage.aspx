<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="AdminManage.aspx.cs" Inherits="Dessert.Admin.AdminManage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-lg-12 col-md-12 col-sm-12">
            <h1 class="text-center">管理员管理</h1>
        </div>
        <div class="col-lg-12 col-md-12 col-sm-12 text-center">
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Admin] WHERE [AdminId] = @AdminId" InsertCommand="INSERT INTO [Admin] ([AdminId], [AdminAccount], [AdminPwd]) VALUES (@AdminId, @AdminAccount, @AdminPwd)" SelectCommand="SELECT * FROM [Admin]" UpdateCommand="UPDATE [Admin] SET [AdminAccount] = @AdminAccount, [AdminPwd] = @AdminPwd WHERE [AdminId] = @AdminId">
        <DeleteParameters>
            <asp:Parameter Name="AdminId" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="AdminId" Type="Int32" />
            <asp:Parameter Name="AdminAccount" Type="String" />
            <asp:Parameter Name="AdminPwd" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="AdminAccount" Type="String" />
            <asp:Parameter Name="AdminPwd" Type="String" />
            <asp:Parameter Name="AdminId" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="AdminId" DataSourceID="SqlDataSource1" Height="403px" Width="661px" OnPageIndexChanging="FormView1_PageIndexChanging">
        <EditItemTemplate>
            AdminId:
            <asp:Label ID="AdminIdLabel1" runat="server" Text='<%# Eval("AdminId") %>' />
            <br />
            AdminAccount:
            <asp:TextBox ID="AdminAccountTextBox" runat="server" Text='<%# Bind("AdminAccount") %>' />
            <br />
            AdminPwd:
            <asp:TextBox ID="AdminPwdTextBox" runat="server" Text='<%# Bind("AdminPwd") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="更新" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
        </EditItemTemplate>
        <InsertItemTemplate>
            AdminId:
            <asp:TextBox ID="AdminIdTextBox" runat="server" Text='<%# Bind("AdminId") %>' />
            <br />
            AdminAccount:
            <asp:TextBox ID="AdminAccountTextBox" runat="server" Text='<%# Bind("AdminAccount") %>' />
            <br />
            AdminPwd:
            <asp:TextBox ID="AdminPwdTextBox" runat="server" Text='<%# Bind("AdminPwd") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="插入" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
        </InsertItemTemplate>
        <ItemTemplate>
            <table class="table table-hover">
                <tr>
                    <td>AdminId:</td>
                     <td><asp:Label ID="AdminIdLabel" runat="server" Text='<%# Eval("AdminId") %>' /></td>
                </tr>
                <tr>
                    <td>AdminAccount:</td>
                    <td><asp:Label ID="AdminAccountLabel" runat="server" Text='<%# Bind("AdminAccount") %>' /></td>

                </tr>
                <tr>
                    <td>AdminPwd:</td>
                    <td><asp:Label ID="AdminPwdLabel" runat="server" Text='<%# Bind("AdminPwd") %>' /></td>

                </tr>
            </table>
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" OnClick="EditButton_Click" Text="编辑" CssClass="btn btn-default" />
        </ItemTemplate>
    </asp:FormView>
        </div>

    </div>
</asp:Content>
