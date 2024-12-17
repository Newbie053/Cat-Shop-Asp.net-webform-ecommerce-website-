using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CatShop2
{
    public partial class ViewFoods : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void AddToCart_Click(object sender, EventArgs e)
        {
            // Check if the user is authenticated
            /*if (HttpContext.Current.User.Identity.IsAuthenticated)
            {
                // Get the selected product's ID from the GridView
                GridViewRow row = (GridViewRow)((Button)sender).NamingContainer;
                Label labelProductId = (Label)row.FindControl("cat_id");
                string productId = ((Label)row.FindControl("Label5")).Text;

                // Now you have the product ID, and you can perform further actions (e.g., add to cart logic).
                // Example: Response.Write("Product ID: " + productId);

                // Add your logic here to handle the "Add to Cart" button click
                // For example, you can call a method to add the product to the shopping cart.
                // Add logic to add the cat to the cart using the productId

                // Display a success message
                Panel1.Visible = true;
                Label1.Text = "Item added to the cart successfully!";
            }
            else
            {
                // The user is not logged in, display a message
                Panel1.Visible = true;
                Label1.Text = "User not found. Please log in to add items to the cart.";
            }*/

            // Optionally, you can redirect to another page or perform any other necessary actions.





            
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
                    Response.Redirect("~/cartPageFood.aspx?food_id=" + productId);
                }
            }
    }
}