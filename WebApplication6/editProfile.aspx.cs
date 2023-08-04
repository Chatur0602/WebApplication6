using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Configuration;
using System.Linq.Expressions;

namespace WebApplication6
{
    public partial class editProfile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                con.Open();
                //first table
                SqlDataAdapter da = new SqlDataAdapter("select * from Users where Username = '"
                    + Session["Username"] + "'", con);
                DataTable dt = new DataTable();
                da.Fill(dt);
                id.Text = dt.Rows[0][0].ToString();
                username.Text = dt.Rows[0][3].ToString();
               
                usertype.Text = dt.Rows[0][5].ToString();
                email.Text = dt.Rows[0][6].ToString();
                fname.Text = dt.Rows[0][1].ToString();
                lname.Text = dt.Rows[0][2].ToString();
                genderLabel.Text = dt.Rows[0][7].ToString();
                country.Text = dt.Rows[0][8].ToString();
                Image1.ImageUrl = dt.Rows[0][9].ToString();
                img.Text = dt.Rows[0][9].ToString();


            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();

            SqlConnection con2 = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con2.Open();
            //first table
            SqlDataAdapter da2 = new SqlDataAdapter("select * from Users where Username = '"
                + Session["Username"] + "'", con2);
            DataTable dt2 = new DataTable();
            da2.Fill(dt2);
            


            //for file upload
            string folderPath = Server.MapPath("~/ProfilePic/");

            //Check whether Directory (Folder) exists.
            if (!Directory.Exists(folderPath))
            {
                //If Directory (Folder) does not exists Create it.
                Directory.CreateDirectory(folderPath);
            }


            string fileName = img.Text;
            if (fileName == "")
            {
                //Save the File to the Directory (Folder).
                FileUpload1.SaveAs(folderPath + Path.GetFileName(FileUpload1.FileName));

                //Display the Picture in Image control.
                Image1.ImageUrl = "../ProfilePic/" + Path.GetFileName(FileUpload1.FileName);
            }

            else
            {
                Image1.ImageUrl = img.Text;
            }

            if (fname.Text.Length < 3)
            {
                errMsg.ForeColor = System.Drawing.Color.Red;
                errMsg.Text = "Invalid First Name, must be at least 3 characters!";
                errMsg.Visible = true;
            }
            else
            {

                if (lname.Text.Length < 3)
                {
                    errMsg.ForeColor = System.Drawing.Color.Red;
                    errMsg.Text = "Invalid Last Name, must be at least 3 characters!";
                    errMsg.Visible = true;
                }
                else
                {
                    if (country.Text.Length < 3)
                    {
                        errMsg.ForeColor = System.Drawing.Color.Red;
                        errMsg.Text = "Invalid Country Name, must be at least 3 characters!";
                        errMsg.Visible = true;
                    }
                    else
                    {
                        bool email2 = IsValidEmail(email.Text);
                        if (email.Text.Length < 8 || email2 == false)
                        {
                            errMsg.ForeColor = System.Drawing.Color.Red;
                            errMsg.Text = "Invalid Email, must be at least 8 characters and contain an @ !";
                            errMsg.Visible = true;
                        }
                        else
                        {
                            if (username.Text.Length < 8)

                            {
                                errMsg.ForeColor = System.Drawing.Color.Red;
                                errMsg.Text = "Invalid Username, must be at least 8 characters!";
                                errMsg.Visible = true;

                            }
                            else
                            {
                                if (pwd.Text.Length < 8 || pwd.Text != dt2.Rows[0][4].ToString())
                                {
                                    errMsg.ForeColor = System.Drawing.Color.Red;
                                    errMsg.Text = "Invalid Password, must be at least 8 characters!";
                                    errMsg.Visible = true;
                                }
                                else
                                {

                                    string query = "update Users set Id ='" + id.Text + "',Password ='" + pwd.Text + "',Usertype ='" + usertype.Text + "',Gender ='"
                                    + genderLabel.Text + "',Email ='" + email.Text + "',firstName ='" + fname.Text + "',lastName ='" + lname.Text +
                                 "',country ='" + country.Text + "' where Username = '" + username.Text + "'";
                                    SqlCommand cmd = new SqlCommand(query, con);
                                    cmd.ExecuteNonQuery();
                                    con.Close();

                                    errMsg.Visible = true;
                                    errMsg.Text = "Some Thing's Wrong, please try again.";

                                    Response.Redirect("home.aspx");

                                }
                            }
                        }
                    }
                }
            }









        }
        bool IsValidEmail(string email)
        {
            var trimmedEmail = email.Trim();

            if (trimmedEmail.EndsWith("."))
            {
                return false; // suggested by @TK-421
            }
            try
            {
                var addr = new System.Net.Mail.MailAddress(email);
                return addr.Address == trimmedEmail;
            }
            catch
            {
                return false;
            }
        }

    }
}
    
