<%@ Page Language="C#" AutoEventWireup="true" CodeFile="news.aspx.cs" Inherits="userControl_new" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="gb2312">
<title>宁晋县政务服务中心</title>
<meta name="Keywords" content="" />
<meta name="Description" content="" />
<link href="css/index.css" rel="stylesheet"/>
<link href="css/main.css" rel="stylesheet"/>

</head>
<body>
    <form id="form1" runat="server">
    <header>
  <div class="headtop">
    <div class="timer box"><span><a onclick="javascript:window.external.addFavorite('/','广安市广安区卫生和计划生育局')" href="/">加入收藏</a> | <a onclick="this.style.behavior='url(#default#homepage)';this.setHomePage('/');" href="/">设为首页</a></span><script charset='gb2312' type="text/javascript" src="js/timer.js"></script></div>
  </div>
  <div class="logo box"></div>
  <nav id="nav" class="box">
    <ul>
      <li><a href="default.aspx">网站首页</a></li>
      <li><a href="#">机构设置</a></li>
      <li><a href="list.html">政策法规</a></li>
      <li><a href="list.html">纪检监察</a></li>
      <li><a href="new.html">政务公开</a></li>
      <li><a href="email.html">下载专区</a></li>
      <li><a href="gbook.html">办事指南</a></li>
    </ul>
  </nav>
  <script src="js/silder.js"></script> 
</header>
<!--头部 end-->
<article>
<div class="info_text">
    <h2><span>您现在的位置: <a href="/">广安普法网</a>>><a href="/">司法行政</a>>><a href="/">正文</a></span>公司新闻</h2>
    <ul>
      <p class="a_title"><asp:Label ID="Ltitle1" runat="server" 
              Text="title1"></asp:Label>
        </p>
      <p class="p_title"><asp:Label ID="Ltitle2" runat="server" Text="title2"></asp:Label></p>
      <p class="box_p"><span>时间：<asp:Label ID="Label3" runat="server" Text="Label"></asp:Label></span><span>编辑：<a href="mailto:282267907@qq.com"><asp:Label ID="Lname" runat="server" Text="Lname"></asp:Label></a></span><span>来源：<asp:Label ID="Lfrom" runat="server" Text="Lfrom"></asp:Label></span><span>点击：<asp:Label ID="Lnum" runat="server" Text="Lnum"></asp:Label></span></p>
      <ul class="a_content">
        <p><asp:Label ID="Label4" runat="server" Text="Label"></asp:Label></p>
      </ul>
    </ul>

  </div>
  
</article>
<footer>
  <div class="footnav">
    <ul>
      <li><a href="/">网站首页</a></li>
      <li><a href="/">机构设置</a></li>
      <li><a href="/">政策法规</a></li>
      <li><a href="/">纪检监察</a></li>
      <li><a href="/">政务公开</a></li>
      <li><a href="/">下载专区</a></li>
      <li><a href="/">办事指南</a></li>
    </ul>
  </div>
  <div class="copyright">
    <p>Copyright  2013 All Rights Reserved 版权所有 广安市广安区卫生和计划生育局</p>
    <p>地址：广安市广安区恒荣街7号 联系电话：0826-2222962</p>
    <p>备案号：蜀11018486号</p>
  </div>
</footer>
    </form>
</body>
</html>
