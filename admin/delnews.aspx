<%@ Page Language="C#" AutoEventWireup="true" CodeFile="delnews.aspx.cs" Inherits="admin_delnews" %>

<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>审核新闻</title>

   <link rel="stylesheet" href="css/common.css"/>
   <link rel="stylesheet" href="css/main.css"/>

</head>
<body>
    <form id="form1" runat="server">
<div id="table" class="mt10">
        <div class="box span10 oh">
            <asp:GridView ID="xwsh" class="list_table" AutoGenerateColumns="False" 
                DataKeyNames="id" CellSpacing="4" HorizontalAlign="Center" runat="server" >
                <Columns>
                <asp:TemplateField>
                <ItemTemplate>
                <asp:CheckBox ID="cbxz" runat="server" />
                </ItemTemplate>
                </asp:TemplateField>                
                    <asp:BoundField DataField="id" HeaderText="序号" InsertVisible="False" ReadOnly="True"
                        SortExpression="id" />
                    <asp:BoundField DataField="title" HeaderText="新闻主标题" SortExpression="title" />
                    <asp:BoundField DataField="time" HeaderText="发布时间" SortExpression="time" />
                    <asp:BoundField DataField="name" HeaderText="编辑" SortExpression="name" />
                    <asp:BoundField DataField="tofrom" HeaderText="来源" SortExpression="tofrom" />                    
                    <asp:HyperLinkField NavigateUrl="/news.aspx"  DataNavigateUrlFields="id" DataNavigateUrlFormatString="/news.aspx?id={0}" Target="_blank"   Text="浏览" />
                </Columns>
            </asp:GridView>
              <div class="page mt10">
                <div class="pagination">
                  <ul>
                      <webdiyer:AspNetPager ID="shnewspage" runat="server"  Width="100%"
                          UrlPaging="true" ShowPageIndexBox="Always" PageIndexBoxType="DropDownList" TextBeforePageIndexBox="Go To Page: "
                          HorizontalAlign="right" OnPageChanged="shnewspage_PageChanged" EnableTheming="true"
                          FirstPageText="首页" LastPageText="尾页" NextPageText="下一页" PrevPageText="上一页" CurrentPageButtonPosition="Center">
                      </webdiyer:AspNetPager>
                      <div id="button" class="mt10">
                          <asp:Button ID="Btquanxuan" class="btn btn82 btn_checked" Text="全选" 
                              runat="server" onclick="Btquanxuan_Click"  />
                          <asp:Button ID="Btquxiao" runat="server" class="btn btn82 btn_nochecked" 
                              Text="取消" onclick="Btquxiao_Click"  />
                          <asp:Button ID="Btshanchu" class="btn btn82 btn_save2" runat="server" Text="删除" 
                              onclick="Btshanchu_Click" />                          
                      </div>
                  </ul>
                </div>

              </div>
        </div>
     </div>
    </form>
</body>
</html>
