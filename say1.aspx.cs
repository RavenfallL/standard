using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace standard
{
    public partial class say1 : System.Web.UI.Page
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

        protected void Button3_Click(object sender, EventArgs e)
        {
            string str = "Data Source=(local);Initial Catalog=standard;Integrated Security=True";
            SqlConnection conn = new SqlConnection(str);

            string sqlstr = "update [bz] set 二阶段修改意见='" + TextBox6.Text + "',类型='0' where number=@number";
            SqlCommand cmd = new SqlCommand(sqlstr, conn);
            cmd.Parameters.AddWithValue("@number", Request.QueryString["number"]);
            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();
            Response.Write("<script>alert('提交成功');window.location.href='user1.aspx';</script>");
        }
    }
}