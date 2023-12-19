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

  
    public class insertCustomer
    {
        public insertCustomer() { }
        public insertCustomer(string name, string password, string Role, DateTime registDate)
        {
            this.name = name;
            this.password = password;
            this.Role = Role;
            this.registDate = registDate;
        }
        public string name { get; set; }
        public string password { get; set; }
        public string Role { get; set; }
        public DateTime registDate { get; set; }
    public void insert()
        {
            SqlConnection con = new SqlConnection("Data Source= localhost\\SqlExpress;Initial " +
                "Catalog=info;Integrated Security=True");
            string sql = "insert into usersAll(name,password,Role,registDate) values" +
                " ('" +this.name+ "','" +this.password+ "','"  +this.Role+ "','"  +this.registDate+ "')";
            SqlCommand com = new SqlCommand(sql, con);
            con.Open();
            com.ExecuteNonQuery();
            con.Close();
        }
    }
}
    

