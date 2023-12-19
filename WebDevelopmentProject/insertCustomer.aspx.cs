using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Drawing;

namespace WebDevelopmentProject
{
    public partial class WebForm14 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

      
        protected void Button1_Click(object sender, EventArgs e)
        {
            string pass = Convert.ToString(TextBox2.Text);
            insertCustomer user = new insertCustomer(TextBox1.Text, pass, ListBox1.SelectedValue, Calendar1.SelectedDate);
            user.insert();
            TextBox1.Text = "";
            ListBox1.SelectedValue = "";
            TextBox2.Attributes["Values"] = "";
            LblResult.Text = "User Inserted Succesfully.";
            LblResult.ForeColor = Color.Green;
        }
    }
}