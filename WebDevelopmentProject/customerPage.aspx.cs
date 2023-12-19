using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace WebDevelopmentProject
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
      
            if (Session["Image"] != null)
                Image2.ImageUrl = Session["Image"].ToString();
            if (Session["name"] != null)
                UserName.Text = Session["name"].ToString();
        }
    }
}