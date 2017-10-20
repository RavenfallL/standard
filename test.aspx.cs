using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace standard
{
    public partial class test : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                string str = "Data Source=(local);Initial Catalog=standard;Integrated Security=True";
                SqlConnection conn = new SqlConnection(str);
                conn.Open();
                Response.Write("connected");
                conn.Close();
                Response.Write("closed");

            }
            catch
            {
                Response.Write("error!");
            }
        }
    }
}





protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] != null)
            {
            }
            else 
            {
                Response.Write("<script>alert('尚未登录');window.location.href='Login.aspx'");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            var name = "TextBox1.Text";
            var level = "DropDownList1.SelectedValue";
            var number = "TextBox2.Text";
            var syear = "TextBox3.Text";
            var eyear = "TextBox4.Text";
            var unit = "TextBox5.Text";
            var human = "TextBox6.Text";
            var phone = "TextBox7.Text";
            var email = "TextBox8.Text";
            var aim = "TextBox9.Text";
            var tech = "TextBox10.Text";
            var other = "TextBox11.Text";
            string str = "Data Source=(local);Initial Catalog=standard;Integrated Security=True";
            SqlConnection conn = new SqlConnection(str);
            conn.Open();
            SqlCommand cmd = new SqlCommand("INSERT INTO [bz] (标准项目名称,标准级别,体系表编号,预计起始年限,预计完成年限,主要起草单位,联系人,联系电话,电子邮箱,目的及意义,范围和主要技术内容,备注) VALUES ('name','level','number','syear','eyear','unit','human','phone','email','aim','tech','other')", conn);
            int i = cmd.ExecuteNonQuery();
            Response.Write("<script>alert('提交成功');window.window.location.href='Login.aspx';</script>");
        }