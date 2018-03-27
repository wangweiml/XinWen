using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.OleDb;
using System.Security.Cryptography;//最主要的类库是MD5加密中比不可少的类库

/// <summary>
///DBaccessOperateData 的摘要说明
/// </summary>
public class DBaccessOperateData
{
	public DBaccessOperateData()
	{
		//
		//TODO: 在此处添加构造函数逻辑
		//
	}
    /// <param name="sql">SQL语句查询出多行语句</param>
    /// <returns>返回多行数据</returns>
    public static DataTable getRows(string sql)   
    {
        DataSet ds;
        OleDbConnection con = DB.createDB();
        con.Open();
        OleDbDataAdapter sda = new OleDbDataAdapter(sql, con);
        ds = new DataSet();
        sda.Fill(ds);
        con.Close();

        return ds.Tables[0];
    }
    //返回一行数据
    public static OleDbDataReader getRow(string sql)
    {
        OleDbConnection con = DB.createDB();
        con.Open();
        OleDbCommand com = new OleDbCommand(sql, con);
        OleDbDataReader sdr = com.ExecuteReader();
        return sdr;
    }

    public static string interceptStr(string str, int len)   //截取字段
    {
        if (str.Length > len)
        {
            str = str.Substring(0, len) + "...";
        }
        return str;
    }

    public static string md5(string str, int code)  //md5加密
    {
        if (code == 16) //16位MD5加密（取32位加密的9~25字符）
        {
            return System.Web.Security.FormsAuthentication.HashPasswordForStoringInConfigFile(str, "MD5").ToLower().Substring(8, 16);
        }

        if (code == 32) //32位加密
        {
            return System.Web.Security.FormsAuthentication.HashPasswordForStoringInConfigFile(str, "MD5").ToLower();
        }

        return "00000000000000000000000000000000";
    }

    public static int getCount(string sql)  //select语句查询
    {
        OleDbConnection con = DB.createDB();
        con.Open();
        OleDbCommand com = new OleDbCommand(sql, con);
        int Ex = Convert.ToInt32(com.ExecuteScalar());
        con.Close();
        return Ex;
    }

    //excel to access
    public  static DataSet ExcelToDS(string Path)
    {
        string strConn = "Provider=Microsoft.Jet.OLEDB.4.0;" + "Data Source=" + System.Web.HttpContext.Current.Server.MapPath(Path) + ";" + "Extended Properties=Excel 8.0;";
        OleDbConnection conn = new OleDbConnection(strConn);
        conn.Open();
        string strExcel = "";
        OleDbDataAdapter myCommand = null;
        DataSet ds = null;
        strExcel = "select * from [sheet1$]";
        myCommand = new OleDbDataAdapter(strExcel, strConn);
        ds = new DataSet();
        myCommand.Fill(ds);
        return ds;
    } 
}