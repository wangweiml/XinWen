<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Src="userControl/syhead.ascx" TagName="syhead" TagPrefix="uc1" %>
<%@ Register Src="userControl/foot.ascx" TagName="foot" TagPrefix="uc2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html"; charset="gb2312" />
<title>�����ص����������칫��</title>
<meta name="Keywords" content=""/>
<meta name="Description" content="" />

<link href="css/index.css" rel="stylesheet"/>
<%--���ϽǶ�̬ͼƬcss--%>
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

		/* ������ǰ/��ť���룬�������Ҫɾ������ */
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
<!--ͷ�� end-->
<div class="banner box"><img  alt="" src="images/banner.jpg"/></div>

    <div class=" box">
        <iframe name="weather_inc" src="http://i.tianqi.com/index.php?c=code&id=2&py=ningjin" width="1000" height="70" frameborder="0" marginwidth="0" marginheight="0" scrolling="no"></iframe>
    </div>

<div class="box">
  <div class="news left">
    <h2><span class="more"><a href="/news.aspx" target="_blank">����..</a></span>��������</h2>
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
            <!-- ������ǰ/��ť���룬�������Ҫɾ������ -->
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
          [<a href='/news.aspx?id=<%=tid%>' target="_blank" >����</a>]</p>
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

  <%--֪ͨ���沿��--  # Eval("title")--%>
    <div class="txtMarquee-top right">
        <h2>
            <a href="/">֪ͨ����</a></h2>
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
    <h3><span><a href="/" class="more">����..</a></span>����ָ��</h3>
    <ul>
      <li><a href="/" target="_blank">�㰲��ϲժȫ���˿ڼ���ͳ������Ϣ��λ���ܾ�����ڿ�ҵó������ ìͷֱָ</a></li>
      <li><a href="/" target="_blank">�㰲�����ƾֿ�չ�����½��á��</a></li>
      <li><a href="/" target="_blank">�㰲����ҽԺ��չ��ȫ����Ѫѹ�ա����������</a></li>
      <li><a href="/" target="_blank">�㰲�������ġ�������ǰ����������鹤��</a></li>
      <li><a href="/" target="_blank">�㰲��ʵʩ������̡�����������ͥ�����¸�</a></li>
      <li><a href="/" target="_blank">��������Ի�ó������ ìͷֱָ</a></li>
    </ul>
  </div>
  <div class="linews left ln">
    <h3><span><a href="/" class="more">����..</a></span>���߷���</h3>
    <ul>
      <li><a href="/" target="_blank">�㰲��ϲժȫ���˿ڼ���ͳ������Ϣ��λ���ܾ������</a></li>
      <li><a href="/" target="_blank">�㰲�����ƾֿ�չ�����½��á��</a></li>
      <li><a href="/" target="_blank">�㰲����ҽԺ��չ��ȫ����Ѫѹ�ա����������</a></li>
      <li><a href="/" target="_blank">�㰲�������ġ�������ǰ����������鹤��</a></li>
      <li><a href="/" target="_blank">�㰲��ʵʩ������̡�����������ͥ�����¸�</a></li>
      <li><a href="/" target="_blank">��������Ի�ó������ ìͷֱָ</a></li>
    </ul>
  </div>
  <div class="linews right">
    <h3><span><a href="/" class="more">����..</a></span>��ʾ��</h3>
    <ul>
      <li><a href="/" target="_blank">�㰲��ϲժȫ���˿ڼ���ͳ������Ϣ��λ���ܾ������</a></li>
      <li><a href="/" target="_blank">�㰲�����ƾֿ�չ�����½��á��</a></li>
      <li><a href="/" target="_blank">�㰲����ҽԺ��չ��ȫ����Ѫѹ�ա����������</a></li>
      <li><a href="/" target="_blank">�㰲�������ġ�������ǰ����������鹤��</a></li>
      <li><a href="/" target="_blank">�㰲��ʵʩ������̡�����������ͥ�����¸�</a></li>
      <li><a href="/" target="_blank">��������Ի�ó������ ìͷֱָ</a></li>
    </ul>
  </div>
  <div class="blank"></div>
  <div class="linews left">
    <h3><span><a href="/" class="more">����..</a></span>����ͳ��</h3>
    <ul>
      <li><a href="/" target="_blank">�㰲��ϲժȫ���˿ڼ���ͳ������Ϣ��λ���ܾ������</a></li>
      <li><a href="/" target="_blank">�㰲�����ƾֿ�չ�����½��á��</a></li>
      <li><a href="/" target="_blank">�㰲����ҽԺ��չ��ȫ����Ѫѹ�ա����������</a></li>
      <li><a href="/" target="_blank">�㰲�������ġ�������ǰ����������鹤��</a></li>
      <li><a href="/" target="_blank">�㰲��ʵʩ������̡�����������ͥ�����¸�</a></li>
      <li><a href="/" target="_blank">��������Ի�ó������ ìͷֱָ</a></li>
    </ul>
  </div>
  <div class="linews left ln">
    <h3><span><a href="/" class="more">����..</a></span>�������</h3>
    <ul>
      <li><a href="/" target="_blank">�㰲��ϲժȫ���˿ڼ���ͳ������Ϣ��λ���ܾ������</a></li>
      <li><a href="/" target="_blank">�㰲�����ƾֿ�չ�����½��á��</a></li>
      <li><a href="/" target="_blank">�㰲����ҽԺ��չ��ȫ����Ѫѹ�ա����������</a></li>
      <li><a href="/" target="_blank">�㰲�������ġ�������ǰ����������鹤��</a></li>
      <li><a href="/" target="_blank">�㰲��ʵʩ������̡�����������ͥ�����¸�</a></li>
      <li><a href="/" target="_blank">��������Ի�ó������ ìͷֱָ</a></li>
    </ul>
  </div>
  <div class="linews right">
    <h3><span><a href="/" class="more">����..</a></span>�������</h3>
    <ul>
      <li><a href="/" target="_blank">�㰲��ϲժȫ���˿ڼ���ͳ������Ϣ��λ���ܾ������</a></li>
      <li><a href="/" target="_blank">�㰲�����ƾֿ�չ�����½��á��</a></li>
      <li><a href="/" target="_blank">�㰲����ҽԺ��չ��ȫ����Ѫѹ�ա����������</a></li>
      <li><a href="/" target="_blank">�㰲�������ġ�������ǰ����������鹤��</a></li>
      <li><a href="/" target="_blank">�㰲��ʵʩ������̡�����������ͥ�����¸�</a></li>
      <li><a href="/" target="_blank">��������Ի�ó������ ìͷֱָ</a></li>
    </ul>
  </div>
  <div class="blank"></div>
  <div class="ad"><img src="images/ad03.jpg"></div>
  <div class="blank"></div>
  <div class="zhishu left">
    <h3>��פ��λ
      <ul id="tab">
        <li class="current"><a href="/">���̾�</a></li>
        <li><a href="/">������</a></li>
        <li><a href="/">�����Ͷ���</a></li>
        <li><a href="/">���ľ�</a></li>
        <li><a href="/">������</a></li>
        <li><a href="/">�ʼ��</a></li>
        <li><a href="/">��˰��</a></li>
        <li><a href="/">��˰��</a></li>
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
              <li><a href="/" target="_blank"><span>2013-12-24</span>�㰲����ҽԺ��չ��ȫ����Ѫѹ�ա����������</a></li>
              <li><a href="/" target="_blank"><span>2013-12-24</span>�㰲�������ġ�������ǰ����������鹤��</a></li>
              <li><a href="/" target="_blank"><span>2013-12-24</span>�㰲��ʵʩ������̡�����������ͥ�����¸�</a></li>
              <li><a href="/" target="_blank"><span>2013-12-24</span>�㰲��ϲժȫ���˿ڼ���ͳ������Ϣ��λ���ܾ������</a></li>
              <li><a href="/" target="_blank"><span>2013-12-24</span>�㰲�����ƾֿ�չ�����½��á��</a></li>
              <li><a href="/" target="_blank"><span>2013-12-24</span>��������Ի�ó������ ìͷֱָ</a></li>
              <li><a href="/" target="_blank"><span>2013-12-24</span>�㰲����ҽԺ��չ��ȫ����Ѫѹ�ա����������</a></li>
            </ol>
          </div>
        </ul>

        <ul>
          <div class="zs_pic left"> <img src="images/newspic1.jpg"> </div>
          <div class="zs_news right">
            <ol>
              <li><a href="/" target="_blank"><span>2013-12-26</span>�㰲��ϲժȫ���˿ڼ���ͳ������Ϣ��λ���ܾ������</a></li>
              <li><a href="/" target="_blank"><span>2013-12-26</span>�㰲�����ƾֿ�չ�����½��á��</a></li>
              <li><a href="/" target="_blank"><span>2013-12-24</span>�㰲����ҽԺ��չ��ȫ����Ѫѹ�ա����������</a></li>
              <li><a href="/" target="_blank"><span>2013-12-24</span>�㰲�������ġ�������ǰ����������鹤��</a></li>
              <li><a href="/" target="_blank"><span>2013-12-24</span>�㰲��ʵʩ������̡�����������ͥ�����¸�</a></li>
              <li><a href="/" target="_blank"><span>2013-12-24</span>��������Ի�ó������ ìͷֱָ</a></li>
              <li><a href="/" target="_blank"><span>2013-12-24</span>�㰲����ҽԺ��չ��ȫ����Ѫѹ�ա����������</a></li>
            </ol>
          </div>
        </ul>


        <ul style="display:block;">
          <div class="zs_pic left"> <img src="images/newspic1.jpg"> </div>
          <div class="zs_news right">
            <ol>
              <li><a href="/" target="_blank"><span>2013-12-29</span>�㰲��ϲժȫ���˿ڼ���ͳ������Ϣ��λ���ܾ������</a></li>
              <li><a href="/" target="_blank"><span>2013-12-24</span>�㰲�����ƾֿ�չ�����½��á��</a></li>
              <li><a href="/" target="_blank"><span>2013-12-24</span>�㰲����ҽԺ��չ��ȫ����Ѫѹ�ա����������</a></li>
              <li><a href="/" target="_blank"><span>2013-12-24</span>�㰲�������ġ�������ǰ����������鹤��</a></li>
              <li><a href="/" target="_blank"><span>2013-12-24</span>�㰲��ʵʩ������̡�����������ͥ�����¸�</a></li>
              <li><a href="/" target="_blank"><span>2013-12-24</span>��������Ի�ó������ ìͷֱָ</a></li>
              <li><a href="/" target="_blank"><span>2013-12-24</span>�㰲����ҽԺ��չ��ȫ����Ѫѹ�ա����������</a></li>
            </ol>
          </div>
        </ul>

      </div>
    </section>
  </div>
  <div class="hd1 right">
  <h3>��������</h3>
  <ul>
    <li><a href="gbook.aspx" target="_blank">Ͷ�߾ٱ�</a></li>
    <li><a href="email.aspx" target="_blank">����������������</a></li>   
  </ul>
  </div>
    
  </div>


    <div class="links">
        <p>
            �������:</p>
        <ul>
            <li><a href="/">��̨�������������</a></li>
            <li><a href="/">��������������</a></li>
            <li><a href="/">�����ؼ��ɼ��ίԱ��</a></li>
            <li><a href="/">�����������Ͷ���</a></li>
            <li><a href="/">�����ؽ�����</a></li>
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
