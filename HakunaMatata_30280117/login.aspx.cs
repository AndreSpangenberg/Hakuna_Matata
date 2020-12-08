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
    public partial class login : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
        SqlDataAdapter sda = new SqlDataAdapter();
        DataSet ds = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {
            con.ConnectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\27784\Desktop\HakunaMatata_30280117\HakunaMatata_30280117\HakunaMatata_30280117\App_Data\UsersDB.mdf;Integrated Security=True";
            con.Open();
        }

        protected void btnSignIn_Click(object sender, EventArgs e)
        {
            cmd.CommandText = "SELECT * FROM tblUsers WHERE Email = '" + txtEmail.Text + "' AND Password ='" + txtpassword.Text + "'";
            cmd.Connection = con;
            sda.SelectCommand = cmd;
            sda.Fill(ds, "tblUsers");
            if(ds.Tables[0].Rows.Count > 0)
            {
                Session["Email"] = txtEmail.Text;
                Response.Redirect("HakunaMatata.aspx");
            }
            else
            {
                lblIncorrect.Text = "Email or Password is incorrect";
            }

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            Response.Redirect("Register.aspx");
        }
    }
}