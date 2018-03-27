using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

public partial class admin_login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void sub_btn_Click(object sender, EventArgs e)
    {
        string s2 = DBaccessOperateData.md5(this.TBpwd.Text.ToString(),16);//数据加密后比较。
        string s1 = "select count(*) from admin where username1='" + this.TBlogin.Text + "'and password1='" + s2 + "'";//查询语句
        int i = DBaccessOperateData.getCount(s1);
        if (i > 0)
        {
            Session["name"] = this.TBlogin.Text.ToString();          //把员工输入的用户名存储到Session变量中
            Session["pwd"] = this.TBpwd.Text.ToString(); //把员工输入的用户密码存储到Session变量中
            Response.Redirect("index.aspx");      //登录成功跳转到管理员主界面
        }
        else
        {

            Response.Write("<script language=javascript>alert('很遗憾，用户名或密码错误！');</script>");
        }
    }
}