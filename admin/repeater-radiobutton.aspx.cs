using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class admin_repeater_radiobutton : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        xwzxcs();
    }
    protected void xwzxcs()
    {
        string qry = "SELECT top 5 id,username1 FROM admin";
        DataTable dset = DBaccessOperateData.getRows(qry);
        Rprb.DataSource = dset;
        Rprb.DataBind();
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        
        //int i ;
        
       // for (i = 0; i < Rprb.Items.Count; i++)
        //{
        RadioButtonList cbos = (RadioButtonList)this.Rprb.Items[3].FindControl("RadioButtonList1");//关键在这里
        Label1.Text = cbos.SelectedIndex.ToString();
            if (cbos.SelectedIndex==1)
           {
                string s2 = DBaccessOperateData.md5("22", 16);
                string s1 = "insert into admin(username1,password1)  values('"
                  + "22" + "','"
                  + s2 + "')";
                bool pd;
               pd = DB.exeSql(s1);
                if (pd)
               {
                  Response.Write("<script language=javascript>alert('添加成功！');</script>");
               }
            }
            
    }
    
}