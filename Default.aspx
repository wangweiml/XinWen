<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Src="userControl/syhead.ascx" TagName="syhead" TagPrefix="uc1" %>
<%@ Register Src="userControl/foot.ascx" TagName="foot" TagPrefix="uc2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html"; charset="gb2312" />
<title>宁晋县电子政务管理办公室</title>
<meta name="Keywords" content=""/>
<meta name="Description" content="" />

<link href="css/index.css" rel="stylesheet"/>
<%--左上角动态图片css--%>
<style type="text/css">
        .slideBox{ width:300px; height:235px; overflow:hidden; position:relative; border:1px solid #ddd; float:left; }
		.slideBox .hd{ height:25px; overflow:hidden; position:absolute; right:35px; bottom:15px; z-index:1; }
		.slideBox .hd ul{ overflow:hidden; zoom:1; float:left;  }
		.slideBox .hd ul li{ float:left; margin-right:2px;  width:15px; height:15px; line-height:14px; text-align:center; background:#fff; cursor:pointer; }
		.slideBox .hd ul li.on{ background:#f00; color:#fff; }
		.slideBox .bd{ position:relative; height:100%; z-index:0;}
		.slideBox .bd ul{ height:100%;  padding:0px;}
		.slideBox .bd li{ zoom:1; vertical-align:middle; }
		.slideBox .bd img{ width:300px; height:235px; display:block;}

		/* 下面是前/后按钮代码，如果不需要删除即可 */
		.slideBox .prev,
		.slideBox .next{ position:absolute; left:3%; top:50%; margin-top:-25px; display:block; width:32px; height:40px; background:url(img/1/slider-arrow.png) -110px 5px no-repeat; filter:alpha(opacity=50);opacity:0.5;   }
		.slideBox .next{ left:auto; right:3%; background-position:8px 5px; }
		.slideBox .prev:hover,
		.slideBox .next:hover{ filter:alpha(opacity=100);opacity:1;  }
		.slideBox .prevStop{ display:none;  }
		.slideBox .nextStop{ display:none;  }
</style>

<script src="js/jquery-1.7.2.min.js" language="javascript" type="text/javascript"></script>
<script src="js/jquery.SuperSlide.2.1.1.js" language="javascript" type="text/javascript"></script>
</head>
<body>
    <form id="form1" runat="server">
   <uc1:syhead ID="Syhead1" runat="server"  />
<!--头部 end-->
<div class="banner box"><img  alt="" src="images/banner.jpg"/></div>

    <div class=" box">
        <iframe name="weather_inc" src="http://i.tianqi.com/index.php?c=code&id=2&py=ningjin" width="1000" height="70" frameborder="0" marginwidth="0" marginheight="0" scrolling="no"></iframe>
    </div>

<div class="box">
  <div class="news left">
    <h2><span class="more"><a href="/news.aspx" target="_blank">更多..</a></span>新闻中心</h2>
        <div id="slideBox" class="slideBox">
            <div class="hd">
                <ul>
                    <li>1</li><li>2</li><li>3</li></ul>
            </div>
            <div class="bd">
                <ul>
                    <li><a href="http://www.SuperSlide2.com" target="_blank">
                        <img  alt="" src="img/1/pic1.jpg" /></a></li>
                    <li><a href="http://www.SuperSlide2.com" target="_blank">
                        <img alt="" src="img/1/pic2.jpg" /></a></li>
                    <li><a href="http://www.SuperSlide2.com" target="_blank">
                        <img alt="" src="img/1/pic3.jpg" /></a></li>
                </ul>
            </div>
            <!-- 下面是前/后按钮代码，如果不需要删除即可 -->
            <a class="prev" href="javascript:void(0)"></a>
            <a class="next" href="javascript:void(0)">
            </a>
        </div>
        <script language="javascript" type="text/javascript">
            jQuery(".slideBox").slide({ mainCell: ".bd ul", autoPlay: true });
        </script>


      <div class="center_news right">
        <section class="c_n_top">
          <h3><asp:Label ID="Lbtoutiaobiaoti" runat="server" Text=""></asp:Label></h3>
          <p><asp:Label ID="Lbtoutiaoneirong" runat="server" Text=""></asp:Label>
          [<a href='/news.aspx?id=<%=tid%>' target="_blank" >详情</a>]</p>
        </section>
        <ul>
            <asp:Repeater ID="xwzx" runat="server">
            <ItemTemplate>
            <li>             
            <a href='/news.aspx?id=<%#Eval("id")%>' target="_blank">
             <%# DBaccessOperateData.interceptStr( Eval("title").ToString(),28) %>
             <img alt="new" src="images/new.gif">
             </a>
             &nbsp;</li>
             </ItemTemplate>
            </asp:Repeater>
        </ul>
      </div>
  </div>

  <%--通知公告部分--  # Eval("title")--%>
    <div class="txtMarquee-top right">
        <h2>
            <a href="/">通知公告</a></h2>
        <div class="bd1">
            <ul>
                <asp:Repeater ID="tzgg" runat="server">
                    <ItemTemplate>
                        <li><a href='/news.aspx?id=<%#Eval("id")%>' target="_blank">
                            <%# DBaccessOperateData.interceptStr( Eval("title").ToString(),12) %>
                        </a></li>
                    </ItemTemplate>
                </asp:Repeater>
            </ul>
        </div>
    </div>
    <script type="text/javascript">
        jQuery(".txtMarquee-top").slide({ mainCell: ".bd1 ul", autoPlay: true, effect: "topMarquee", vis: 10, interTime: 50 });
    </script>
    </div>


<<div class="box">
  <div class="blank"></div>
  <div class="ad left"><img src="images/ad01.jpg"></div>
  <div class="ad right"><img src="images/ad02.jpg"></div>
  <div class="blank"></div>
  <div class="linews left">
    <h3><span><a href="/" class="more">更多..</a></span>办事指南</h3>
    <ul>
      <li><a href="/" target="_blank">广安区喜摘全市人口计生统计与信息岗位技能竞赛桂冠开业贸易争端 矛头直指</a></li>
      <li><a href="/" target="_blank">广安区卫计局开展“道德讲堂”活动</a></li>
      <li><a href="/" target="_blank">广安区中医院开展“全国高血压日”义诊宣传活动</a></li>
      <li><a href="/" target="_blank">广安区“五心”做好孕前优生健康检查工作</a></li>
      <li><a href="/" target="_blank">广安区实施“五项工程”帮助计生家庭发家致富</a></li>
      <li><a href="/" target="_blank">美国挑起对华贸易争端 矛头直指</a></li>
    </ul>
  </div>
  <div class="linews left ln">
    <h3><span><a href="/" class="more">更多..</a></span>政策法规</h3>
    <ul>
      <li><a href="/" target="_blank">广安区喜摘全市人口计生统计与信息岗位技能竞赛桂冠</a></li>
      <li><a href="/" target="_blank">广安区卫计局开展“道德讲堂”活动</a></li>
      <li><a href="/" target="_blank">广安区中医院开展“全国高血压日”义诊宣传活动</a></li>
      <li><a href="/" target="_blank">广安区“五心”做好孕前优生健康检查工作</a></li>
      <li><a href="/" target="_blank">广安区实施“五项工程”帮助计生家庭发家致富</a></li>
      <li><a href="/" target="_blank">美国挑起对华贸易争端 矛头直指</a></li>
    </ul>
  </div>
  <div class="linews right">
    <h3><span><a href="/" class="more">更多..</a></span>公示栏</h3>
    <ul>
      <li><a href="/" target="_blank">广安区喜摘全市人口计生统计与信息岗位技能竞赛桂冠</a></li>
      <li><a href="/" target="_blank">广安区卫计局开展“道德讲堂”活动</a></li>
      <li><a href="/" target="_blank">广安区中医院开展“全国高血压日”义诊宣传活动</a></li>
      <li><a href="/" target="_blank">广安区“五心”做好孕前优生健康检查工作</a></li>
      <li><a href="/" target="_blank">广安区实施“五项工程”帮助计生家庭发家致富</a></li>
      <li><a href="/" target="_blank">美国挑起对华贸易争端 矛头直指</a></li>
    </ul>
  </div>
  <div class="blank"></div>
  <div class="linews left">
    <h3><span><a href="/" class="more">更多..</a></span>办事统计</h3>
    <ul>
      <li><a href="/" target="_blank">广安区喜摘全市人口计生统计与信息岗位技能竞赛桂冠</a></li>
      <li><a href="/" target="_blank">广安区卫计局开展“道德讲堂”活动</a></li>
      <li><a href="/" target="_blank">广安区中医院开展“全国高血压日”义诊宣传活动</a></li>
      <li><a href="/" target="_blank">广安区“五心”做好孕前优生健康检查工作</a></li>
      <li><a href="/" target="_blank">广安区实施“五项工程”帮助计生家庭发家致富</a></li>
      <li><a href="/" target="_blank">美国挑起对华贸易争端 矛头直指</a></li>
    </ul>
  </div>
  <div class="linews left ln">
    <h3><span><a href="/" class="more">更多..</a></span>便民服务</h3>
    <ul>
      <li><a href="/" target="_blank">广安区喜摘全市人口计生统计与信息岗位技能竞赛桂冠</a></li>
      <li><a href="/" target="_blank">广安区卫计局开展“道德讲堂”活动</a></li>
      <li><a href="/" target="_blank">广安区中医院开展“全国高血压日”义诊宣传活动</a></li>
      <li><a href="/" target="_blank">广安区“五心”做好孕前优生健康检查工作</a></li>
      <li><a href="/" target="_blank">广安区实施“五项工程”帮助计生家庭发家致富</a></li>
      <li><a href="/" target="_blank">美国挑起对华贸易争端 矛头直指</a></li>
    </ul>
  </div>
  <div class="linews right">
    <h3><span><a href="/" class="more">更多..</a></span>办事情况</h3>
    <ul>
      <li><a href="/" target="_blank">广安区喜摘全市人口计生统计与信息岗位技能竞赛桂冠</a></li>
      <li><a href="/" target="_blank">广安区卫计局开展“道德讲堂”活动</a></li>
      <li><a href="/" target="_blank">广安区中医院开展“全国高血压日”义诊宣传活动</a></li>
      <li><a href="/" target="_blank">广安区“五心”做好孕前优生健康检查工作</a></li>
      <li><a href="/" target="_blank">广安区实施“五项工程”帮助计生家庭发家致富</a></li>
      <li><a href="/" target="_blank">美国挑起对华贸易争端 矛头直指</a></li>
    </ul>
  </div>
  <div class="blank"></div>
  <div class="ad"><img src="images/ad03.jpg"></div>
  <div class="blank"></div>
  <div class="zhishu left">
    <h3>入驻单位
      <ul id="tab">
        <li class="current"><a href="/">工商局</a></li>
        <li><a href="/">民政局</a></li>
        <li><a href="/">人事劳动局</a></li>
        <li><a href="/">发改局</a></li>
        <li><a href="/">环保局</a></li>
        <li><a href="/">质监局</a></li>
        <li><a href="/">国税局</a></li>
        <li><a href="/">地税局</a></li>
      </ul>
    </h3>
    <section>
      <div id="content">
        <ul style="display:block;">
          <div class="zs_pic left"> <img src="images/newspic1.jpg"> </div>
          <div class="zs_news right">
            
            <ol>
            <asp:Repeater ID="xwzx1" runat="server">
            <ItemTemplate>
            <li>             
            <a href='/news.aspx?id=<%#Eval("id")%>' target="_blank"><span>2013-12-24</span>
             <%# DBaccessOperateData.interceptStr( Eval("title").ToString(),28) %>
             <img alt="new" src="images/new.gif">
             </a>
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
             </ItemTemplate>
            </asp:Repeater>
            </ol>
          </div>
        </ul>
        <ul>
          <div class="zs_pic left"> <img src="images/newspic1.jpg"> </div>
          <div class="zs_news right">
            <ol>
              <li><a href="/" target="_blank"><span>2013-12-24</span>广安区中医院开展“全国高血压日”义诊宣传活动</a></li>
              <li><a href="/" target="_blank"><span>2013-12-24</span>广安区“五心”做好孕前优生健康检查工作</a></li>
              <li><a href="/" target="_blank"><span>2013-12-24</span>广安区实施“五项工程”帮助计生家庭发家致富</a></li>
              <li><a href="/" target="_blank"><span>2013-12-24</span>广安区喜摘全市人口计生统计与信息岗位技能竞赛桂冠</a></li>
              <li><a href="/" target="_blank"><span>2013-12-24</span>广安区卫计局开展“道德讲堂”活动</a></li>
              <li><a href="/" target="_blank"><span>2013-12-24</span>美国挑起对华贸易争端 矛头直指</a></li>
              <li><a href="/" target="_blank"><span>2013-12-24</span>广安区中医院开展“全国高血压日”义诊宣传活动</a></li>
            </ol>
          </div>
        </ul>

        <ul>
          <div class="zs_pic left"> <img src="images/newspic1.jpg"> </div>
          <div class="zs_news right">
            <ol>
              <li><a href="/" target="_blank"><span>2013-12-26</span>广安区喜摘全市人口计生统计与信息岗位技能竞赛桂冠</a></li>
              <li><a href="/" target="_blank"><span>2013-12-26</span>广安区卫计局开展“道德讲堂”活动</a></li>
              <li><a href="/" target="_blank"><span>2013-12-24</span>广安区中医院开展“全国高血压日”义诊宣传活动</a></li>
              <li><a href="/" target="_blank"><span>2013-12-24</span>广安区“五心”做好孕前优生健康检查工作</a></li>
              <li><a href="/" target="_blank"><span>2013-12-24</span>广安区实施“五项工程”帮助计生家庭发家致富</a></li>
              <li><a href="/" target="_blank"><span>2013-12-24</span>美国挑起对华贸易争端 矛头直指</a></li>
              <li><a href="/" target="_blank"><span>2013-12-24</span>广安区中医院开展“全国高血压日”义诊宣传活动</a></li>
            </ol>
          </div>
        </ul>


        <ul style="display:block;">
          <div class="zs_pic left"> <img src="images/newspic1.jpg"> </div>
          <div class="zs_news right">
            <ol>
              <li><a href="/" target="_blank"><span>2013-12-29</span>广安区喜摘全市人口计生统计与信息岗位技能竞赛桂冠</a></li>
              <li><a href="/" target="_blank"><span>2013-12-24</span>广安区卫计局开展“道德讲堂”活动</a></li>
              <li><a href="/" target="_blank"><span>2013-12-24</span>广安区中医院开展“全国高血压日”义诊宣传活动</a></li>
              <li><a href="/" target="_blank"><span>2013-12-24</span>广安区“五心”做好孕前优生健康检查工作</a></li>
              <li><a href="/" target="_blank"><span>2013-12-24</span>广安区实施“五项工程”帮助计生家庭发家致富</a></li>
              <li><a href="/" target="_blank"><span>2013-12-24</span>美国挑起对华贸易争端 矛头直指</a></li>
              <li><a href="/" target="_blank"><span>2013-12-24</span>广安区中医院开展“全国高血压日”义诊宣传活动</a></li>
            </ol>
          </div>
        </ul>

      </div>
    </section>
  </div>
  <div class="hd1 right">
  <h3>互动交流</h3>
  <ul>
    <li><a href="gbook.aspx" target="_blank">投诉举报</a></li>
    <li><a href="email.aspx" target="_blank">主任信箱主任信箱</a></li>   
  </ul>
  </div>
    
  </div>


    <div class="links">
        <p>
            相关链接:</p>
        <ul>
            <li><a href="/">邢台政务服务中心网</a></li>
            <li><a href="/">宁晋县人民政府</a></li>
            <li><a href="/">宁晋县纪律检查委员会</a></li>
            <li><a href="/">宁晋县人事劳动局</a></li>
            <li><a href="/">宁晋县教育局</a></li>
        </ul>
        <ul style="display: none">
            <a href="/">
                <img src="images/ad01.jpg"></a><a href="/"><img src="images/ad02.jpg"></a>
        </ul>
    </div>
    <footer>
 <uc2:foot ID="Foot2" runat="server" />
</footer>

    </form>

</body>
</html>
