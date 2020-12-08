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
    public partial class Register : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\27784\Desktop\HakunaMatata_30280117\HakunaMatata_30280117\HakunaMatata_30280117\App_Data\UsersDB.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            con.Open();
            string Email = "", pass1 = "", pass2 = "";
            Email = txtRegEmail.Text;
            pass1 = txtRegPass1.Text;
            pass2 = txtRegPass2.Text;

            if (Email == "" || pass1 == "" || pass2 == "")
            {
                lblDisplay.Text = "Please fill i all fields";
            }
            else if (pass1.Length != 8 || pass2.Length != 8)
            {
                lblDisplay.Text = "Password must be a 8-digit password";
            }
            else
            {
                string sql = "INSERT INTO tblUsers(Email, Password) VALUES(@Email, @Password)";
                Session["Email"] = txtRegEmail.Text;
                SqlCommand cmd = new SqlCommand(sql, con);
                cmd.Parameters.AddWithValue("@Email", Email);
                cmd.Parameters.AddWithValue("@Password", pass1);
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect("HakunaMatata.aspx");
            }


        }
    }
}