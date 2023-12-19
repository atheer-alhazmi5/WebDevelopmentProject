using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace WebDevelopmentProject
{
    public partial class WebForm9 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

  

      

        protected void lgnbutton_Click(object sender, EventArgs e)
        {//connecttion to database
            SqlConnection con = new SqlConnection("Data Source= localhost\\SqlExpress;Initial Catalog=info; Integrated Security=True");
            //connect textboxes to the usersAll Table
            SqlCommand cmd = new SqlCommand("select * from usersAll where name='" + usernameLogin.Text + "' and password='" + passwordlgin.Text + "'", con);
            con.Open();
            SqlDataReader datareader = cmd.ExecuteReader();
            while (datareader.Read())
            {
                if (datareader.HasRows)
                {
                    Session["userid"] = datareader["Id"].ToString();
                    Session["name"] = datareader["name"].ToString();
                    Session["Role"] = datareader["Role"].ToString();
                    Session["ImageUrl"] = datareader["Image"].ToString();
                    Session.Timeout = 9999;
                    if (Session["Role"].ToString() == "customer")
                    {
                       //if role is customer directs to customer default page
                        Response.Redirect("~/customerPage.aspx");
                    }
                    else
                    {//if role is admin directs to admin default page
                        Response.Redirect("~/adminPage.aspx");
                    }
                }
            }
            // an error message pops up if user enters an invalid username or password
            errorLabel.Text = "make sure username or password is correct";
            con.Close();
        }
    }
    }
