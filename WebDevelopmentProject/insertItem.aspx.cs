using System;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebDevelopmentProject
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            // Connection
            SqlConnection conn = new SqlConnection("Data Source= localhost\\SqlExpress;Initial Catalog=info ; Integrated Security=True");
            string sql; // insert into items table
            sql = "INSERT INTO items (ID,name,price,quantity,discountYes,DiscountNo,category) values ('" + TextBox1.Text + "','" 
                + TextBox2.Text + "','"
                + TextBox3.Text + "','"
                + TextBox4.Text + "','"
                + RadioButton1.Checked + "','"
                + RadioButton2.Checked + "','"
                + DropDownList1.Text + "')";
            SqlCommand comm = new SqlCommand(sql, conn);
            try
            {
                conn.Open();
                comm.ExecuteNonQuery();
                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";
                TextBox4.Text = "";
                Label1.Text = "Item Inserted Successfully"; // label pops up when item is inserted to the table
            }
            catch
            {
                Label1.Text = "Something went wrong, nothing was inserted";
            }
            finally
            { conn.Close(); }

        }
    }
}