<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Redis.aspx.cs" Inherits="admin_Redis" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Redis测试</title>
     <link rel="stylesheet" href="css/common.css"/>
   <link rel="stylesheet" href="css/main.css"/>
</head>
<body>
     <form id="form1" runat="server">
     <div id="forms" class="mt10">
        <div class="box">
          <div class="box_border">
            <div class="box_center">
               <table class="form_table pt15 pb15" width="100%" border="0" cellpadding="0" cellspacing="0">
                 <tr>
                  <td class="td_right">姓名：</td>
                  <td class=""> 
                      <asp:TextBox ID="txtName" class="input-text lh30" size="40" runat="server"></asp:TextBox>
                  </td>
                  <td class="td_right">&nbsp;</td><td>&nbsp;</td>
                </tr>
                <tr >
                  <td class="td_right">电话：</td>
                  <td class="">
                      <asp:TextBox ID="txtTel" class="input-text lh30" size="40" runat="server"></asp:TextBox></td>
                 </tr>
                <tr >
                  <td class="td_right">年龄：</td>
                  <td class="">
                      <asp:TextBox ID="txtAge" class="input-text lh30" size="40" runat="server"></asp:TextBox></td>
                 </tr>
                 <tr>
                   <td class="td_right">&nbsp;</td>
                   <td class="">
                       <asp:Button ID="btnRead" class="btn btn82 btn_res" runat="server" Text="读取"  onclick="btnRead_Click" />
                   </td>
                 </tr>
                 
                <tr >
                  <td class="td_right">key：</td>
                  <td class="">
                      <asp:TextBox ID="txtKey" class="input-text lh30" size="40" runat="server"></asp:TextBox></td>
                 </tr>
                <tr >
                  <td class="td_right">Value：</td>
                  <td class="">
                      <asp:TextBox ID="txtValue" class="input-text lh30" size="40" runat="server"></asp:TextBox></td>
                 </tr>
                 <tr>
                   <td class="td_right">&nbsp;</td>
                   <td class="">
                       <asp:Button ID="btnSave"  class="btn btn82 btn_save2" runat="server" Text="保存" 
                           onclick="btnSave_Click" />
                   </td>
                 </tr>
               </table>
            </div>
          </div>
        </div>
     </div>

    </form>
</body>
</html>
