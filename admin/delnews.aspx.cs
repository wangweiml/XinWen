using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data;

public partial class admin_delnews : System.Web.UI.Page
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
    protected void shnewscs()
    {    
        OleDbConnection connection = DB.createDB();
        OleDbCommand cmd = new OleDbCommand("select * from book ", connection);
        OleDbDataAdapter sda = new OleDbDataAdapter(cmd);
        DataSet ds = new DataSet();
        shnewspage.PageSize = 12;//设置分页大小 
        sda.Fill(ds, shnewspage.PageSize * (shnewspage.CurrentPageIndex - 1), shnewspage.PageSize, "asks");//固定不变的 
        xwsh.DataSource = ds.Tables["asks"];
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
    protected void Btshanchu_Click(object sender, EventArgs e)
    {
        for (int i = 0; i <= xwsh.Rows.Count - 1; i++)
        {
            CheckBox cbox = (CheckBox)xwsh.Rows[i].FindControl("cbxz");
            if (cbox.Checked == true)
            { 
                Int32 xh=Convert.ToInt32(xwsh.Rows[i].Cells[1].Text);
                string s1 = "delete from book  where id=" + xh;
                DB.exeSql(s1);
            }
        }
        shnewscs();
    }
}
