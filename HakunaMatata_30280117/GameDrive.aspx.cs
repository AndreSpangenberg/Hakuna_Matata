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
    public partial class GameDrive : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\27784\Desktop\HakunaMatata_30280117\HakunaMatata_30280117\HakunaMatata_30280117\App_Data\PurchaseDB.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            Calendar1.SelectedDate = DateTime.Today.Date;
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("HakunaMatata.aspx");
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            DateTime theDate = Calendar1.SelectedDate;
            if (theDate <= DateTime.Today.Date)
            {
                lblDisplay.Text = "Please select a future date!";
            }
            else
            {
                Session["Time"] = theDate.ToString("dd/MM/yyy");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            if(int.Parse(txtNumPeople.Text) > 10 || int.Parse(txtNumPeople.Text) < 1)
            {
                lblPeople.Text = "You can only book for 1 to 10 people";
            }
            else
            {
                int numPeople = int.Parse(txtNumPeople.Text);
                Session["People"] = numPeople;
                int price = numPeople * 300;
                string product = "Game Drive";
                if (Session["Time"] != null && Session["People"] != null && Session["Email"] != null)
                {
                    con.Open();
                    string sql = "INSERT INTO tblPurchase(Email, Product, Price) VALUES(@Email, @Product, @Price)";
                    SqlCommand cmd = new SqlCommand(sql, con);
                    cmd.Parameters.AddWithValue("@Email", Session["Email"]);
                    cmd.Parameters.AddWithValue("@Product", product);
                    cmd.Parameters.AddWithValue("@Price", price);
                    cmd.ExecuteNonQuery();
                    con.Close();

                }
            }
        }
    }
}