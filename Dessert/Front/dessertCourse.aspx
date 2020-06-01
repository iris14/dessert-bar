<%@ Page Title="" Language="C#" MasterPageFile="~/Front/Front.Master" AutoEventWireup="true" CodeBehind="dessertCourse.aspx.cs" Inherits="Dessert.Front.dessertCourse" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [DessertImage] WHERE ([CourseId] = @CourseId)">
        <SelectParameters>
            <asp:QueryStringParameter Name="CourseId" QueryStringField="CourseId" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:ListView ID="ListView1" runat="server" DataKeyNames="ImageId" DataSourceID="SqlDataSource1">
        <AlternatingItemTemplate>
            <li style="">
                DessertStep:
                <asp:Label ID="DessertStepLabel" runat="server" Text='<%# Eval("DessertStep") %>' />
                <%--ImageId:
                <asp:Label ID="ImageIdLabel" runat="server" Text='<%# Eval("ImageId") %>' />
                <br />--%>
                <%--CourseId:
                <asp:Label ID="CourseIdLabel" runat="server" Text='<%# Eval("CourseId") %>' />
                <br />--%>
                ImageFile:
                <asp:Label ID="ImageFileLabel" runat="server" Text='<%# Eval("ImageFile") %>' />
                <asp:Image ID="Image1" runat="server" ImageUrl="~/images/dessert/1.1.jpeg" Height="117px" Width="149px"/>
                <br />
                CourseDetail:
                <asp:Label ID="CourseDetailLabel" runat="server" Text='<%# Eval("CourseDetail") %>' />
                <br />
                
                <br />
            </li>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <li style="">ImageId:
                <asp:Label ID="ImageIdLabel1" runat="server" Text='<%# Eval("ImageId") %>' />
                <br />
                CourseId:
                <asp:TextBox ID="CourseIdTextBox" runat="server" Text='<%# Bind("CourseId") %>' />
                <br />
                ImageFile:
                <asp:TextBox ID="ImageFileTextBox" runat="server" Text='<%# Bind("ImageFile") %>' />
                <br />
                CourseDetail:
                <asp:TextBox ID="CourseDetailTextBox" runat="server" Text='<%# Bind("CourseDetail") %>' />
                <br />
                DessertStep:
                <asp:TextBox ID="DessertStepTextBox" runat="server" Text='<%# Bind("DessertStep") %>' />
                <br />
                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="更新" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="取消" />
            </li>
        </EditItemTemplate>
        <EmptyDataTemplate>
            未返回数据。
        </EmptyDataTemplate>
        <InsertItemTemplate>
            <li style="">CourseId:
                <asp:TextBox ID="CourseIdTextBox" runat="server" Text='<%# Bind("CourseId") %>' />
                <br />ImageFile:
                <asp:TextBox ID="ImageFileTextBox" runat="server" Text='<%# Bind("ImageFile") %>' />
                <br />CourseDetail:
                <asp:TextBox ID="CourseDetailTextBox" runat="server" Text='<%# Bind("CourseDetail") %>' />
                <br />
                DessertStep:
                <asp:TextBox ID="DessertStepTextBox" runat="server" Text='<%# Bind("DessertStep") %>' />
                <br />
                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="插入" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="清除" />
            </li>
        </InsertItemTemplate>
        <ItemSeparatorTemplate>
<br />
        </ItemSeparatorTemplate>
        <ItemTemplate>
            <li style="">ImageId:
                <asp:Label ID="ImageIdLabel" runat="server" Text='<%# Eval("ImageId") %>' />
                <br />
                CourseId:
                <asp:Label ID="CourseIdLabel" runat="server" Text='<%# Eval("CourseId") %>' />
                <br />
                ImageFile:
                <asp:Label ID="ImageFileLabel" runat="server" Text='<%# Eval("ImageFile") %>' />
                <asp:Image ID="Image1" runat="server" ImageUrl="~/images/dessert/1.1.jpeg" Height="117px" Width="149px"/>
                <br />
                CourseDetail:
                <asp:Label ID="CourseDetailLabel" runat="server" Text='<%# Eval("CourseDetail") %>' />
                <br />
                DessertStep:
                <asp:Label ID="DessertStepLabel" runat="server" Text='<%# Eval("DessertStep") %>' />
                <br />
            </li>
        </ItemTemplate>
        <LayoutTemplate>
            <ul id="itemPlaceholderContainer" runat="server" style="">
                <li runat="server" id="itemPlaceholder" />
            </ul>
            <div style="">
            </div>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <li style="">ImageId:
                <asp:Label ID="ImageIdLabel" runat="server" Text='<%# Eval("ImageId") %>' />
                <br />
                CourseId:
                <asp:Label ID="CourseIdLabel" runat="server" Text='<%# Eval("CourseId") %>' />
                <br />
                ImageFile:
                <asp:Label ID="ImageFileLabel" runat="server" Text='<%# Eval("ImageFile") %>' />
                <br />
                CourseDetail:
                <asp:Label ID="CourseDetailLabel" runat="server" Text='<%# Eval("CourseDetail") %>' />
                <br />
                DessertStep:
                <asp:Label ID="DessertStepLabel" runat="server" Text='<%# Eval("DessertStep") %>' />
                <br />
            </li>
        </SelectedItemTemplate>
    </asp:ListView>
</asp:Content>
