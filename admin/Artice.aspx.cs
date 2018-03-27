using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data;
using Maticsoft.DBUtility;

public partial class admin_Artice : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //string sql = "SELECT * FROM  book where flag=false";
            //DataTable dt = DBaccessOperateData.getRows(sql);
            string strSQL = "SELECT * FROM [FanYaGrab].[dbo].[Artice]";
            DataTable dt = Maticsoft.DBUtility.DbHelperSQL.Query(strSQL).Tables[0];
            shnewspage.RecordCount = dt.Rows.Count;
            dt.Dispose();
        }
    }
    protected void shnewscs()
    {
        //    OleDbConnection connection = DB.createDB();
        //    OleDbCommand cmd = new OleDbCommand("select * from book where flag=false", connection);
        //    OleDbDataAdapter sda = new OleDbDataAdapter(cmd);
        //    DataSet ds = new DataSet();
        //    shnewspage.PageSize = 12;//设置分页大小 
        //    sda.Fill(ds, shnewspage.PageSize * (shnewspage.CurrentPageIndex - 1), shnewspage.PageSize, "asks");//固定不变的 
        //    xwsh.DataSource = ds.Tables["asks"];

        string strSQL = "SELECT * FROM [FanYaGrab].[dbo].[Artice]";
        DataTable dt = Maticsoft.DBUtility.DbHelperSQL.Query(strSQL).Tables[0];
        xwsh.DataSource = dt;
        xwsh.DataBind();

    }
    protected void shnewspage_PageChanged(object src, EventArgs e)
    {
        shnewscs();
    }

    protected void Btquanxuan_Click(object sender, EventArgs e)
    {
        for (int i = 0; i <= xwsh.Rows.Count - 1; i++)
        {
            CheckBox cbox = (CheckBox)xwsh.Rows[i].FindControl("cbxz");
            cbox.Checked = true;
        }
    }

    protected void Btquxiao_Click(object sender, EventArgs e)
    {
        for (int i = 0; i <= xwsh.Rows.Count - 1; i++)
        {
            CheckBox cbox = (CheckBox)xwsh.Rows[i].FindControl("cbxz");
            cbox.Checked = false;
        }
    }
    protected void Btsh_Click(object sender, EventArgs e)
    {
        for (int i = 0; i <= xwsh.Rows.Count - 1; i++)
        {
            CheckBox cbox = (CheckBox)xwsh.Rows[i].FindControl("cbxz");
            if (cbox.Checked == true)
            {
                Int32 xh = Convert.ToInt32(xwsh.Rows[i].Cells[1].Text);
                string s1 = "update book set flag=true where id=" + xh;
                DB.exeSql(s1);
            }
        }
        shnewscs();
    }
}