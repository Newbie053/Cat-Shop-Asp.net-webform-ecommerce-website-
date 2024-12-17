using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CatShop2
{
    public partial class ViewCats : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        protected void AddToCart_Click(object sender, EventArgs e)
        {
            if (Session["username"] == null || Session["username"].ToString() == "")
            {
                Response.Write("<script>alert('Log in first');</script>");
            }
            else
            {
                GridViewRow row = (GridViewRow)((Button)sender).NamingContainer;
                System.Web.UI.WebControls.Label labelProductId = (System.Web.UI.WebControls.Label)row.FindControl("label5");
                string productId = labelProductId.Text;

                // Redirect to cart page with the cat_id as a query parameter
                Response.Redirect("~/cartPage.aspx?cat_id=" + productId);

            }
        }





    }
}