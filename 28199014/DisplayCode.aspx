<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DisplayCode.aspx.cs" Inherits="_28199014.DisplayCode" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Display Code</title>
    <link rel="stylesheet" href="css/StyleDisplayCode.css" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <div style="background-image:url(images/displayCode.jpg)">
            <h1 class="pageHeader">Source Code </h1>
            <asp:Label ID="fileName" runat="server" CssClass="codeheader"/>
            <asp:Label ID="fileName2" runat="server" CssClass="codeheader"/>
            <asp:Label ID="fileName3" runat="server" CssClass="codeheader"/>
            <asp:Panel ID="onlCode" runat="server" CssClass="code" Width="80%" >
                <asp:Label ID="Code" runat="server" />
            </asp:Panel>
        </div>
    </form>
</body>
</html>
