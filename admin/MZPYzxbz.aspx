<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MZPYzxbz.aspx.cs" Inherits="admin_MZPYzxbz" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
   <meta charset="UTF-8"/>
   <link rel="stylesheet" href="css/common.css"/>
   <link rel="stylesheet" href="css/main.css"/>
    <style type="text/css">
        .style1
        {
            width: 271px;
        }
        .style2
        {
            text-align: right;
            width: 223px;
            line-height: 21px;
        }
        .style3
        {
            width: 262px;
        }
        .style4
        {
            width: 259px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div id="forms" class="mt10">
        <div class="box">
          <div class="box_border">
            <div class="box_top" align="center" style="font-size: large"><b class="pl15" 
                    style="font-size: x-large">政务服务中心领导班子评议票</b></div>
            <div class="box_center">
              </div>
               <table class="form_table pt15 pb15" width="100%" border="0" cellpadding="0" cellspacing="0">
                 <tr  style="font-size: large">
                  <td class="style2">&nbsp;</td>
                  <td class="style4" align="center">
                      <asp:RadioButton ID="RBmanyi" runat="server" Text="满意" 
                           GroupName="bz"/>
                      </td>
                  <td class="style1" align="center">
                      <asp:RadioButton ID="RBjibenmanyi" runat="server" Text="基本满意" GroupName="bz" />
                      </td>
                  <td class="style3" align="center" style="font-size: medium">
                      <asp:RadioButton ID="RBbumanyi" runat="server" Text="不满意" GroupName="bz"/>
                      </td>
                  <td class="">
                      &nbsp;</td>
                 </tr>
                 <tr>
                   <td class="style2">&nbsp;</td>
                   <td class="style4">
                       &nbsp;</td>
                   <td class="style1">
                       &nbsp;</td>
                   <td class="style3">
                       &nbsp;</td>
                   <td class="">
                       &nbsp;</td>
                 </tr>
                 <tr>
                   <td class="style2">&nbsp;</td>
                   <td class="style4">
                       &nbsp;</td>
                   <td class="style1">
                     <asp:Button  ID="Btbaocun" class="btn btn82 btn_save2" runat="server" Text="保存" 
                           onclick="Btbaocun_Click" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; 
                       <asp:Button ID="Btchongzhi" class="btn btn82 btn_res" runat="server" Text="重置" 
                           onclick="Btchongzhi_Click" />
                   </td>
                   <td class="style3">
                       
                     </td>
                   <td class="">
                       &nbsp;</td>
                 </tr>
               </table>
               </form>
            </div>
          </div>
        </div>
     </div>
    </form>
</body>
</html>
