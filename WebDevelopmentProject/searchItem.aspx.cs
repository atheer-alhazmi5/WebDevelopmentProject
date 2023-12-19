using System;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebDevelopmentProject
{
    public partial class WebForm7 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection("Data Source= localhost\\SqlExpress;Initial Catalog=info ;" +
                " Integrated Security=True");

            string sql;
            sql = "SELECT * FROM items WHERE name ='" + TextBox2.Text + "' "; // search item based on name
            SqlCommand comm = new SqlCommand(sql, conn);
            conn.Open();
            SqlDataReader reader = comm.ExecuteReader();
            while (reader.Read())
            {
                TextBox1.Text = Convert.ToString((int)reader["ID"]);
                TextBox3.Text = Convert.ToString((int)reader["price"]);
                TextBox4.Text = Convert.ToString((int)reader["quantity"]);
                RadioButton1.Checked = (Boolean)reader["discountYes"];
                RadioButton2.Checked = (Boolean)reader["DiscountNo"];
                DropDownList1.Text = (string)reader["category"];
            }
            reader.Close();

        }
    }
}