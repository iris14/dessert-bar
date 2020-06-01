<%@ Control Language="C#" CodeBehind="step.ascx.cs" Inherits="Dessert.DynamicData.FieldTemplates.step" %>

<asp:Literal runat="server" ID="Literal1" Text="<%# FieldValueString %>" />
<asp:TextBox ID="TextBox1" runat="server" Height="300px" TextMode="MultiLine" Width="720px"></asp:TextBox>
<br />
<asp:FileUpload ID="FileUpload1" runat="server" />

