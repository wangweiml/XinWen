<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MZPYzxbgry.aspx.cs" Inherits="admin_MZPYzxbgry" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
            
        }
        .style2
        {
            width: 1032px;
        }
        .style3
        {
            width: 177px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div align="center" style="font-size: x-large">中心办公室人员评议表</div>
    <div class="box">
    
        <table class="style1" border="1" style="text-align: center"  >

            
                    <asp:Repeater ID="Rpzxbgry" runat="server" >
                    
                    <ItemTemplate>
                    <tr><td width="200px"></td>
                    <td ><%#  Eval("gushi").ToString() %></td>
                     <td ><%#  Eval("xingming").ToString() %></td>
                        <td><asp:RadioButton ID="RadioButton1"   Text="优秀" runat="server" GroupName="bgsry" /></td>
                        <td><asp:RadioButton ID="RadioButton2" Text="称职" runat="server"  GroupName="bgsry"/></td>
                        <td><asp:RadioButton ID="RadioButton3" Text="基本称职" runat="server"  GroupName="bgsry"/></td>
                        <td><asp:RadioButton ID="RadioButton4" Text="不称职" runat="server"  GroupName="bgsry"/></td>
                        
                    <td width="200px"></td>
                    </tr>
                    </ItemTemplate>
                    
                    </asp:Repeater>
                <tr><td>
                    </td><td>
                       </td>
                        <td></td>
                        <td hight="20px"></td>
                        </tr>
                 
        </table>
        <table><tr>
        <td><asp:Button ID="Button1" runat="server" Text="保存" onclick="Button1_Click" 
                style="margin-left: 424px" Width="60px" /></td>  <td class="style3"></td>
        <td class="style2"> <asp:Button ID="Button2" runat="server" Width="60px" Text="重置" onclick="Button2_Click" /></td></tr>
        </table>
    
    </div>
    </form>
</body>
</html>
