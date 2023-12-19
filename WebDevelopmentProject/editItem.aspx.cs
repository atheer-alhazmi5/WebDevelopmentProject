using System;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebDevelopmentProject
{
    public partial class WebForm8 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection("Data Source= localhost\\SqlExpress;Initial Catalog=info ; Integrated Security=True");
            string sql;
            sql = "UPDATE items SET name ='" + TextBox2.Text + 
                "', price = '" + TextBox3.Text +
                "' , quantity = '" + TextBox4.Text + 
                "', discountYes = '" + RadioButton1.Checked +
                "', DiscountNo = '" + RadioButton2.Checked + 
                "', category = '" + DropDownList1.Text+ 
                "' WHERE ID ='" + TextBox1.Text + "'";
            SqlCommand comm = new SqlCommand(sql, conn);
            try
            {
                conn.Open();
                comm.ExecuteNonQuery();
                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";
                TextBox4.Text = "";
                Label1.Text = "item is updated";
            }
            catch
            { Label1.Text = "No ID was found"; }
            finally
            { conn.Close(); }

        }
    }
}