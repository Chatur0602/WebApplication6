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
using Microsoft.Ajax.Utilities;

namespace WebApplication6
{
    public partial class registrationPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();

            //for new table with zero record
            string query1 = "select count (*) from Users";
            SqlCommand cmd1 = new SqlCommand(query1, con);

            int record = Convert.ToInt32(cmd1.ExecuteScalar().ToString().Replace(" ", ""));
            if (record < 1)
            {
                id.Text = "1";
            }
            else
            {
                //for table with record(s)
                string query1a = "select Top 1 Id from Users order by Id desc";
                SqlCommand cmd1a = new SqlCommand(query1a, con);

                record = Convert.ToInt32(cmd1a.ExecuteScalar().ToString().Replace(" ", "")) + 1;
                id.Text = record.ToString();
            }

        }

        

            protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                if (Page.IsValid)
                {

                    if (fname.Text.Length < 3)
                    {
                        errMsg.ForeColor = System.Drawing.Color.Yellow;
                        errMsg.Text = "Invalid First Name, must be at least 3 characters!";
                        errMsg.Visible = true;
                    }
                    else
                    {

                        if (lname.Text.Length < 3)
                        {
                            errMsg.ForeColor = System.Drawing.Color.Yellow;
                            errMsg.Text = "Invalid Last Name, must be at least 3 characters!";
                            errMsg.Visible = true;
                        }
                        else
                        {
                            if (country.Text.Length < 3)
                            {
                                errMsg.ForeColor = System.Drawing.Color.Yellow;
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
                                        if (pwd.Text.Length < 8)
                                        {
                                            errMsg.ForeColor = System.Drawing.Color.Red;
                                            errMsg.Text = "Invalid Password, must be at least 8 characters!";
                                            errMsg.Visible = true;
                                        }

                                        else
                                        {
                                            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                                            con.Open();

                                            string query = "select count(*) from Users where Username = '" + username.Text + "'";
                                            SqlCommand cmd = new SqlCommand(query, con);
                                            int check = Convert.ToInt32(cmd.ExecuteScalar().ToString());

                                            if (check > 0)
                                            {
                                                errMsg.Visible = true;
                                                errMsg.ForeColor = System.Drawing.Color.Red;
                                                errMsg.Text = "Record has been taken!";
                                            }


                                            else
                                            {

                                                //create record in a table called Users
                                                string query1 = "insert into Users (Id, Username, Password, Usertype, Email, firstName, lastName, gender, country) " +
                                                    "values (@id, @username, @password, @usertype, @email, @firstName, @lastName, @gender, @country) ";
                                                SqlCommand cmd1 = new SqlCommand(query1, con);
                                                cmd1.Parameters.AddWithValue("@id", id.Text);
                                                cmd1.Parameters.AddWithValue("@username", username.Text);
                                                cmd1.Parameters.AddWithValue("@password", pwd.Text);
                                                cmd1.Parameters.AddWithValue("@usertype", usertype.Text);
                                                cmd1.Parameters.AddWithValue("@email", email.Text);
                                                cmd1.Parameters.AddWithValue("@firstName", fname.Text);
                                                cmd1.Parameters.AddWithValue("@lastName", lname.Text);
                                                cmd1.Parameters.AddWithValue("@gender", gender.SelectedItem.Text);
                                                cmd1.Parameters.AddWithValue("@country", country.Text);
                                                cmd1.ExecuteNonQuery();
                                                Response.Redirect("login.aspx");
                                            }

                                            con.Close();
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            
                else
                {
                    errMsg.Visible = true;
                    errMsg.ForeColor = System.Drawing.Color.Yellow;
                    errMsg.Text = "Please enter valid data to proceed";
                }
            }

            catch (Exception ex)
            {
                errMsg.Visible = true;
                errMsg.ForeColor = System.Drawing.Color.Red;
                errMsg.Text = "Registration not successful!" + ex.ToString();


            }

        }

 
        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            if (Convert.ToInt32(args.Value) < 3)
            {
                args.IsValid = false;
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