using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace CatShop2
{
    public partial class foodInventory : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }

        // GO button click
        protected void goFood(object sender, EventArgs e)
        {
            getFoodByID();
        }
        // add button click
        protected void addFood(object sender, EventArgs e)
        {
            if (checkIfFoodExists())
            {
                Response.Write("<script>alert('Food with this ID already Exist. You cannot add another Food with the same Author ID');</script>");
            }
            else
            {
                addNewFood();
            }
        }

        protected void updateFood(object sender, EventArgs e)
        {

            if (checkIfFoodExists())
            {
                updateFoodTable();

            }
            else
            {
                Response.Write("<script>alert('Author does not exist');</script>");
            }

        }
        protected void deleteFood(object sender, EventArgs e)
        {

            if (checkIfFoodExists())
            {
                deleteFoodTable();

            }
            else
            {
                Response.Write("<script>alert('Author does not exist');</script>");
            }

        }


        void addNewFood()
        {
            try
            {

                string filepath = "~/Cat_inventory/rent-car2.png";
                string filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
                FileUpload1.SaveAs(Server.MapPath("Cat_inventory/" + filename));
                filepath = "~/Cat_inventory/" + filename;

                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("INSERT INTO food_Inventory(food_id,food_name,food_weight,food_price,food_description,food_img) values(@food_id,@food_name,@food_weight,@food_price,@food_description,@food_img)", con);

                cmd.Parameters.AddWithValue("@food_id", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@food_name", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@food_weight", TextBox11.Text.Trim());
                cmd.Parameters.AddWithValue("@food_price", TextBox10.Text.Trim());
                cmd.Parameters.AddWithValue("@food_description", TextBox6.Text.Trim());
                cmd.Parameters.AddWithValue("@food_img", filepath);


                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Food added Successfully');</script>");
                clearForm();
                GridView1.DataBind();
                clearForm();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }




        bool checkIfFoodExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from food_Inventory where food_id='" + TextBox1.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count >= 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                return false;
            }
        }

        void updateFoodTable()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("UPDATE food_Inventory SET food_name=@food_name,food_weight=@food_weight,food_price=@food_price,food_description=@food_description  WHERE food_id='" + TextBox1.Text.Trim() + "'", con);

                cmd.Parameters.AddWithValue("@food_id", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@food_name", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@food_weight", TextBox11.Text.Trim());
                cmd.Parameters.AddWithValue("@food_price", TextBox10.Text.Trim());
                cmd.Parameters.AddWithValue("@food_description", TextBox6.Text.Trim());
                //cmd.Parameters.AddWithValue("@food_img", TextBox6.Text.Trim());


                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Food Updated Successfully');</script>");
                clearForm();
                GridView1.DataBind();
                clearForm();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }


        void deleteFoodTable()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("DELETE from food_Inventory WHERE food_id='" + TextBox1.Text.Trim() + "'", con);

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Food Deleted Successfully');</script>");
                clearForm();
                GridView1.DataBind();

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        void getFoodByID()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from food_Inventory where food_id='" + TextBox1.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count >= 1)
                {
                    TextBox2.Text = dt.Rows[0][1].ToString();
                    TextBox11.Text = dt.Rows[0][2].ToString();
                    TextBox10.Text = dt.Rows[0][3].ToString();
                    TextBox6.Text = dt.Rows[0][4].ToString();

                }
                else
                {
                    Response.Write("<script>alert('Invalid Food Id ID');</script>");
                }


            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }
        }




        void clearForm()
        {
            TextBox1.Text = "";//food_id
            TextBox2.Text = "";//food_name
            TextBox6.Text = "";//food_description
            TextBox10.Text = "";//food_price
            TextBox11.Text = "";//food_weight

        }
    }
}