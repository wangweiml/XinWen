using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class _Default : System.Web.UI.Page
{
    public int tid;//头条ID方便前台使用
    protected void Page_Load(object sender, EventArgs e)
    {
        toutiaocs();//头条信息
        xwzxcs();
        tzggcs();
        xwzx1cs();
        //tzgg1cs();

    }
    //头条信息
    protected void toutiaocs()
    {
        
        string qry = "SELECT top 1 id,title,tag FROM book";
        OleDbDataReader dset = DBaccessOperateData.getRow(qry);
        dset.Read();
        this.Lbtoutiaobiaoti.Text = DBaccessOperateData.interceptStr(dset.GetValue(1).ToString(), 22);
        this.Lbtoutiaoneirong.Text = DBaccessOperateData.interceptStr(dset.GetValue(2).ToString(), 80);
        tid=Convert.ToInt32(dset.GetValue(0));
        dset.Close();
    }

    protected void xwzxcs()
    {
        string qry = "SELECT top 5 id,title FROM book";
        DataTable dset = DBaccessOperateData.getRows(qry);
        xwzx.DataSource = dset;
        xwzx.DataBind();
    }
    protected void tzggcs()
    {
        string qry = "SELECT top 10 id,title FROM book";
        DataTable dset = DBaccessOperateData.getRows(qry);
        tzgg.DataSource = dset;
        tzgg.DataBind();
    }

    protected void xwzx1cs()
    {
        string qry = "SELECT top 7 id,title FROM book";
        DataTable dset = DBaccessOperateData.getRows(qry);
        xwzx1.DataSource = dset;
        xwzx1.DataBind();
    }
    //protected void tzgg1cs()
    //{


    //    string qry = "select top 60 a.bmmc,b.sqxmmc,b.sqz,slrq,cnqx,b.sjzt from bmxxb a ,slsjxxb b where a.bmbm = b.bmbm";
    //    //"select a.bmmc,b.sqxmmc,b.sqz,convert(varchar,b.slrq,102) slrq,isnull(convert(varchar,b.cnqx,102),'---') cnqx,b.sjzt from bmxxb a ,slsjxxb b where a.bmbm = b.bmbm and b.slrq > dateadd(week,-1,getdate()) order by slrq desc"
    //    SqlConnection con = new SqlConnection("Data Source=192.168.111.222; Initial Catalog=db_dzzwsp_nj1;Persist Security Info=True;User ID=sa;pwd=!qaz234;");
    //                                           //"Data Source=192.168.111.222; Initial Catalog=db_dzzwsp_nj1;Persist Security Info=True;User ID=sa;pwd=!qaz234;
    //    //SqlDbConnection odbc = new OleDbConnection(ConfigurationManager.AppSettings["con"]);
    //    con.Open();
    //    //SqlCommand com = new SqlCommand(qry, con);
    //    DataSet ds;
    //    SqlDataAdapter sda = new SqlDataAdapter(qry, con);
    //    ds = new DataSet();
    //    sda.Fill(ds);
    //    con.Close();
    //    //string qry = "SELECT top 5 id,title FROM book";
    //    DataTable dset = ds.Tables[0];
    //    tzgg1.DataSource = dset;
    //    tzgg1.DataBind();
    //}
}