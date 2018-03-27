using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class admin_MZPYzxbzjg : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string s = "SELECT pingyijieguo  FROM MZPYzxbz";
        DataTable dset = DBaccessOperateData.getRows(s);
        int i = 0;
        int a=0;//表示满意
        int b=0;//表示基本满意
        int c=0;//表示不满意
        for (i = 0; i < dset.Rows.Count; i++)
        {
            if (Convert.ToInt32(dset.Rows[i][0]) == 2)
                a = a + 1;
            else if (Convert.ToInt32(dset.Rows[i][0]) == 0)
                b = b + 1;
            else if (Convert.ToInt32(dset.Rows[i][0]) == -2)
                c = c + 1;

        }
        Lbgongji.Text = dset.Rows.Count.ToString();
        Lbmanyi.Text = a.ToString()+"张";
        Lbjibenmanyi.Text = b.ToString() + "张";
        Lbbumanyi.Text = c.ToString() + "张";
    }
}