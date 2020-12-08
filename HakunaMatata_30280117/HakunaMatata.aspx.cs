using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HakunaMatata_30280117
{
    public partial class HakunaMatata : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGameDrive_Click(object sender, EventArgs e)
        {
            Response.Redirect("GameDrive.aspx");
        }

        protected void btnSpa_Click(object sender, EventArgs e)
        {
            Response.Redirect("Spa.aspx");
        }

        protected void btnHouse_Click(object sender, EventArgs e)
        {
            Response.Redirect("House.aspx");
        }

        protected void btnPackage_Click(object sender, EventArgs e)
        {
            Response.Redirect("Package.aspx");
        }
    }
}