using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data;

public partial class admin_MZPYzxbgry : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            zxbgrycs();
        }
    }
    protected void zxbgrycs()
    {
        string qry = "SELECT *  FROM MZPYbgsry";
        DataTable dset = DBaccessOperateData.getRows(qry);
        Rpzxbgry.DataSource = dset;
        Rpzxbgry.DataBind();
    }

    protected bool youxiu()
    {
        int i;
        int j = 0;//记录优秀人数
        int yx = this.Rpzxbgry.Items.Count / 3;
        for (i = 0; i < this.Rpzxbgry.Items.Count; i++)
         {
            RadioButton a = (RadioButton)this.Rpzxbgry.Items[i].FindControl("RadioButton1");
            if (a.Checked)
            {
                j=j+1;
             }
          }
        if (j > yx)
          return false;
         else        
            return true;       
    }

    protected bool quanpingjia()
    {
        //int i = 0;
        int j = 0;
        for (j = 0; j < this.Rpzxbgry.Items.Count; j++)
        {
            RadioButton a = (RadioButton)this.Rpzxbgry.Items[j].FindControl("RadioButton1");
            RadioButton b = (RadioButton)this.Rpzxbgry.Items[j].FindControl("RadioButton2");
            RadioButton c = (RadioButton)this.Rpzxbgry.Items[j].FindControl("RadioButton3");
            RadioButton d = (RadioButton)this.Rpzxbgry.Items[j].FindControl("RadioButton4");
            
            if (!(a.Checked | b.Checked | c.Checked | d.Checked))            
                break;
                //Response.Write("<script language=javascript>alert('请全部评价后,点击保存！！');</script>");
                //break;     
        }
        if (j < this.Rpzxbgry.Items.Count )
            return false;
        else
            return true;
    }


    protected void Button1_Click(object sender, EventArgs e)
    {

        string qry = "SELECT gushi,xingming  FROM MZPYbgsry";
        DataTable dset = DBaccessOperateData.getRows(qry);

        string s;
        string s1 = "select * from MZPYbgsryjg where pingyiren='" + Session["name"] + "'";
        DataTable count1 = DBaccessOperateData.getRows(s1);
        int count2 = count1.Rows.Count;

        bool pd = youxiu();
        if (pd)
        {

            int i = 0;
            for (i = 0; i < this.Rpzxbgry.Items.Count; i++)
            {
                RadioButton a = (RadioButton)this.Rpzxbgry.Items[i].FindControl("RadioButton1");
                RadioButton b = (RadioButton)this.Rpzxbgry.Items[i].FindControl("RadioButton2");
                RadioButton c = (RadioButton)this.Rpzxbgry.Items[i].FindControl("RadioButton3");
                RadioButton d = (RadioButton)this.Rpzxbgry.Items[i].FindControl("RadioButton4");
                if (!quanpingjia())
                {
                    Response.Write("<script language=javascript>alert('请全部评价后,点击保存！！');</script>");
                    break;
                }
                else
                {
                    
                    if (count2 < this.Rpzxbgry.Items.Count)
                    {
                        if (a.Checked)
                        {
                            s = "insert into MZPYbgsryjg(gushi,xingming,jieguo,pingyiren)  values('"
                                  + dset.Rows[i][0].ToString() +"','"
                                  + dset.Rows[i][1].ToString() + "',2,'" 
                                  + Session["name"] + "')";
                            DB.exeSql(s);                            
                        }
                        else if (b.Checked)
                        {
                            s = "insert into MZPYbgsryjg(gushi,xingming,jieguo,pingyiren)  values('"
                                 + dset.Rows[i][0].ToString() + "','"
                                 + dset.Rows[i][1].ToString() + "',1,'"
                                 + Session["name"] + "')";
                           DB.exeSql(s);
                            
                        }
                        else if (c.Checked)
                        {
                            s = "insert into MZPYbgsryjg(gushi,xingming,jieguo,pingyiren)  values('"
                                 + dset.Rows[i][0].ToString() + "','"
                                 + dset.Rows[i][1].ToString() + "',0,'"
                                 + Session["name"] + "')";
                            DB.exeSql(s);
                            
                        }
                        else if (d.Checked)
                        {
                            s = "insert into MZPYbgsryjg(gushi,xingming,jieguo,pingyiren)  values('"
                                  + dset.Rows[i][0].ToString() + "','"
                                  + dset.Rows[i][1].ToString() + "',-1,'"
                                  + Session["name"] + "')";
                             DB.exeSql(s);
                            
                        }
                    }
                    else
                    {
                        Response.Write("<script language=javascript>alert('您已经投过票了！谢谢！');</script>");
                        break;
                    }

                }
            }//for

            if (i == this.Rpzxbgry.Items.Count)
            {
                Response.Write("<script language=javascript>alert('您的评议成功！谢谢！');</script>");
            }

        }//if






        else
        {
            Response.Write("<script language=javascript>alert('优秀人员不得超过总数的1/3，否则为废票！');</script>");
        }
              
   }



    protected void Button2_Click(object sender, EventArgs e)   //清除所有选择
    {
        int i;
        for (i = 0; i < Rpzxbgry.Items.Count; i++)
        {
            RadioButton a = (RadioButton)this.Rpzxbgry.Items[i].FindControl("RadioButton1");
            a.Checked = false;
            RadioButton b = (RadioButton)this.Rpzxbgry.Items[i].FindControl("RadioButton2");
            b.Checked = false;
            RadioButton c = (RadioButton)this.Rpzxbgry.Items[i].FindControl("RadioButton3");
            c.Checked = false;
            RadioButton d = (RadioButton)this.Rpzxbgry.Items[i].FindControl("RadioButton4");
            d.Checked = false;        
        }
    }
}