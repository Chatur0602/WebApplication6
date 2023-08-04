using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Configuration;

namespace WebApplication6
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (!Page.IsPostBack)
            {
                username.Attributes.Add("autocomplete", "off");
                pwd.Attributes.Add("autocomplete", "off");
            }

            


        }
        
        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();

            SqlCommand cmd = new SqlCommand("select count(*) from Users where Username = '" + username.Text
                              + "' and Password = '" + pwd.Text + "'", con);
            int count = Convert.ToInt32(cmd.ExecuteScalar().ToString());
            Response.Write(count.ToString());

            if (count > 0)
            {
                SqlCommand cmdType = new SqlCommand("select Usertype from Users where Username = '" + username.Text + "'", con);
                string type = cmdType.ExecuteScalar().ToString().Replace(" ", "");
                string uname = username.Text;
                Session["UserType"] = type;
                Session["utype"] = "member";
                Session["Username"] = uname;
                if (type == "admin")
                    Response.Redirect("home.aspx");
                else if (type == "member")
                    Response.Redirect("home.aspx");
            }
            else
            {
                this.errorMsg.Text = "Incorrect Username/Password";
                this.errorMsg.Visible = true;
                this.errorMsg.ForeColor = System.Drawing.Color.DarkRed;
            }
            con.Close();
        }
    }
    
}