using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data;

public partial class admin_adduser : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Bttianjia_Click(object sender, EventArgs e)
    {

        if (this.username.Text != "" && this.TBmima.Text != "")
        {
            string s3="select * from admin where username1='"+this.username.Text+"'";
            if (DBaccessOperateData.getCount(s3) < 1)
            {
                string s2 = DBaccessOperateData.md5(this.TBmima.Text.ToString(), 16);
                string s1 = "insert into admin(username1,password1)  values('"
                  + this.username.Text + "','"
                  + s2 + "')";
                bool pd;
                pd = DB.exeSql(s1);
                if (pd)
                {
                    Response.Write("<script language=javascript>alert('添加成功！');</script>");
                }
            }
            else
            {
                Response.Write("<script language=javascript>alert('用户名已被使用，请更换用户名，再添加成功！');</script>");
            }
        }
        else
        {
            Response.Write("<script language=javascript>alert('账号或密码不能为空！');</script>");
        }
    }
}