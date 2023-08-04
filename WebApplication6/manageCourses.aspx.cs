using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Security.Cryptography;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace WebApplication6
{
    public partial class manageCourses : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();

            //for new table with zero record
            string query1 = "select count (*) from Courses";
            SqlCommand cmd1 = new SqlCommand(query1, con);

            int record = Convert.ToInt32(cmd1.ExecuteScalar().ToString().Replace(" ", ""));
            if (record < 1)
            {
                id.Text = "1";
            }
            else
            {
                //for table with record(s)
                string query1a = "select Top 1 Id from Courses order by Id desc";
                SqlCommand cmd1a = new SqlCommand(query1a, con);

                record = Convert.ToInt32(cmd1a.ExecuteScalar().ToString().Replace(" ", "")) + 1;
                id.Text = record.ToString();
            }
        }

        protected void Button4_Click(object sender, EventArgs e)

        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();

            string query = "select count(*) from Courses where courseName = '" + cName.Text + "'";
            SqlCommand cmd = new SqlCommand(query, con);
            int check = Convert.ToInt32(cmd.ExecuteScalar().ToString());


            try
            {
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
                    pictureUpload.SaveAs(folderPath + Path.GetFileName(pictureUpload.FileName));

                    //Display the Picture in Image control.
                    image1.ImageUrl = "~/ProfilePic/" + Path.GetFileName(pictureUpload.FileName);
                }
                else
                {
                    image1.ImageUrl = img.Text;         
                }
            }catch(Exception ex){
                
                errMsg.Visible = true;
                errMsg.ForeColor = System.Drawing.Color.Red;
                errMsg.Text = "Please select an Image!";
                errMsg.Text = ex.ToString();
            }

            

            if (cName.Text.Length < 3)
            {
                errMsg.ForeColor = System.Drawing.Color.Red;
                errMsg.Text = "Invalid Course Name, must be at least 3 characters!";
                errMsg.Visible = true;
            }
            else
            {

                if (cDescription.Text.Length < 16)
                {
                    errMsg.ForeColor = System.Drawing.Color.Red;
                    errMsg.Text = "Invalid Course Description, must be at least 16 characters!";
                    errMsg.Visible = true;
                }
                else
                {
                    if (cDuration.Text.Length < 4)
                    {
                        errMsg.ForeColor = System.Drawing.Color.Red;
                        errMsg.Text = "Invalid Course Duration, must be at least 4 characters!";
                        errMsg.Visible = true;
                    }
                    else
                    {

                        if (cWYL1.Text.Length < 3)
                        {
                            errMsg.ForeColor = System.Drawing.Color.Red;
                            errMsg.Text = "Please add what you're learning!";
                            errMsg.Visible = true;
                        }
                        else
                        {

                            if (check > 0)
                            {
                                errMsg.Visible = true;
                                errMsg.ForeColor = System.Drawing.Color.Red;
                                errMsg.Text = "This Course already exists, try a different course name!";
                            }


                            else
                            {

                                //create record in a table called Users
                                string query1 = "insert into Courses (Id, courseName, courseDescription, courseDuration, WYL1, WYL2, WYL3, WYL4, Date, Author, Video) " +
                                    "values (@id, @courseName, @courseDescription, @courseDuration, @WYL1, @WYL2, @WYL3, @WYL4, @Date, @Author, @Video) ";
                                SqlCommand cmd1 = new SqlCommand(query1, con);
                                cmd1.Parameters.AddWithValue("@id", id.Text);
                                cmd1.Parameters.AddWithValue("@courseName", cName.Text);
                                cmd1.Parameters.AddWithValue("@courseDescription", cDescription.Text);
                                cmd1.Parameters.AddWithValue("@courseDuration", cDuration.Text);
                                cmd1.Parameters.AddWithValue("@WYL1", cWYL1.Text);
                                cmd1.Parameters.AddWithValue("@WYL2", cWYL2.Text);
                                cmd1.Parameters.AddWithValue("@WYL3", cWYL3.Text);
                                cmd1.Parameters.AddWithValue("@WYL4", cWYL4.Text);
                                cmd1.Parameters.AddWithValue("@Date", DateTime.Now.Date);
                                cmd1.Parameters.AddWithValue("@Author", Session["Username"].ToString().ToLower());
                                cmd1.Parameters.AddWithValue("@Video", image1.ImageUrl);
                                cmd1.ExecuteNonQuery();
                                Response.Redirect("manageCourses.aspx");
                            }

                            con.Close();
                        }
                    }
                }
            }
        } 

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();


            string query = "delete from Courses where Id = '" + TextBox1.Text + "'";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();

            

            Response.Redirect("manageCourses.aspx");

            errMsg2.Visible = true;
            errMsg2.ForeColor = System.Drawing.Color.Green;
            errMsg2.Text = "Record Deleted Successfully";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con2 = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con2.Open();




            string query = "select count(*) from Courses where Id = '" + TextBox1.Text + "'";
            SqlCommand cmd = new SqlCommand(query, con2);
            int check = Convert.ToInt32(cmd.ExecuteScalar().ToString());

            if (check > 0)
            {
                errMsg2.Visible = false;                    

                SqlDataAdapter da = new SqlDataAdapter("select * from Courses where Id = '"
                    + TextBox1.Text + "'", con2);
                DataTable dt = new DataTable();
                da.Fill(dt);

                TextBox2.Text = dt.Rows[0][1].ToString();
                TextBox3.Text = dt.Rows[0][2].ToString();
                TextBox4.Text = dt.Rows[0][3].ToString();
                TextBox5.Text = dt.Rows[0][4].ToString();
                TextBox6.Text = dt.Rows[0][5].ToString();
                TextBox7.Text = dt.Rows[0][6].ToString();
                TextBox8.Text = dt.Rows[0][7].ToString();

            }
            else
            {
                errMsg2.Visible = true;
                errMsg2.ForeColor = System.Drawing.Color.Red;
                errMsg2.Text = "There is no Course Record with the respective Course ID";


            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            if (TextBox2.Text.Length < 3)
            {
                errMsg2.ForeColor = System.Drawing.Color.Red;
                errMsg2.Text = "Invalid Course Name, must be at least 3 characters!";
                errMsg2.Visible = true;
            }
            else
            {

                if (TextBox3.Text.Length < 16)
                {
                    errMsg2.ForeColor = System.Drawing.Color.Red;
                    errMsg2.Text = "Invalid Course Description, must be at least 16 characters!";
                    errMsg2.Visible = true;
                }
                else
                {
                    if (TextBox4.Text.Length < 4)
                    {
                        errMsg2.ForeColor = System.Drawing.Color.Red;
                        errMsg2.Text = "Invalid Course Duration, must be at least 4 characters!";
                        errMsg2.Visible = true;
                    }
                    else
                    {

                        if (TextBox5.Text.Length < 3)
                        {
                            errMsg2.ForeColor = System.Drawing.Color.Red;
                            errMsg2.Text = "Please add what you're learning!";
                            errMsg2.Visible = true;
                        }
                        else
                        {
                            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                            con.Open();

                            string query = "update Courses set Id ='" + TextBox1.Text + "',courseName ='" + TextBox2.Text + "',courseDescription ='" + TextBox3.Text + "',courseDuration ='"
                                    + TextBox4.Text + "',WYL1 ='" + TextBox5.Text + "',WYL2 ='" + TextBox6.Text + "',WYL3 ='" + TextBox7.Text +
                                                 "',WYL4 ='" + TextBox8.Text + "',Date ='" + DateTime.Now.Date + "',Author ='" + Session["Username"].ToString().ToLower() + "' where Id = '" + TextBox1.Text + "'";
                            SqlCommand cmd = new SqlCommand(query, con);
                            cmd.ExecuteNonQuery();

                            Response.Redirect("manageCourses.aspx");

                            errMsg2.Visible = true;
                            errMsg2.ForeColor = System.Drawing.Color.Green;
                            errMsg2.Text = "Record Updated Successfully";
                        }
                    }
                }
            }
        }

        protected void addCourse_Click(object sender, EventArgs e)
        {
            edit.Style.Add("display", "none");
            add.Style.Add("display", "inherit");

        }
    }
}