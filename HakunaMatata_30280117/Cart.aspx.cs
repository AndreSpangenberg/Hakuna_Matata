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

    public partial class Cart : System.Web.UI.Page
    {
        public SqlConnection conn;
        public SqlCommand comm;
        public DataSet ds;
        public SqlDataAdapter adapter;
        public string conString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\27784\Desktop\HakunaMatata_30280117\HakunaMatata_30280117\HakunaMatata_30280117\App_Data\PurchaseDB.mdf;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["Email"] != null)
            {
                conn = new SqlConnection(conString);
                string sql = "SELECT * FROM tblPurchase WHERE Email = '"+Session["Email"]+"'";
                conn.Open();
                adapter = new SqlDataAdapter();
                ds = new DataSet();
                comm = new SqlCommand(sql, conn);
                adapter.SelectCommand = comm;
                adapter.Fill(ds, "tblPurchase");

                GridView1.DataSource = ds;
                GridView1.DataBind();

                conn.Close();

            }
                
        }

        private void loadAll()
        {
            conn.Open();
            adapter = new SqlDataAdapter();
            ds = new DataSet();

            string sql = "SELECT * FROM tblPurchase";

            comm = new SqlCommand(sql, conn);
            adapter.SelectCommand = comm;
            adapter.Fill(ds, "tblPurchase");

            GridView1.DataSource = ds;
            GridView1.DataMember = "tblPurchase";
            conn.Close();
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            conn.Open();
            string sql = "DELETE FROM tblPurchase WHERE Price = @num";
            comm = new SqlCommand(sql, conn);
            comm.Parameters.AddWithValue("@num", txtDelete.Text);
            comm.ExecuteNonQuery();
            conn.Close();
            loadAll();
        }

        protected void btnPay_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");

        }
    }
}