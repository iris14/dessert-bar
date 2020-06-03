<%@ Control Language="C#" CodeBehind="step.ascx.cs" Inherits="Dessert.DynamicData.FieldTemplates.step" %>
<script runat="server">
    
</script>
<asp:Literal runat="server" ID="Literal1" Text="<%# FieldValueString %>" />
<asp:TextBox ID="TextBox1" runat="server" Height="300px" TextMode="MultiLine" Width="720px"></asp:TextBox>
<br />
<asp:FileUpload ID="FileUpload1" runat="server" /><asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>

<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="上传图片" />
<p>上传图片格式为.jpg, .gif, .bmp,.png,图片大小不得超过8M</p>
<asp:Image ID="Image1" runat="server" />


