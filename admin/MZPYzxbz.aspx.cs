using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_MZPYzxbz : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Btchongzhi_Click(object sender, EventArgs e)
    {
        RBbumanyi.Checked = false;
        RBjibenmanyi.Checked = false;
        RBmanyi.Checked = false;
    }
    protected void Btbaocun_Click(object sender, EventArgs e)
    {
        if (!(RBmanyi.Checked | RBjibenmanyi.Checked | RBbumanyi.Checked))
        {
            Response.Write("<script language=javascript>alert('请选择后,点击保存！！');</script>");
        }
        else
        {
            string s;
            string s1 = "select * from MZPYzxbz where pingyiren='" + Session["name"] + "'";
            if (DBaccessOperateData.getCount(s1) < 1)
            {
                if (RBmanyi.Checked)
                {
                    s = "insert into MZPYzxbz(pingyijieguo,pingyiren)  values(2"
                         + ",'"
                          + Session["name"] + "')";
                    bool pd;
                    pd = DB.exeSql(s);
                    if (pd)
                    {
                        Response.Write("<script language=javascript>alert('您的评议成功！谢谢！');</script>");
                    }
                }
                else if (RBjibenmanyi.Checked)
                {
                    s = "insert into MZPYzxbz(pingyijieguo,pingyiren)  values(0"
                           + ",'"
                            + Session["name"] + "')";
                    bool pd;
                    pd = DB.exeSql(s);
                    if (pd)
                    {
                        Response.Write("<script language=javascript>alert('您的评议成功！谢谢！');</script>");
                    }
                }
                else if (RBbumanyi.Checked)
                {
                    s = "insert into MZPYzxbz(pingyijieguo,pingyiren)  values(-2"
                        + ",'"
                        + Session["name"] + "')";
                    bool pd;
                    pd = DB.exeSql(s);
                    if (pd)
                    {
                        Response.Write("<script language=javascript>alert('您的评议成功！谢谢！');</script>");
                    }
                }
            }
                else
                {
                    Response.Write("<script language=javascript>alert('您已经投过票了！谢谢！');</script>");
                }          

        }
        }
   
}