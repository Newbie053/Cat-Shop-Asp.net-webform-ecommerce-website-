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
    public partial class cartPage : System.Web.UI.Page
    {

        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Check if the cat_id is present in the session
                if (Request.QueryString["cat_id"] != null)
                {
                    // Retrieve the cat_id from the session
                    string catId = Request.QueryString["cat_id"];

                    Session["cat_id"] = catId;

                    //Console.WriteLine("Session cat_id: " + catId);

                    // Use the cat_id to fetch details from the database
                    var catDetails = GetCatDetailsFromDatabase(catId);

                    if (catDetails != null)
                    {
                        // Print debug information
                        //Console.Write("Cat Details: " + catDetails.CatId + ", " + catDetails.Price + ", " + catDetails.BreedName);

                        // Display the cat details on the page
                        Label1.Text = catDetails.CatId;
                        Label2.Text = catDetails.Price;
                        Label3.Text = catDetails.BreedName;
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
            string query = "SELECT cat_id, breed_name, prize FROM cat_master_tbl WHERE cat_id = @CatId";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    // Add parameters to the SQL query
                    command.Parameters.AddWithValue("@CatId", catId);

                    connection.Open();

                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        if (reader.Read())
                        {
                            // Return an anonymous object with cat details
                            return new
                            {
                                CatId = reader["cat_id"].ToString(),
                                BreedName = reader["breed_name"].ToString(),
                                Price = reader["prize"].ToString()
                                
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


        }
void updateCatStatus(string catId, string status)
{
    using (SqlConnection con = new SqlConnection(strcon))
    {
        if (con.State == ConnectionState.Closed)
        {
            con.Open();
        }

        SqlCommand cmd = new SqlCommand("UPDATE cat_master_tbl SET status = @status WHERE cat_id = @cat_id", con);

        cmd.Parameters.AddWithValue("@cat_id", catId);
        cmd.Parameters.AddWithValue("@status", status);

        cmd.ExecuteNonQuery();
    }
}


        void addNewCat()
        {

            using (SqlConnection con = new SqlConnection(strcon))
            {
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                // Debugging statements
                Console.WriteLine("Member ID: " + Session["username"]);
                Console.WriteLine("Food ID: " + Session["cat_id"]);

                //Response.Write("<script>alert('Member ID: " + Session["username"] + "\\nFood ID: " + Session["food_id"] + "');</script>");



                SqlCommand cmd = new SqlCommand("INSERT INTO cat_issue_tbl (cat_id, member_id, order_date) VALUES (@cat_id, @member_id, GETDATE())", con);

                // Assuming member_id and food_id are not null in the session
                cmd.Parameters.AddWithValue("@member_id", Session["username"].ToString());
                cmd.Parameters.AddWithValue("@cat_id", Session["cat_id"].ToString());

                cmd.ExecuteNonQuery();

                //Response.Write("<script>alert('Order placed successfully!');</script>");
            }


        }

        protected void btnPlaceOrder_Click1(object sender, EventArgs e)
        {
            addNewCat();
            updateCatStatus(Session["cat_id"].ToString(), "Sold Out");

            string script = @"<script>
                        alert('Order placed successfully!');
                        setTimeout(function(){
                        window.location.href = '/ViewCats.aspx';
                    }, 100);
                     </script>";
            ClientScript.RegisterStartupScript(this.GetType(), "PlaceOrderMessage", script);

            //Response.Redirect("~/ViewCats.aspx");

        }
    }
}