<%@ Page Language="C#" AutoEventWireup="true" CodeFile="repeater-radiobutton.aspx.cs" Inherits="admin_repeater_radiobutton" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table style="width: 206px">
   
  
        <asp:Repeater ID="Rprb" runat="server">
        <ItemTemplate>
            <tr>              
            <td>
             <%#  Eval("username1").ToString() %>  </td>
            <td  width="600px">
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                <asp:ListItem>工作日加班</asp:ListItem>
                        <asp:ListItem>周末加班</asp:ListItem>
                        <asp:ListItem>法定节日加班</asp:ListItem>
                </asp:RadioButtonList>            </td>
        
             </tr>
                        
             </ItemTemplate> 
        </asp:Repeater>
  
    <tr>
        <td>
           
            <asp:Button ID="Button1" runat="server" Text="保存" onclick="Button1_Click" />
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    
    </table>
    </div>
    </form>
</body>
</html>
