﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="gbook.aspx.cs" Inherits="gbook" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset='gb2312'>
<title>广安市广安区卫生和计划生育局</title>
<meta name="Keywords" content="" >
<meta name="Description" content="" >
<link href="css/index.css" rel="stylesheet">
<link href="css/main.css" rel="stylesheet">
<!--[if lt IE 9]>
<script src="js/modernizr.js"></script>
<![endif]-->
<!--[if IE 6]>
 <script  src="js/png.js"></script>
 <script type="text/javascript">
    EvPNG.fix('.logo');
 </script>
<![endif]-->
</head>
<body>
    <form id="form1" runat="server">
    <div class="headtop">
    <div class="timer box"><span><a onclick="javascript:window.external.addFavorite('/','广安市广安区卫生和计划生育局')" href="/">加入收藏</a> | <a onclick="this.style.behavior='url(#default#homepage)';this.setHomePage('/');" href="/">设为首页</a></span><script charset='gb2312' type="text/javascript" src="js/timer.js"></script></div>
  </div>
  <div class="logo box"></div>
  <nav id="nav" class="box">
    <ul>
      <li><a href="index.html">网站首页</a></li>
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
  <div class="tsjb">
    <h2><span class="location">当前位置：<a href="/">网站首页</a> >> 投诉举报</span>投诉举报</h2>
    <div class="note_show">
      <p>本栏目主要受理广安区范围内，公民、法人和其他组织对局机关和工作人员在实施管理和提供服务过程中投诉影响卫生事业发展环境和机关效能问题的各类投诉。
      <p>请填写下面表单，您的投诉事项将及时反馈给您，非常感谢你的支持。</p>
      <p class="ps_red">注：如您需要得到有关方面的答复，请您详细填写联系电话或联系地址！</p>
    </div>
 <div class="notebook">   
      <form action="../../enews/index.php" method="post" name="form1" id="form2">
    <div class="gbook left">
     <ul>
       <li>您的姓名：</li>
       <li>联系邮箱：</li>
       <li>联系电话：</li>
       <li class="bookarea">留言内容：</li>
       <li class="bookbtn"></li>
     </ul>
    </div>
    <div class="gform left">
    <ul>
     <li><input name="name" type="text" id="name"><span>*（必填）</span></li>
     <li><input name="email" type="text" id="email"><span>*（必填）</span></li>
     <li><input name="mycall" type="text" id="mycall"></li>
     <li class="bookare"><textarea name="lytext" cols="60" rows="12" id="lytext"></textarea></li>
     <li class="bookbtn"><input type="submit" name="Submit3" value="提交" class="btn"><input type="reset" name="Submit22" value="重置" class="btn btnrest"><input name="enews" type="hidden" id="enews" value="AddGbook"></li>
    </ul>
    </div>
    </form>
    </div>
    
  
  
      
    
    
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
