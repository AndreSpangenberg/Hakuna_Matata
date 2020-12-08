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
    public partial class Spa : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\27784\Desktop\HakunaMatata_30280117\HakunaMatata_30280117\HakunaMatata_30280117\App_Data\PurchaseDB.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
           
        }

        protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
        {
            if(RadioButton1.Checked)
            {
                Session["Spa"] = 470;
            }
            else if(RadioButton2.Checked)
            {
                Session["Spa"] = 270;
            }
            else if (RadioButton3.Checked)
            {
                Session["Spa"] = 350;
            }
            else if (RadioButton4.Checked)
            {
                Session["Spa"] = 399;
            }
            else if (RadioButton5.Checked)
            {
                Session["Spa"] = 250;
            }
            else if (RadioButton6.Checked)
            {
                Session["Spa"] = 250;
            }
            else if (RadioButton7.Checked)
            {
                Session["Spa"] = 300;
            }
            else if (RadioButton8.Checked)
            {
                Session["Spa"] = 320;
            }
            else if (RadioButton9.Checked)
            {
                Session["Spa"] = 4999;
            }
        }

        protected void btnBook_Click(object sender, EventArgs e)
        {
            con.Open();
            string spa = "Spa";
            if (Session["Spa"] != null && Session["Email"] != null)
            {
                con.Open();
                string sql = "INSERT INTO tblPurchase(Email, Product, Price) VALUES(@Email, @Product, @Price)";
                SqlCommand cmd = new SqlCommand(sql, con);
                cmd.Parameters.AddWithValue("@Email", Session["Email"]);
                cmd.Parameters.AddWithValue("@Product", spa);
                cmd.Parameters.AddWithValue("@Price", Session["Spa"]);
                cmd.ExecuteNonQuery();
                con.Close();
            }
            else
            {
                lblDisplay.Text = "Please choose a SPA treatment!";
            }
        }

        protected void btnReturn_Click(object sender, EventArgs e)
        {
            Response.Redirect("HakunaMatata.aspx");
        }
    }
}