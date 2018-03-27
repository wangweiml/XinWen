<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Vidio.aspx.cs" Inherits="admin_Vidio" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>视频</title>

	<script type="text/jscript" charset="utf-8" src="../admin/js/jwplayer/jwplayer.js"></script>
    <script type="text/jscript" src="../admin/js/jwplayer/jwplayer.flash.swf"></script>  
    <%--<script type="text/javascript">jwplayer.key = "IzEqVjRNGbvR6o5C9Fa0V+d5RKsU6WMks6OoUQ==";</script>--%>
  <meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, user-scalable=no" />
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta name="format-detection" content="telephone=no">
<style type="text/css">
    *
    {
        margin: 0;
        padding: 0;
        list-style: none;
    }
    .jwlogo
    {
        display: none;
    }
    /*去掉html5播放器上的logo*/
</style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div id="mediaplayer">Loading the player ..
        </div>
	<script type="text/jscript" charset="utf-8" src="../admin/js/jwplayer/jwplayer.js"></script>
      <script type="text/javascript">

          jwplayer("mediaplayer").setup({
              flashplayer: "../admin/js/jwplayer/player.swf",
              image: 'http://bcs.duapp.com/images-link/3.jpg',
              file: "../admin/Vidio/333.mp4", 
              id: 'playerID',
              height: 270,
              width: 480
          });

     </script>
    </div>
    </form>
</body>
</html>
