using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SQL_Web_test02
{
    public partial class WebForm8 : System.Web.UI.Page
    {
        string connstr = ConfigurationManager.ConnectionStrings["ChinookConnectionString"].ConnectionString;
        public string name;
        public string mid;
        public string password;
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                Session["Id"] = mid;
                Session["UserName"] = name;
                Session["Password"] = password;

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(connstr);
            string sql = "select * from Member where name='" + TextBox1.Text + "'";
            SqlCommand cmd = new SqlCommand(sql, conn);

            conn.Open(); //開啟連線 
            SqlDataReader reader = cmd.ExecuteReader();

            if (reader.Read())
            {
                mid = reader["mid"].ToString();
                name = reader["name"].ToString();
                password = reader["passwd"].ToString();

                if (password == name)
                { //儲存使用者的使用者名稱,ID,使用者型別 
                  //UserName = name;
                    Session["Id"] = mid;
                    Session["UserName"] = name;
                    Session["Password"] = password;

                    Response.Redirect("Main.aspx");
                }
                else if (password == TextBox2.Text)
                {
                    Response.Redirect("WebForm1.aspx");
                }
                else
                {
                    Label1.Text = "密碼錯誤!請再次輸入!";
                    TextBox2.Text = "";
                }
            }
            else
            {
                Label1.Text = "使用者名稱不存在,請重新出入!";
                TextBox1.Text = "";
            }

        }
    }
}