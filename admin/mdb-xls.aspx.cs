using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;



public partial class admin_mdb_xls : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Btmdbtoxls_Click(object sender, EventArgs e)
    {

        DataSet dt;
        dt = DBaccessOperateData.ExcelToDS("adminbook.xls");
        if (dt.Tables[0].Rows.Count > 0)
           {
              for (int i = 0; i < dt.Tables[0].Rows.Count; i++)
                {
                   //写入数据库数据
                   string MySql = "insert into admin (username1,password1) values('"+dt.Tables[0].Rows[i]["xm"].ToString()+"','"+dt.Tables[0].Rows[i]["mm"].ToString()
                            +"')";
                    DB.exeSql(MySql);
                        }
                           Response.Write("<script language=javascript>alert('数据导入成功！');</script>");
                            }
                            else
                            {
                               Response.Write("<script language=javascript>alert('请检查你的Excel中是否存在数据！');</script>");
                            }
                        }
    protected void Btxlstomdb_Click(object sender, EventArgs e)   //实现access to xls
    {
        string sql = "select * From admin";        
        DataTable dt = DBaccessOperateData.getRows(sql);
        //Int32 i = dt.Rows.Count;
        dt.Dispose();
        sql = "select top" + " " + dt.Rows.Count + " " + "username1,password1 into [Excel 8.0;database=" + System.Web.HttpContext.Current.Server.MapPath("../xls/") + "Book.xls].[Sheet1] from admin";
        DB.exeSql(sql);
    }
}
