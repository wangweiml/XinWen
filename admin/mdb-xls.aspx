﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="mdb-xls.aspx.cs" Inherits="admin_mdb_xls" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Button ID="Btmdbtoxls" runat="server" Text="mdbtoxls" 
            onclick="Btmdbtoxls_Click" /><br />
        <br />
        <asp:Button ID="Btxlstomdb" runat="server" Text="xlstomdb" 
            onclick="Btxlstomdb_Click" />
    </div>
    </form>
</body>
</html>
