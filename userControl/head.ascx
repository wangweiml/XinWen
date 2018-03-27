<%@ Control Language="C#" AutoEventWireup="true" CodeFile="head.ascx.cs" Inherits="userControl_syhead" %>
    <table>
        <tr>
            <td colspan="4" style="width: 960px; height: 91px" valign="top">
                <div style="text-align: center">
                    <asp:Image ID="Image2" runat="server" ImageUrl="~/images/guanli_01.jpg" 
                        Width="960px"/></div>
            </td>
        </tr>
        <tr>
        <td align="left">
            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/1daohang_01.jpg" />
            <asp:ImageButton ID="sy" runat="server" ImageUrl="~/images/1daohang_02.jpg" 
                onclick="sy_Click" />
            <asp:ImageButton ID="tc" runat="server" ImageUrl="~/images/daohang_07.jpg" onclick="tc_Click" />
        </tr>
        <tr>
            <td colspan="4" style="width: 960px; height: 19px; background-color: #99ccff;" 
                valign="top" >
                <marquee onmouseout="this.start()" onmouseover="this.stop()" scrollamount="2"><asp:Label id="Label1" runat="server" Font-Size="12px" Text="我们的终旨：全心全意为人民服务！！" ForeColor="red"></asp:Label></marquee></td>
        </tr>
    </table>

