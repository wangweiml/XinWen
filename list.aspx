<%@ Page Language="C#" AutoEventWireup="true" CodeFile="list.aspx.cs" Inherits="list" %>

<%@ Register Src="userControl/syhead.ascx" TagName="syhead" TagPrefix="uc1" %>
<%--//头部信息--%>
<%@ Register Src="userControl/foot.ascx" TagName="foot" TagPrefix="uc2" %>
<%--//尾部信息--%>
<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="gb2312"/>
    <title>宁晋县电子政务管理办公室</title>
    <meta name="Keywords" content=""/>
    <meta name="Description" content=""/>
    <link href="css/index.css" rel="stylesheet"/>
    <link href="css/main.css" rel="stylesheet"/>
</head>
<body>
    <form id="form1" runat="server">
    <uc1:syhead ID="Syhead1" runat="server" />
    <!--头部 end-->
    <div class="contain">
        <div class="listl left">
            <h2>
                栏目导航</h2>
            <ul>
                <li><a href="/">通知公告</a></li>
                <li><a href="/">公司动态</a></li>
                <li><a href="/">行业动态</a></li>
                <li><a href="/">国内大事</a></li>
                <li><a href="/">国际大事</a></li>
            </ul>
        </div>
        <div class="listr right">
            <h2>
                <span>您现在的位置: <a href="/">宁晋县政务中心</a>>><a href="/">中心动态</a>>></span>中心新闻</h2>
            <ul>
                <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>
                        <li><a href='/news.aspx?id=<%#Eval("id")%>' target="_blank"><span>
                            <%#Eval("time", "{0:D}")%></span>
                            <%# DBaccessOperateData.interceptStr( Eval("title").ToString(),28) %>
                        </a></li>
                    </ItemTemplate>
                </asp:Repeater>
            </ul>
            <div class="blank">
            </div>
            <div class="page">
                <webdiyer:AspNetPager ID="shnewspage" runat="server" Width="100%" UrlPaging="true"
                    ShowPageIndexBox="Always" PageIndexBoxType="DropDownList" TextBeforePageIndexBox="Go To Page: "
                    HorizontalAlign="right" OnPageChanged="shnewspage_PageChanged" EnableTheming="true"
                    FirstPageText="首页" LastPageText="尾页" NextPageText="下一页" PrevPageText="上一页" CurrentPageButtonPosition="Center">
                </webdiyer:AspNetPager>
            </div>
        </div>
    </div>
    <footer>
   <uc2:foot ID="Foot2" runat="server" />
</footer>
    </form>
</body>
</html>
