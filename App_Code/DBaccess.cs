using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.OleDb;
/// <summary>
/// DB 的摘要说明
/// </summary>
public class DB
{
	public DB()
	{
		//
		// TODO: 在此处添加构造函数逻辑
		//
	}
  
    public static OleDbConnection createDB()
    {
        OleDbConnection odbc = new OleDbConnection(ConfigurationManager.AppSettings["con"]);        
        return odbc;
    }

    public static bool exeSql(string sql)  //重点用于插入、删除、修改
    {
        OleDbConnection con = DB.createDB();
        con.Open();
        OleDbCommand com = new OleDbCommand(sql,con);
        int isEx = com.ExecuteNonQuery();  //返回操作影响的行数
        con.Close();
        if (isEx > 0)
        {
            return true;
        }
        else
        {
            return false;        
        }
    }

    //public static bool intoexcel(string sql,string Path)
    //{
    //    string strConn = "Provider=Microsoft.Jet.OLEDB.4.0;" + "Data Source=" + System.Web.HttpContext.Current.Server.MapPath(Path) + ";" + "Extended Properties=Excel 8.0;";
    //    OleDbConnection conn = new OleDbConnection(strConn);
    //    conn.Open();
    //    OleDbCommand com = new OleDbCommand(sql, conn);
    //    int isEx = com.ExecuteNonQuery();  //返回操作影响的行数
    //    conn.Close();
    //    if (isEx > 0)
    //    {
    //        return true;
    //    }
    //    else
    //    {
    //        return false;
    //    }
    //} 

    public static int exeSqlselect(string sql)   //一般用来获取一个聚合值 如SUM(). COUNT()
    {
        OleDbConnection con = DB.createDB();
        con.Open();
        OleDbCommand com = new OleDbCommand(sql, con);
        int isEx = (int)com.ExecuteScalar();  //一般用来获取一个聚合值 如SUM(). COUNT()
        con.Close();
        return isEx;
    }


    public static string MessageBox1(string TxtMessage)//显示信息，点击确认后关闭窗口
    {
        string str;
        //str = "<script language=javascript>alert('" + TxtMessage + "');window.opener=null;window.close();</script>";
        str = "<script language=javascript>alert('" + TxtMessage + "');window.open('','_self');window.close();</script>";
        return str;
    }

    public static string MessageBox2(string TxtMessage)//显示信息，点击确回到原页
    {
        string str;
        str = "<script language=javascript>alert('" + TxtMessage + "');</script>";
        return str;
    }

}
