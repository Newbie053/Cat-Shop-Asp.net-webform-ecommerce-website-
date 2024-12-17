using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CatShop2
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            try
            {
                if (Session != null)
                {
                    if (string.IsNullOrEmpty((string)Session["role"]))
                    {
                        // Your existing code for handling an empty or null role

                        LinkButton1.Visible = true;//user login link button
                        LinkButton2.Visible = true;//sign up link button
                        LinkButton3.Visible = false;//logout link button
                        LinkButton7.Visible = false;//hello user link button

                        LinkButton9.Visible = true;//user login link button
                        
                        LinkButton14.Visible = false;//user login link button
                        LinkButton15.Visible = false;//user login link button
                        LinkButton10.Visible = false;//user login link button
                        LinkButton12.Visible = false;//user login link button
                        LinkButton13.Visible = false;//user login link button
                    }
                    else if (Session["role"].ToString() == "user")
                    {
                        // Your existing code for handling user role

                        LinkButton1.Visible = false;//user login link button
                        LinkButton2.Visible = false;//sign up link button
                        LinkButton3.Visible = true;//logout link button
                        LinkButton7.Visible = true;//hello user link button
                        LinkButton7.Text = "Hello " + Session["username"].ToString();


                        LinkButton9.Visible = false;//user login link button
                      
                        LinkButton14.Visible = false;//user login link button
                        LinkButton15.Visible = false;//user login link button
                        LinkButton10.Visible = false;//user login link button
                        LinkButton12.Visible = false;//user login link button
                        LinkButton13.Visible = false;//user login link button
                    }
                    else if (Session["role"].ToString() == "admin")
                    {
                        // Your existing code for handling admin role

                        LinkButton1.Visible = false;//user login link button
                        LinkButton2.Visible = false;//sign up link button
                        LinkButton3.Visible = true;//logout link button
                        LinkButton7.Visible = true;//hello user link button
                        LinkButton7.Text = "Hello Admin";


                        LinkButton9.Visible = false;//user login link button
                        
                        LinkButton14.Visible = false;//user login link button
                        LinkButton15.Visible = true;//user login link button
                        LinkButton10.Visible = true;//user login link button
                        LinkButton12.Visible = true;//user login link button
                        LinkButton13.Visible = true;//user login link button
                    }
                }
                else
                {
                    // Handle the case where Session is null
                    Response.Write("<script>alert('Session is not available.');</script>");
                }
            }
            catch (Exception ex)
            {
                // Log the exception for debugging purposes
                Console.WriteLine("Exception: " + ex.Message);

                // Display a more specific error message or redirect the user to an error page
                Response.Write("<script>alert('An error occurred: " + ex.Message + "');</script>");
            }

        }

        protected void LinkButton9_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminlogin.aspx");
        }

        protected void LinkButton11_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminlogin.aspx");

        }

        protected void LinkButton12_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminCatInventory.aspx");
        }

        protected void LinkButton13_Click(object sender, EventArgs e)
        {
            Response.Redirect("catOrders.aspx");
        }



        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            Response.Redirect("diseases.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("userlogin.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("usersignup.aspx");
        }

        protected void LinkButton10_Click(object sender, EventArgs e)
        {
            Response.Redirect("foodInventory.aspx");
        }
        protected void CatFoods_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewFoods.aspx");
        }
        protected void catDiet_Click(object sender, EventArgs e)
        {
            Response.Redirect("sugession.aspx");
        }

        protected void LinkButton7_Click(object sender, EventArgs e)
        {

        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewCats.aspx");
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Session["username"] = "";
            Session["fullname"] = "";
            Session["role"] = "";
            Session["status"] = "";

            LinkButton1.Visible = true;//user login link button
            LinkButton2.Visible = true;//sign up link button
            LinkButton3.Visible = false;//logout link button
            LinkButton7.Visible = false;//hello user link button

            LinkButton9.Visible = true;//user login link button
            //LinkButton11.Visible = false;//user login link button
            LinkButton14.Visible = false;//user login link button
            LinkButton15.Visible = false;//user login link button
            LinkButton10.Visible = false;//user login link button
            LinkButton12.Visible = false;//user login link button
            LinkButton13.Visible = false;//user login link button

            Response.Redirect("homepage.aspx");
        }

        protected void LinkButton15_Click(object sender, EventArgs e)
        {
            Response.Redirect("foodOrders.aspx");
        }
    }
}