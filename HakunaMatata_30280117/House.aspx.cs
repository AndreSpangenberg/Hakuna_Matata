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
    
    public partial class House : System.Web.UI.Page
    {
        SqlConnection con =  new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\27784\Desktop\HakunaMatata_30280117\HakunaMatata_30280117\HakunaMatata_30280117\App_Data\PurchaseDB.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("HakunaMatata.aspx");
        }

        protected void btn2_Click(object sender, EventArgs e)
        {
            
            if(txt2.Text == "" )
            {
                lblDisplay.Text = "Please enter a amount of days!";
            }
            else if(int.Parse(txt2.Text) <= 0)
            {
                lblDisplay.Text = "Enter a valid amount of days!";
            }
            else
            {
                int price = int.Parse(txt2.Text);
                int cost = 2095 * price;
                string product = "Accommodation";
                Session["Cost"] = cost;
                if (Session["Cost"] != null && Session["Email"] != null)
                {
                    con.Open();
                    string sql = "INSERT INTO tblPurchase(Email, Product, Price) VALUES(@Email, @Product, @Price)";
                    SqlCommand cmd = new SqlCommand(sql, con);
                    cmd.Parameters.AddWithValue("@Email", Session["Email"]);
                    cmd.Parameters.AddWithValue("@Product", product);
                    cmd.Parameters.AddWithValue("@Price", Session["Cost"]);
                    cmd.ExecuteNonQuery();
                    con.Close();

                }
            }
        }

        protected void btn4_Click(object sender, EventArgs e)
        {
            if (txt4.Text == "")
            {
                lblDisplay.Text = "Please enter a amount of days!";
            }
            else if (int.Parse(txt4.Text) <= 0)
            {
                lblDisplay.Text = "Enter a valid amount of days!";
            }
            else
            {
                int price = int.Parse(txt4.Text);
                int cost = 3650 * price;
                string product = "Accommodation";
                Session["Cost"] = cost;
                if (Session["Cost"] != null && Session["Email"] != null)
                {
                    con.Open();
                    string sql = "INSERT INTO tblPurchase(Email, Product, Price) VALUES(@Email, @Product, @Price)";
                    SqlCommand cmd = new SqlCommand(sql, con);
                    cmd.Parameters.AddWithValue("@Email", Session["Email"]);
                    cmd.Parameters.AddWithValue("@Product", product);
                    cmd.Parameters.AddWithValue("@Price", Session["Cost"]);
                    cmd.ExecuteNonQuery();
                    con.Close();

                }
            }
        }

        protected void btn6_Click(object sender, EventArgs e)
        {
            
            if (txt6.Text == "")
            {
                lblDisplay.Text = "Please enter a amount of days!";
            }
            else if (int.Parse(txt6.Text) <= 0)
            {
                lblDisplay.Text = "Enter a valid amount of days!";
            }
            else
            {
                int price = int.Parse(txt6.Text);
                int cost = 4500 * price;
                string product = "Accommodation";
                Session["Cost"] = cost;
                if (Session["Cost"] != null && Session["Email"] != null)
                {
                    con.Open();
                    string sql = "INSERT INTO tblPurchase(Email, Product, Price) VALUES(@Email, @Product, @Price)";
                    SqlCommand cmd = new SqlCommand(sql, con);
                    cmd.Parameters.AddWithValue("@Email", Session["Email"]);
                    cmd.Parameters.AddWithValue("@Product", product);
                    cmd.Parameters.AddWithValue("@Price", Session["Cost"]);
                    cmd.ExecuteNonQuery();
                    con.Close();

                }
            }
        }
    }
}