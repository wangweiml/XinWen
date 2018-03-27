using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data;

public partial class admin_shnews : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string sql = "SELECT * FROM  book where flag=false";
            DataTable dt = DBaccessOperateData.getRows(sql);
            shnewspage.RecordCount = dt.Rows.Count;
            dt.Dispose();
        }
    }
    protected void shnewscs()
    {    
        OleDbConnection connection = DB.createDB();
        OleDbCommand cmd = new OleDbCommand("select * from book where flag=false", connection);
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
    protected void Btsh_Click(object sender, EventArgs e)
    {
        for (int i = 0; i <= xwsh.Rows.Count - 1; i++)
        {
            CheckBox cbox = (CheckBox)xwsh.Rows[i].FindControl("cbxz");
            if (cbox.Checked == true)
            { 
                Int32 xh=Convert.ToInt32(xwsh.Rows[i].Cells[1].Text);
                string s1 = "update book set flag=true where id=" + xh;
                DB.exeSql(s1);
            }
        }
        shnewscs();
    }
    //protected void xwsh_RowDataBound(object sender, GridViewRowEventArgs e)
    //{
    //    //this.GVStudent.EditIndex != e.Row.DataItemIndex 
    //    //这一句话是为了防止报错  
    //    //异常详细信息: System.ArgumentOutOfRangeException: 指定的参数已超出有效值的范围。参数名: index
    //    if (e.Row.RowType == DataControlRowType.DataRow && this.xwsh.EditIndex != e.Row.DataItemIndex)
    //    {
    //        DataRowView DDR = e.Row.DataItem as DataRowView;

    //        HyperLink temp = e.Row.Cells[0].Controls[2] as HyperLink;
    //        if (temp != null)
    //        {
    //            temp.NavigateUrl = string.Format(@"/news.aspx?ID={0}", DDR["Id"]);
    //        }

    //    }
    //}
}
