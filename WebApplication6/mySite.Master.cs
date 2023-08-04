using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.Ajax.Utilities;

namespace WebApplication2
{
    public partial class mySite : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (!Page.IsPostBack)
                {
                    if (Session["Usertype"] != null && Session["Username"] != null)
                    {
                        if (Session["Usertype"].ToString() == "member")
                        {
                            username.Text = "Hello, " + Session["Username"].ToString().ToLower();
                            manageMemberLink.Visible = false;
                            manageCoursesLink.Visible = false;
                        }
                        else if (Session["Usertype"].ToString() == "admin")
                        {
                            username.Text = "Hello Master, " + Session["Username"].ToString().ToLower();
                        }
                    }
                    else
                    {
                        manageMemberLink.Visible = false;
                        editLink.Visible = false;
                        logoutLink.Visible = false;
                        quizLabel.Visible = false;
                        manageCoursesLink.Visible = false;
                        courseLabel.Visible = false;
                    }
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine("Exception caught!" + ex);

                manageMemberLink.Visible = false;
                editLink.Visible = false;
                logoutLink.Visible = false;
                quizLabel.Visible = false;
                manageCoursesLink.Visible = false;
                courseLabel.Visible = false;
            }
        }

        protected void logoutLink_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("home.aspx");
        }
    }
}