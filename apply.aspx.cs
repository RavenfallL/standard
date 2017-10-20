using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace standard
{
    public partial class apply : System.Web.UI.Page
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

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            string str = "Data Source=(local);Initial Catalog=standard;Integrated Security=True";
            SqlConnection conn = new SqlConnection(str);
            conn.Open();
            SqlCommand cmd = new SqlCommand("INSERT INTO [bz] (标准项目名称,标准级别,体系表编号,预计起始年限,预计完成年限,主要起草单位,联系人,联系电话,电子邮箱,目的及意义,范围和主要技术内容,备注) VALUES ('" + TextBox1.Text + "','" + DropDownList1.SelectedValue + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + TextBox8.Text + "','" + TextBox9.Text + "','" + TextBox10.Text + "','" + TextBox11.Text + "')", conn);
            int i = cmd.ExecuteNonQuery();
            Response.Write("<script>alert('提交成功');window.window.location.href='user0.aspx';</script>");
            conn.Close();
        }
        protected void Button2_Click(object sender, EventArgs e)
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

        protected void Button4_Click(object sender, EventArgs e)
        {
            if (FileUpload.HasFile)
            {
                //指定上传文件在服务器上的保存路径 
                string savePath = Server.MapPath("~/upload/");
                //检查服务器上是否存在这个物理路径，如果不存在则创建 
                if (!System.IO.Directory.Exists(savePath))
                {
                    //需要注意的是，需要对这个物理路径有足够的权限，否则会报错 
                    //另外，这个路径应该是在网站之下，而将网站部署在C盘却把上传文件保存在D盘 
                    System.IO.Directory.CreateDirectory(savePath);
                }
                savePath = savePath + "//" + FileUpload.FileName;
                FileUpload.SaveAs(savePath);//保存文件 
                //不过需要注意的是，在客户端访问却需要指定的是URL地址，而不是在服务器上的物理地址 
                literal.Text = string.Format("<a href='upload/{0}'>upload/{0}</a>", FileUpload.FileName);
            } 
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Write("<script>window.location.href='register.aspx';</script>");
        }
    }
}