using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_addnews : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Btbc_Click(object sender, EventArgs e)
    {
        string insert1 = "insert into book(title,tag) values('" 
            + this.TBnewszbt.Text + "','"
            + Request.Form["content1"] + "')";
        //this.content1.InnerText
        bool pd;         //pd即为判断
        pd = DB.exeSql(insert1);
        if (pd)
        {
            Response.Write(DB.MessageBox1("您的信息已经成功录入！点击确认，退出！"));
        }
        else
        {
            Response.Write(DB.MessageBox1("您的信息录入不成功！请重新录入！"));
        }
    }
}