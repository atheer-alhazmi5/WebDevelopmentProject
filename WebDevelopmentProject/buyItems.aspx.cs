using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace WebDevelopmentProject
{
    public partial class WebForm11 : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["name"] != null)
                UserName.Text = Session["name"].ToString();
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source= localhost\\SqlExpress;Initial Catalog=info ; " +
                "Integrated Security=True");
            var index = int.Parse(e.CommandArgument.ToString());
            var selectedRow = GridView1.Rows[index];
            int ID = int.Parse(selectedRow.Cells[0].Text);
            DateTime dd = (DateTime)DateTime.Now;
            var time = dd.ToString("yyyy-MM-dd");
            SqlCommand cmd = new SqlCommand("INSERT INTO [order](itemID,Username,BuyDate) VALUES('" + ID + "','"
                + Session["Username"] + "','" + time + "')", con);
            SqlCommand cmd2 = new SqlCommand("update items set quantity=quantity-1 where ID=" + ID + "", con);
            decimal price = decimal.Parse(selectedRow.Cells[2].Text);
            if (selectedRow.Cells[4].Text == "True")
            {
                var discount = price * 0.1m;
                price = price - discount;
                lbl.Text = "You Have Bought " + selectedRow.Cells[1].Text + " For " + price + "" +
                    " With Discount Of " + discount; }
            else
            {
                lbl.Text = "You Have Bought " + selectedRow.Cells[1].Text + " For " + price;
            }
            con.Open();
            cmd.ExecuteNonQuery();
            cmd2.ExecuteNonQuery();
            con.Close();

        }
    }
}