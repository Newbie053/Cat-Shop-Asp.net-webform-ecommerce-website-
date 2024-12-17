using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CatShop2
{
    public partial class cartPageFood : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Check if the cat_id is present in the session
                if (Request.QueryString["food_id"] != null)
                {
                    // Retrieve the cat_id from the session
                    string foodId = Request.QueryString["food_id"];

                    Session["food_id"] = foodId;

                    //Console.WriteLine("Session cat_id: " + catId);

                    // Use the cat_id to fetch details from the database
                    var foodDetails = GetCatDetailsFromDatabase(foodId);

                    if (foodDetails != null)
                    {
                        // Print debug information
                        //Console.Write("Cat Details: " + catDetails.CatId + ", " + catDetails.Price + ", " + catDetails.BreedName);

                        // Display the cat details on the page
                        Label1.Text = foodDetails.foodId;
                        Label2.Text = foodDetails.Price;
                        Label3.Text = foodDetails.FoodName;
                        // Add other controls as needed
                    }
                    else
                    {
                        Console.WriteLine("Cat details not found.");
                    }
                }
            }

        }
        private dynamic GetCatDetailsFromDatabase(string catId)
        {
            // Connection string from your web.config
            string connectionString = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

            // SQL query to retrieve cat details
            string query = "SELECT food_id, food_name, food_price FROM food_Inventory WHERE food_id = @foodId";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    // Add parameters to the SQL query
                    command.Parameters.AddWithValue("@foodId", catId);

                    connection.Open();

                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        if (reader.Read())
                        {
                            // Return an anonymous object with cat details
                            return new
                            {
                                foodId = reader["food_id"].ToString(),
                                FoodName = reader["food_name"].ToString(),
                                Price = reader["food_price"].ToString()

                                // Add other properties as needed
                            };
                        }
                    }
                }
            }
            // Return null if no data is found
            return null;

        }

        protected void btnPlaceOrder_Click(object sender, EventArgs e)
        {

  
            string script = @"<script>
                        alert('Order placed successfully!');
                        setTimeout(function(){
                        window.location.href = '/ViewCats.aspx';
                    }, 100);
                     </script>";
            ClientScript.RegisterStartupScript(this.GetType(), "PlaceOrderMessage", script);

            //Response.Redirect("~/ViewCats.aspx");
        }

        protected void btnPlaceOrder_Click1(object sender, EventArgs e)
        {

            addNewFood();
            updateCatStatus(Session["food_id"].ToString(), "Sold Out");
            string script = @"<script>
                        alert('Order placed successfully!');
                        setTimeout(function(){
                        window.location.href = '/Viewfoods.aspx';
                    }, 100);
                     </script>";
            ClientScript.RegisterStartupScript(this.GetType(), "PlaceOrderMessage", script);

            //Response.Redirect("~/ViewCats.aspx");
        }


        void updateCatStatus(string foodId, string status)
        {
            using (SqlConnection con = new SqlConnection(strcon))
            {
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("UPDATE food_Inventory SET status = @status WHERE food_id = @food_id", con);

                cmd.Parameters.AddWithValue("@food_id", foodId);
                cmd.Parameters.AddWithValue("@status", status);

                cmd.ExecuteNonQuery();
            }
        }


        void addNewFood()
        {
           
                using (SqlConnection con = new SqlConnection(strcon))
                {
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }

                    // Debugging statements
                    Console.WriteLine("Member ID: " + Session["username"]);
                    Console.WriteLine("Food ID: " + Session["food_id"]);

                   // Response.Write("<script>alert('Member ID: " + Session["username"] + "\\nFood ID: " + Session["food_id"] + "');</script>");



                    SqlCommand cmd = new SqlCommand("INSERT INTO food_issue_tbl (food_id, member_id, order_date) VALUES (@food_id, @member_id, GETDATE())", con);

                    // Assuming member_id and food_id are not null in the session
                    cmd.Parameters.AddWithValue("@member_id", Session["username"].ToString());
                    cmd.Parameters.AddWithValue("@food_id", Session["food_id"].ToString());

                    cmd.ExecuteNonQuery();

                    Response.Write("<script>alert('Order placed successfully!');</script>");
                }
            
 
        }


    }
}