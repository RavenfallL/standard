using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace standard
{
    public partial class introduce : System.Web.UI.Page
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
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text != null && TextBox2.Text != null)
            {
                string str = "Data Source=(local);Initial Catalog=standard;Integrated Security=True;MultipleActiveResultSets=true";
                SqlConnection conn = new SqlConnection(str);
                conn.Open();
                SqlCommand cmd = new SqlCommand("SELECT username,password FROM [user] WHERE username='" + TextBox1.Text + "' AND password ='" + TextBox2.Text + "'", conn);
                SqlCommand check = new SqlCommand("select type from [user] WHERE username='" + TextBox1.Text + "' AND password ='" + TextBox2.Text + "' ", conn);
                SqlDataReader dr = cmd.ExecuteReader();
                int type = Convert.ToInt32(check.ExecuteScalar().ToString());
                if (dr.Read())
                {
                    if (type == 0)
                    {
                        Response.Write("<script>alert('登陆成功');window.window.location.href='user0.aspx';</script>");
                    }
                    else if (type == 1)
                    {
                        Response.Write("<script>alert('登陆成功');window.window.location.href='user1.aspx';</script>");
                    }
                    else if (type == 2)
                    {
                        Response.Write("<script>alert('登陆成功');window.window.location.href='user2.aspx';</script>");
                    }
                    else if (type == 3)
                    {
                        Response.Write("<script>alert('登陆成功');window.window.location.href='user3.aspx';</script>");
                    }
                    else if (type == 4)
                    {
                        Response.Write("<script>alert('登陆成功');window.window.location.href='../ad/index.htm';</script>");
                    }
                    Session["username"] = TextBox1.Text;
                    Session["password"] = TextBox2.Text;

                    dr.Close();


                }
                else
                {
                    //Dr.Close();

                    Response.Write("<script>alert('用户名或密码错误!');window.window.location.href='index.aspx';</script>");
                }
                conn.Close();
            }
            else
            {

            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Write("<script>window.location.href='register.aspx';</script>");
        }
    }
}