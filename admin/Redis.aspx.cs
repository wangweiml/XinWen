using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ServiceStack.Redis;
using ServiceStack.Common;
using ServiceStack.ServiceInterface;
using ServiceStack.Text;

public partial class admin_Redis : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSave_Click(object sender, EventArgs e)
    {
        RedisClient redisClient = new RedisClient("127.0.0.1", 6379);
        string key = txtKey.Text;
        string value = txtValue.Text;
        redisClient.Set<string>(key, value);

        var ReUser = redisClient.As<User>();
        List<User> list = new List<User>();
        var c1 = new User() { ID = "SY001", Name = "张三", AGE = 21 };
        list.Add(c1);
        var c2 = new User() { ID = "SY002", Name = "李四508", AGE = 33 };
        list.Add(c2);
        ReUser.StoreAll(list);
    }
    protected void btnRead_Click(object sender, EventArgs e)
    {
        RedisClient redisClient = new RedisClient("127.0.0.1", 6379);
        txtName.Text = redisClient.Get<string>("name");
        txtAge.Text = redisClient.Get<string>("age");
        txtTel.Text = redisClient.Get<string>("tel");

        User uModel = redisClient.Get<User>("urn:user:19865865");
        List<User> list = redisClient.GetAll<User>().ToList<User>();
        var user = redisClient.GetTypedClient<User>();
        //User mod = list.Select(m => m.AGE == 33).FirstOrDefault<User>();
        //redisClient.GetAll().Where(m => m.Id == 1).First().Name

    }
    class User
    {
        public String ID { get; set; }
        public String Name { get; set; }
        public Int32 AGE { get; set; }
    }
}