using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Data.Common;
using System.Web.Services.Description;

namespace HakunaMatata_30280117
{
    public partial class Package : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\27784\Desktop\HakunaMatata_30280117\HakunaMatata_30280117\HakunaMatata_30280117\App_Data\PurchaseDB.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnBook_Click(object sender, EventArgs e)
        {
            string product = "Activity package";
            Session["Package"] = 15000;
            if (Session["Email"] != null)
            {
                con.Open();
                string sql = "INSERT INTO tblPurchase(Email, Product, Price) VALUES(@Email, @Product, @Price)";
                SqlCommand cmd = new SqlCommand(sql, con);
                cmd.Parameters.AddWithValue("@Email", Session["Email"]);
                cmd.Parameters.AddWithValue("@Product", product);
                cmd.Parameters.AddWithValue("@Price", Session["Package"]);
                cmd.ExecuteNonQuery();
                con.Close();

            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("HakunaMatata.aspx");
        }
    }
}