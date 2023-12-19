using System;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebDevelopmentProject
{
    public partial class WebForm12 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            if (FileUpload1.HasFile)
            {
                FileUpload1.SaveAs(Server.MapPath("~/imgs/") + FileUpload1.FileName);
                Label1.Text = "File Uploaded";
                Label1.ForeColor = System.Drawing.Color.Green;
                SqlConnection con = new SqlConnection("Data Source= localhost\\SqlExpress;Initial " +
                    "Catalog=info;Integrated Security=True");
                SqlCommand cmd = new SqlCommand("update usersAll set Image='" + "/imgs/" +
                    FileUpload1.FileName + "' where name='" + Session["name"] + "'", con);
                Session["Image"] = "/imgs/" + FileUpload1.FileName;
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
            }
            else
            {
                Label1.Text = "Please Select File First";
                Label1.ForeColor = System.Drawing.Color.Red;
            }
        }

       
        }
    }
