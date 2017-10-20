using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace standard
{
    public partial class register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string str = "Data Source=(local);Initial Catalog=standard;Integrated Security=True";
            SqlConnection conn = new SqlConnection(str);
            conn.Open();
            SqlCommand cmd = new SqlCommand("SELECT * FROM [user] WHERE username='" + TextBox1.Text + "'", conn);
            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.Read())//如果存在相同用户名
            {
                Response.Write("<script>alert('用户已被注册');window.window.location.href='Login.aspx';</script>");
                dr.Close();
            }
            else
            {
                dr.Close();
                SqlCommand Cm2 = new SqlCommand("INSERT INTO [user] (username,password,type) VALUES ('" + TextBox1.Text + "','" + TextBox1.Text + "','0')", conn);
                int i = Cm2.ExecuteNonQuery();
                //message.InnerHtml = "注册成功";
                Response.Write("<script>alert('注册成功');window.window.location.href='Login.aspx';</script>");
            }
            conn.Close();
        }

        
    }
}