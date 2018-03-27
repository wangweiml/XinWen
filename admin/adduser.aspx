<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adduser.aspx.cs" Inherits="admin_adduser" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>添加用户</title>
         <meta charset="UTF-8"/>
   <link rel="stylesheet" href="css/common.css"/>
   <link rel="stylesheet" href="css/main.css"/>
</head>
<body>
    <form id="form1" runat="server">
           <div class="box">
          <div class="box_border">
            <div class="box_top"><b class="pl15">添加用户</b></div>
            <div class="box_center pt10 pb10">
              <table class="form_table" border="0" cellpadding="0" cellspacing="0">
                <tr>
                  <td>用户名：</td>
                  <td>   
                      <asp:TextBox ID="username" class="input-text lh25" size="20" runat="server"></asp:TextBox>
                  </td>
                  <td>性别:</td>
                  <td>
                    <span class="fl">
                      <div class="select_border"> 
                        <div class="select_containers "> 
                            <asp:ListBox ID="LBxingbie" class="select" runat="server" Rows="1">
                                <asp:ListItem>男</asp:ListItem>
                                <asp:ListItem>女</asp:ListItem>
                            </asp:ListBox>                        
                        </div> 
                      </div> 
                    </span>
                  </td>
                  <td>密码:</td>
                  <td><%--<input type="text" name="name" class="input-text lh25" size="10">--%>
                      <asp:TextBox ID="TBmima" class="input-text lh25" size="20" runat="server"></asp:TextBox>
                  </td>
                  <td>&nbsp;</td>
                  <td>
                    <span class="fl">
                      <div class="select_border"> 
                        <div class="select_containers "> 
                        &nbsp;</div> 
                      </div> 
                    </span>
                  </td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>
                    <span class="fl">
                      <div class="select_border"> 
                        <div class="select_containers "> 
                        &nbsp;</div> 
                      </div> 
                    </span>
                  </td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td><asp:Button ID="Bttianjia"  class="ext_btn" runat="server" Text="添加用户" 
                          onclick="Bttianjia_Click" /></td>
                  <td>&nbsp;</td>
                  <td>
                      &nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>
                      &nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>
                    <span class="fl">
                      <div class="select_border"> 
                      </div> 
                    </span>
                  </td>
                </tr>
              </table>
            </div>            
          </div>
        </div>

    </form>
</body>
</html>
