<%@ Control Language="C#" CodeBehind="step.ascx.cs" Inherits="Dessert.DynamicData.FieldTemplates.step1" %>

<asp:Literal runat="server" ID="Literal1" Text="<%# FieldValueString %>" />
<br />
<asp:TextBox ID="TextBox1" runat="server" Height="300px" TextMode="MultiLine" Width="720px" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px"></asp:TextBox>
<br />
上传步骤配图：<asp:FileUpload ID="FileUpload1" runat="server" />

