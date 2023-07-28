<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="convocation.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/style.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
        <h1 class="auto-style1">Member Details</h1>
                <p class="auto-style1">
                    <asp:TextBox ID="TextBox1" AutoPostBack="true" PlaceHolder="Enter Member Number" runat="server" CssClass="auto-style2" OnTextChanged="TextBox1_TextChanged" Width="211px"></asp:TextBox>
                </p>
            <p class="auto-style1">
                    &nbsp;<asp:Label ID="lbltxt" runat="server" Text="Hi ! " Visible="false"></asp:Label>
                    <asp:Label ID="lblname" runat="server" Text="Label" Visible="false" ></asp:Label>
                    &nbsp;<asp:Label ID="lblida" runat="server" Text="Member No:" Visible="false"></asp:Label>
&nbsp;<asp:Label ID="lblid" runat="server" Text="Label" Visible="false"></asp:Label>
                </p>
            <p class="auto-style1">
                    <asp:Button ID="btnupdate" Visible="false" runat="server" OnClick="btnupdate_Click" Text="Update" />
&nbsp;<asp:Button ID="btnregis" Visible="false" runat="server" OnClick="Button2_Click" Text="Registration" />
                    <asp:HyperLink ID="HyperLink1" autopost="true" runat="server">HyperLink</asp:HyperLink>
                </p>
            </div>
    </form>
</body>
</html>
