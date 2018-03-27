<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="admin_login" %>

<%@ Register Src="userControl/foot.ascx" TagName="foot" TagPrefix="uc2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" content="" />
    <%--设置字符集--%>
    <link rel="stylesheet" href="css/login.css" />
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <title>后台登陆</title>
</head>
<body>
    <form id="form1" runat="server">
    <div id="login_top">
        <div id="welcome">
            欢迎使用宁晋县电子政务信息管理系统
        </div>
        <div id="back">
            <a href="/default.aspx">返回首页</a>&nbsp;&nbsp; | &nbsp;&nbsp; <a href="#">帮助</a>
        </div>
    </div>
    <%--login最上部分信息--%>
    <div id="login_center">
        <div id="login_area">
            <div id="login_form">
                <div id="login_tip">
                    用户登录
                </div>
                <div>
                    <asp:TextBox ID="TBlogin" class="username" runat="server"></asp:TextBox>
                </div>
                <div>
                    <asp:TextBox ID="TBpwd" class="pwd" runat="server" TextMode="Password"></asp:TextBox>
                </div>
                <div id="btn_area">
                    <asp:Button CssClass="sub_btn" runat="server" Text="登&nbsp;&nbsp;录" 
                        OnClick="sub_btn_Click" />
                    <input type="reset"  class="sub_btn_right" runat="server" value="清&nbsp;&nbsp;除" />
                </div>
            </div>
        </div>
    </div>
    <uc2:foot ID="Foot2" runat="server" />
    </form>
</body>
</html>
