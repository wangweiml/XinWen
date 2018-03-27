using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

public partial class userControl_new : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        news();
    }
    protected void news()
{
        Int32 id = Convert.ToInt32( Request.QueryString["id"]);
        string cx = "SELECT title,time,name,tofrom,num,tag FROM book where id=" + id; 
        OleDbDataReader sdr = DBaccessOperateData.getRow(cx);
        sdr.Read();
        if (id!=0)
        {
            this.Ltitle1.Text = sdr.GetString(0).ToString();
            this.Ltitle2.Text = sdr.GetValue(0).ToString();
            this.Label3.Text = sdr.GetValue(1).ToString();
            this.Lname.Text = sdr.GetValue(2).ToString();
            this.Lfrom.Text = sdr.GetValue(3).ToString();
            this.Lnum.Text = sdr.GetValue(4).ToString();
            this.Label4.Text = sdr.GetString(5).ToString();
        }
        else
        {
           Response.Write("暂无主题,不能显示");
           Response.Redirect("~/Default.aspx");//将该页跳转到指定的页面中
        }
        string xg = "update book set num=num+1 where id=" + id; 
        bool pd;         //pd即为判断
        pd = DB.exeSql(xg);
    }


}