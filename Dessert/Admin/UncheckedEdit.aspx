<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin_detail.Master" AutoEventWireup="true" CodeBehind="UncheckedEdit.aspx.cs" Inherits="Dessert.Admin.UncheckedEdit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-lg-12 col-md-12 col-sm-12 bg-danger" >
            <asp:FormView ID="FormView1" runat="server"  Height="244px" Width="496px">
                <EditItemTemplate>
                    标题:
                    <asp:Label ID="CourseIdLabel1" runat="server" Text='<%# Eval("CourseId") %>' />
                    <br />
                    食材:
                    <asp:Label ID="UserIdLabel1" runat="server" Text='<%# Eval("UserId") %>' />
                    <br />
                    作者:
                    <asp:Label ID="UserNameLabel" runat="server" Text='<%# Bind("UserName") %>' />
                    <br />
                    分类：<asp:DropDownList ID="DropDownList2" runat="server">
                        <asp:ListItem Value="1">高热量</asp:ListItem>
                        <asp:ListItem Value="2">中热量</asp:ListItem>
                        <asp:ListItem Value="3">低热量</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    详细教程：<asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%# Eval("CourseId", "CourseDetail.aspx?CourseId={0}") %>'>点击查看</asp:HyperLink>
                    <br />
                    热量填写：<asp:TextBox ID="CourseCheckTextBox" runat="server" Text='<%# Bind("CourseCheck") %>' />
                    <br />
                    是否通过审核：<asp:RadioButtonList ID="RadioButtonList1" runat="server">
                        <asp:ListItem Selected="True" Value="1">是</asp:ListItem>
                        <asp:ListItem Value="2">否</asp:ListItem>
                    </asp:RadioButtonList>
                    <br />
                    是否设为精品：<asp:RadioButton ID="RadioButton3" runat="server" Text="是" />
                    <br />
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="审核完成" />
&nbsp;
                    <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="返回" />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="更新" OnClick="UpdateButton_Click" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
                </EditItemTemplate>
                <InsertItemTemplate>
                    CourseCheck:
                    <asp:TextBox ID="CourseCheckTextBox" runat="server" Text='<%# Bind("CourseCheck") %>' />
                    <br />

                    UserName:
                    <asp:TextBox ID="UserNameTextBox" runat="server" Text='<%# Bind("UserName") %>' />
                    <br />
                    CourseTitle:
                    <asp:TextBox ID="CourseTitleTextBox" runat="server" Text='<%# Bind("CourseTitle") %>' />
                    <br />
                    FoodName:
                    <asp:TextBox ID="FoodNameTextBox" runat="server" Text='<%# Bind("FoodName") %>' />
                    <br />
                    UserIntegration:
                    <asp:TextBox ID="UserIntegrationTextBox" runat="server" Text='<%# Bind("UserIntegration") %>' />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="插入" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
                </InsertItemTemplate>
                <ItemTemplate>
                    标题:
                    <asp:Label ID="CourseTitleLabel" runat="server" Text='<%# Bind("CourseTitle") %>' />
                    <br />
                    食材:
                    <asp:Label ID="FoodNameLabel" runat="server" Text='<%# Bind("FoodName") %>' />
                    <br />
                    作者:
                    <asp:Label ID="UserNameLabel" runat="server" Text='<%# Bind("UserName") %>' />
                    <br />
                    分类：<asp:DropDownList ID="DropDownList2" runat="server">
                        <asp:ListItem Value="1">高热量</asp:ListItem>
                        <asp:ListItem Value="2">中热量</asp:ListItem>
                        <asp:ListItem Value="3">低热量</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    详细教程：<asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%# Eval("CourseId", "CourseDetail.aspx?CourseId={0}") %>'>点击查看</asp:HyperLink>
                    <br />
                    热量填写：<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    <br />

                    是否通过审核：<asp:RadioButtonList ID="RadioButtonList1" runat="server">
                        <asp:ListItem Value="通过审核" Selected="True">是</asp:ListItem>
                        <asp:ListItem Value="未通过审核">否</asp:ListItem>
                    </asp:RadioButtonList>
                    <br />
                    是否设为精品：<asp:RadioButtonList ID="RadioButtonList2" runat="server" Width="55px">
                        <asp:ListItem Selected="True" Value="1">是</asp:ListItem>
                        <asp:ListItem Value="f">否</asp:ListItem>
                    </asp:RadioButtonList>
                    <br />
                    <asp:Button ID="Button2" runat="server" Text="审核完成" OnClick="Button2_Click" />
                    &nbsp;
                    <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="返回" />
                    <br />
                </ItemTemplate>
            </asp:FormView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DessertCourse.CourseId, DessertCourse.CourseCheck, Users.UserId, Users.UserName, DessertCourse.CourseTitle, DessertFood.FoodName, Users.UserIntegration FROM DessertCourse INNER JOIN DessertFood ON DessertCourse.CourseId = DessertFood.CourseId INNER JOIN Users ON DessertCourse.UserId = Users.UserId WHERE (DessertCourse.CourseId = @CourseId)">
                <SelectParameters>
                    <asp:QueryStringParameter Name="CourseId" QueryStringField="CourseId" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [CourseLable] WHERE ([CourseId] = @CourseId)">
                <SelectParameters>
                    <asp:QueryStringParameter Name="CourseId" QueryStringField="CourseId" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
    </div>
</asp:Content>
