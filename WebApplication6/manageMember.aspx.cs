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

using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

namespace WebApplication6
{
    public partial class manageMember : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();
            if (!Page.IsPostBack)
            {
                SqlDataAdapter da = new SqlDataAdapter("select * from Users where Usertype = '" + usertype.Text + "'", con);
                DataTable dt = new DataTable();
                da.Fill(dt);
                Uname.DataSource = dt;
                Uname.DataTextField = "Username";
                DataBind();
                
                
            }
            
        }
         
        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();
         
            string query = "update Users set Id ='" + id.Text+ "',Password ='" + pwd.Text + "',Usertype ='" + usertype.Text + "',Gender ='"
                    + genderLabel.Text + "',Email ='" + email.Text + "',firstName ='" + fname.Text + "',lastName ='" + lname.Text +
                                 "',country ='" + country.Text + "',photo ='" + "~/ProfilePic/" + "' where Username = '" +Uname.Text + "'";
            SqlCommand cmd = new SqlCommand(query,con);
            cmd.ExecuteNonQuery();
            
            Response.Redirect("manageMember.aspx");

        }
        
            protected void Uname_SelectedIndexChanged(object sender, EventArgs e)
        {
            
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();
          
            SqlDataAdapter da = new SqlDataAdapter("select * from Users where Username = '"
                + Uname.Text + "'", con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            id.Text = dt.Rows[0][0].ToString();
            genderLabel.Text = dt.Rows[0][7].ToString();
            pwd.Text = dt.Rows[0][4].ToString();
            usertype.Text = dt.Rows[0][5].ToString();
            email.Text = dt.Rows[0][6].ToString();
            fname.Text = dt.Rows[0][1].ToString();
            lname.Text = dt.Rows[0][2].ToString();
            country.Text = dt.Rows[0][8].ToString();
            


        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();


            string query = "delete from Users where Username = '" + Uname.Text + "'";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();

            Response.Redirect("manageMember.aspx");

        }

        protected void gender_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }
    }
}