﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace standard
{
    public partial class user0 : System.Web.UI.Page
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

        protected void GridView2_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Edit")
            {
                string sqlstr = "select number from [bz] where number='" + GridView2.DataKeys[Convert.ToInt32(e.CommandArgument)].Value.ToString() + "'";
                string str = "Data Source=(local);Initial Catalog=standard;Integrated Security=True";
                SqlConnection conn = new SqlConnection(str);
                SqlCommand cmd = new SqlCommand(sqlstr, conn);
                conn.Open();
                cmd.ExecuteNonQuery();
                int number = Convert.ToInt32(cmd.ExecuteScalar().ToString());
                string s_url;   
                s_url = "edit.aspx?number=" +number;   
                conn.Close();
                Response.Redirect(s_url);
            }
        }
    }
}