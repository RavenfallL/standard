using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace standard
{
    public partial class user2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] != null)
            {
                Label1.Text = "你好！" + Session["username"].ToString();

            }
            else
            {
                Label1.Text = null;
                Response.Write("<script>alert('请先登录');window.window.location.href='login.aspx';</script>");
            }
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "yes")
            {

                string sqlstr = "update [bz] set 类型='3' where number='" + GridView1.DataKeys[Convert.ToInt32(e.CommandArgument)].Value.ToString() + "'";
                string str = "Data Source=(local);Initial Catalog=standard;Integrated Security=True";
                SqlConnection conn = new SqlConnection(str);
                SqlCommand cmd = new SqlCommand(sqlstr, conn);
                conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();
                Response.Write("<script>alert('已通过'),window.location.href='user2.aspx'</script>");
            }
            if (e.CommandName == "no")
            {
                string sqlstr = "update [bz] set 类型='0' where number='" + GridView1.DataKeys[Convert.ToInt32(e.CommandArgument)].Value.ToString() + "'";
                string str = "Data Source=(local);Initial Catalog=standard;Integrated Security=True";
                SqlConnection conn = new SqlConnection(str);

                SqlCommand cmd = new SqlCommand(sqlstr, conn);
                conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();
                Response.Write("<script>alert('请填写意见'),window.location.href='say1.aspx'</script>");
            }
        }
    }
}