using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;


public partial class list : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string sql = "SELECT * FROM  book";
            DataTable dt = DBaccessOperateData.getRows(sql);
            shnewspage.RecordCount = dt.Rows.Count;
            dt.Dispose();
        }
    }
    protected void xwzxcs()
    {
        //string qry = "SELECT top 15 id,title FROM book";
        //DataTable dset = DBaccessOperateData.getRows(qry);
        //this.Repeater1.DataSource = dset;
        //this.Repeater1.DataBind();        
            OleDbConnection connection = DB.createDB();
            OleDbCommand cmd = new OleDbCommand("select * from book", connection);
            OleDbDataAdapter sda = new OleDbDataAdapter(cmd);            
            DataSet ds = new DataSet();            
            shnewspage.PageSize =36;//设置分页大小 
            sda.Fill(ds, shnewspage.PageSize * (shnewspage.CurrentPageIndex - 1), shnewspage.PageSize, "asks");//固定不变的 
            Repeater1.DataSource = ds.Tables["asks"];
            Repeater1.DataBind();
     
    }
    protected void shnewspage_PageChanged(object src, EventArgs e)
    {
        xwzxcs();
    }
}