<%@ Page Language="C#" AutoEventWireup="true" CodeFile="addnews.aspx.cs" Inherits="admin_addnews" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>添加新闻</title>
    <link rel="stylesheet" href="css/common.css"/>
   <link rel="stylesheet" href="css/main.css"/>

   <meta charset="utf-8" />
    <link rel="stylesheet" href="kindeditor/themes/default/default.css" />
	<link rel="stylesheet" href="kindeditor/plugins/code/prettify.css" />
	<script type="text/jscript" charset="utf-8" src="kindeditor/kindeditor.js"></script>
	<script type="text/jscript" charset="utf-8" src="/kindeditor/lang/zh_CN.js"></script>
	<script type="text/jscript" charset="utf-8" src="/kindeditor/plugins/code/prettify.js"></script>
	<script type="text/javascript">
	    KindEditor.ready(function (K) {
	        var editor1 = K.create('#content1', {
	            cssPath: '/kindeditor/plugins/code/prettify.css',
	            uploadJson: '/kindeditor/asp.net/upload_json.ashx',
	            fileManagerJson: '/kindeditor/asp.net/file_manager_json.ashx',
	            allowFileManager: true,
	            afterCreate: function () {
	                var self = this;
	                K.ctrl(document, 13, function () {
	                    self.sync();
	                    K('form[name=example]')[0].submit();
	                });
	                K.ctrl(self.edit.doc, 13, function () {
	                    self.sync();
	                    K('form[name=example]')[0].submit();
	                });
	            }
	        });
	        prettyPrint();
	    });
	</script>

</head>
<body>
    <form id="form1" runat="server">
     <div id="forms" class="mt10">
        <div class="box">
          <div class="box_border">
            <div class="box_center">
               <table class="form_table pt15 pb15" width="100%" border="0" cellpadding="0" cellspacing="0">
                 <tr>
                  <td class="td_right">新闻主标题：</td>
                  <td class=""> 
                      <asp:TextBox ID="TBnewszbt" class="input-text lh30" size="40" runat="server"></asp:TextBox>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator1"  ControlToValidate="TBnewszbt" runat="server" 
                          ErrorMessage="新闻主标题不能为空！"  ForeColor="Red"
                          Display="Static">
                          </asp:RequiredFieldValidator>
                  </td>
                  <td class="td_right">&nbsp;</td><td>&nbsp;</td>
                </tr>
                <tr >
                  <td class="td_right">新闻副标题：</td>
                  <td class="">
                      <asp:TextBox ID="TBnewsfbt" class="input-text lh30" size="40" runat="server"></asp:TextBox></td>
                 </tr>
                <tr >
                  <td class="td_right">隶属栏目：</td>
                  <td class="">
 
                    <span class="fl">
                      <div class="select_border"> 
                        <div class="select_containers "> 
                            <asp:ListBox ID="ListBox1"  class="select" runat="server" Rows="1">
                                <asp:ListItem Value="中心新闻"></asp:ListItem>
                            </asp:ListBox>
                        </div> 
                      </div> 
                    </span>
                  </td>
                 </tr>
                 <tr>
                  <td class="td_right">新闻内容：</td>
                  <td class="">
                    <textarea id="content1" rows="8" cols="1"  class="textarea" 
                          style="width:700px; height:300px;visibility:hidden;" runat="server"></textarea>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="content1" ForeColor="Red" ErrorMessage="新闻内容不能为空！！"></asp:RequiredFieldValidator>
                  </td>
                 </tr>
                 <tr>
                  <td class="td_right">单选：</td>
                  <td class="">
                    <input type="radio" name="status"> 可用
                    <input type="radio" name="status"> 不可用
                  </td>
                 </tr>
                 <tr>
                  <td class="td_right">多选：</td>
                  <td class="">
                    <input type="checkbox" name="check" > 1
                    <input type="checkbox" name="check" > 2
                    <input type="checkbox" name="check" > 3
                  </td>
                </tr>
                <tr>
                  <td class="td_right">文件：</td>
                  <td class=""><input type="file" name="file" class="input-text lh30" size="10"></td>
                 </tr>
                 <tr>
                   <td class="td_right">&nbsp;</td>
                   <td class="">
                     <%--<input type="button" name="button" class="btn btn82 btn_save2" value="保存"> --%>
                       <asp:Button ID="Btbc"  class="btn btn82 btn_save2" runat="server" Text="保存" 
                           onclick="Btbc_Click" />
                    <%--<input type="button" name="button" class="btn btn82 btn_res" value="重置"> --%>
                       <asp:Button ID="Btcz" class="btn btn82 btn_res" runat="server" Text="重置" />
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
