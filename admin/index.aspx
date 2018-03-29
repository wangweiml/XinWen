<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="admin_index" %>

<%@ Register Src="userControl/foot.ascx" TagName="foot" TagPrefix="uc2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <meta content="" charset="UTF-8"/>
  <link rel="stylesheet" href="css/common.css"/>
  <link rel="stylesheet" href="css/style.css"/>
  <script type="text/javascript" src="js/jquery.min.js"></script>
  <script type="text/javascript" src="js/jquery.SuperSlide.js"></script>
  <script type="text/javascript">
      $(function () {
          $(".sideMenu").slide({
              titCell: "h3",
              targetCell: "ul",
              defaultIndex: 0,
              effect: 'slideDown',
              delayTime: '500',
              trigger: 'click',
              triggerTime: '150',
              defaultPlay: true,
              returnDefault: false,
              easing: 'easeInQuint',
              endFun: function () {
                  scrollWW();
              }
          });
          $(window).resize(function () {
              scrollWW();
          });
      });
      function scrollWW() {
          if ($(".side").height() < $(".sideMenu").height()) {
              $(".scroll").show();
              var pos = $(".sideMenu ul:visible").position().top - 38;
              $('.sideMenu').animate({ top: -pos });
          } else {
              $(".scroll").hide();
              $('.sideMenu').animate({ top: 0 });
              n = 1;
          }
      }

      var n = 1;
      function menuScroll(num) {
          var Scroll = $('.sideMenu');
          var ScrollP = $('.sideMenu').position();
          if (num == 1) {
              Scroll.animate({ top: ScrollP.top - 38 });
              n = n + 1;
          } else {
              if (ScrollP.top > -38 && ScrollP.top != 0) { ScrollP.top = -38; }
              if (ScrollP.top < 0) {
                  Scroll.animate({ top: 38 + ScrollP.top });
              } else {
                  n = 1;
              }
              if (n > 1) {
                  n = n - 1;
              }
          }
      }

      function invalue(msg) {
          $("#here_area").empty();
          $("#here_area").append('当前位置：' + msg);
      }
  </script>
  <title>后台管理</title>
</head>
<body>
    <form id="form1" runat="server">
    <div class="top">
      <div id="top_t">
        <div id="logo" class="fl"></div>
        <div id="photo_info" class="fr">
          <div id="photo" class="fl">
            <a href="#"><img src="images/a.png" alt="" width="60" height="60"/></a>
          </div>
          <div id="base_info" class="fr">
            <div class="help_info">
              <a href="#" id="hp">&nbsp;</a>
              <a href="#" id="gy">&nbsp;</a>
              <a href="login.aspx" id="out">&nbsp;</a>
            </div>
            <div class="info_center">
              admin
              <span id="nt">通知</span><span><a href="#" id="notice">3</a></span>
            </div>
          </div>
        </div>
      </div>
      <div id="side_here">
        <div id="side_here_l" class="fl"></div>
        <div id="here_area" class="fl">当前位置：</div>
      </div>
    </div>
    <div class="side">
        <div class="sideMenu" style="margin:0 auto">
          <h3>新闻管理</h3>
          <ul>
            <li onclick="invalue('添加新闻')"><a href="addnews.aspx" target="right" >添加新闻</a></li>
            <li ><a href="updatenews.aspx" target="right">修改新闻</a></li>
            <li onclick="invalue('审核新闻')"><a href="shnews.aspx" target="right">审核新闻</a></li>
            <li onclick="invalue('删除新闻')"><a href="delnews.aspx" target="right">删除新闻</a></li>


<%--            <ul class="menuson">
        <li><cite></cite><a href="index.html" target="rightFrame">首页模版</a><i></i></li>
        <li class="active"><cite></cite><a href="right.html" target="rightFrame">数据列表</a><i></i></li>
        <li><cite></cite><a href="imgtable.html" target="rightFrame">图片数据表</a><i></i></li>
        <li><cite></cite><a href="form.html" target="rightFrame">添加编辑</a><i></i></li>
        <li><cite></cite><a href="imglist.html" target="rightFrame">图片列表</a><i></i></li>
        <li><cite></cite><a href="imglist1.html" target="rightFrame">自定义</a><i></i></li>
        <li><cite></cite><a href="tools.html" target="rightFrame">常用工具</a><i></i></li>
        <li><cite></cite><a href="filelist.html" target="rightFrame">信息管理</a><i></i></li>
        <li><cite></cite><a href="tab.html" target="rightFrame">Tab页</a><i></i></li>
        <li><cite></cite><a href="error.html" target="rightFrame">404页面</a><i></i></li>
        </ul>    --%>

          </ul>
          <h3>通知公告管理</h3>
          <ul>
            <li>添加通知公告</li>
            <li>修改通知公告</li>
            <li>删除通知公告</li>

          </ul>
          <h3> 民主评议</h3>
          <ul>
            <li><a href="MZPYzxbz.aspx" target="right">中心领导班子评议</a></li>
            <li><a href="MZPYzxbgry.aspx" target="right">中心办公室人员评议</a></li>
            <li>中心窗口负责人评议</li>
            <li>中心股室、窗口互评</li>
            <li>中心窗口负责人互评票</li>

          </ul>
          <h3>民主评议结果</h3>
          <ul>
            <li ><a href="MZPYzxbzjg.aspx" target="right">中心领导班子评议结果</a></li>
            <li>中心办公室人员评议结果</li>
            <li>中心窗口负责人评议结果</li>
            <li >中心股室、窗口互评结果</li>
            <li>中心窗口负责人互评票结果</li>
          </ul>
          <h3> 火车头</h3>
       <ul>
      
            <li onclick="invalue('文章')"><a href="Artice.aspx" target="right">文章</a></li>
            <li onclick="invalue('视频')"><a href="Vidio.aspx" target="right">视频</a></li>
            <li onclick="invalue('Redis')"><a href="Redis.aspx" target="right">Redis</a></li>
            <li>导航菜单</li>
          </ul>
          <h3> 用户管理</h3>
          <ul>
              <li><a href="adduser.aspx" target="right">添加用户</a></li>
              <li><a href="updatepwd.aspx" target="right">修改密码</a></li>
              <li><a href="deluser.aspx" target="right">删除用户</a></li>
              <li>1</li>
              <li>2</li>
            </ul>
       </div>
    </div>
    <div class="main">
       <iframe name="right" id="rightMain" src="main.aspx" frameborder="no" scrolling="auto" width="100%" height="auto" allowtransparency="true"></iframe>
    </div>
    
  <div class="bottom">
      <div id="bottom_bg"> 
        Copyright 2015 All Rights Reserved 版权所有 宁晋县电子政务管理办公室
    </div>
    <div class="scroll">
          <a href="javascript:;" class="per" title="使用鼠标滚轴滚动侧栏" onclick="menuScroll(1);"></a>
          <a href="javascript:;" class="next" title="使用鼠标滚轴滚动侧栏" onclick="menuScroll(2);"></a>
    </div>
    </form>
</body>
</html>
