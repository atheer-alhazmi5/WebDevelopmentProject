using System;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebDevelopmentProject
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            // delete item using ID
            SqlConnection conn = new SqlConnection("Data Source= localhost\\SqlExpress;Initial Catalog=info ;" +
                " Integrated Security=True");

            string sql;
            sql = "DELETE FROM items WHERE ID ='" + TextBox1.Text + "'"; // delete by ID
            SqlCommand comm = new SqlCommand(sql, conn);
            try
            {
                conn.Open();
                comm.ExecuteNonQuery();
                TextBox1.Text = "";
                Label1.Text = "item is deleted";
            }
            catch
            { Label1.Text = "No ID was found"; }
            finally
            { conn.Close(); }

        }
    }
}