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


    public partial class adminCatInventory : System.Web.UI.Page
    {

        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();

        }
        //go
        protected void Button4_Click(object sender, EventArgs e)
        {
            getCatById();

        }

        void getCatById()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * from cat_master_tbl where cat_id='" + TextBox1.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    TextBox2.Text = dt.Rows[0]["breed_name"].ToString();
                    TextBox9.Text = dt.Rows[0]["age"].ToString();
                    TextBox10.Text = dt.Rows[0]["prize"].ToString();
                    TextBox11.Text = dt.Rows[0]["weight"].ToString();
                    TextBox6.Text = dt.Rows[0]["description"].ToString();

                }
                else
                {
                    Response.Write("<script>alert('Invalid cat ID');</script>");

                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                
            }
        }

        //add
        protected void Button1_Click(object sender, EventArgs e)
        {

            if (checkCatExists())
            {
                Response.Write("<script>alert('User already exist');</script>");
            }
            else
            {
                addNewCat();

            }

        }


        //update
        protected void Button3_Click(object sender, EventArgs e)
        {

            if (checkCatExists())
            {
                updateCat();


            }
            else
            {
                Response.Write("<script>alert('Cat does not exist');</script>");
                

            }

        }


        //delete
        protected void Button2_Click(object sender, EventArgs e)
        {
            if (checkCatExists())
            {
                deleteCat();


            }
            else
            {
                Response.Write("<script>alert('Cat does not exist');</script>");


            }

        }

        void addNewCat()
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


                SqlCommand cmd = new SqlCommand("INSERT INTO cat_master_tbl (cat_id,breed_name,age,prize,weight,description,cat_img_link) VALUES (@cat_id,@breed_name,@age,@prize,@weight,@description,@cat_img_link)", con);

                cmd.Parameters.AddWithValue("@cat_id", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@breed_name", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@age", TextBox9.Text.Trim());
                cmd.Parameters.AddWithValue("@prize", TextBox10.Text.Trim());

                cmd.Parameters.AddWithValue("@weight", TextBox11.Text.Trim());
                cmd.Parameters.AddWithValue("@description", TextBox6.Text.Trim());
                cmd.Parameters.AddWithValue("@cat_img_link", filepath);


                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('cat added successfully');</script>");
                clearForm();
                GridView1.DataBind();

            }
            
            catch (Exception ex)
            {
                Response.Write("<script>alert('Error: " + ex.ToString() + "');</script>");

            }
        }

        void updateCat()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if(con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("UPDATE cat_master_tbl SET breed_name=@breed_name,@age=age,@prize=prize,@weight=weight,@description=description WHERE cat_id='" + TextBox1.Text.Trim() + "'", con);
              
                cmd.Parameters.AddWithValue("@breed_name", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@age", TextBox9.Text.Trim());
                cmd.Parameters.AddWithValue("@prize", TextBox10.Text.Trim());

                cmd.Parameters.AddWithValue("@weight", TextBox11.Text.Trim());
                cmd.Parameters.AddWithValue("@description", TextBox6.Text.Trim());
                cmd.ExecuteNonQuery();
                
                con.Close();
                Response.Write("<script>alert('at updated successfully');</script>");
                clearForm();
                GridView1.DataBind();



            }
            catch(Exception ex)
            {

            }
        }
        bool checkCatExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * from cat_master_tbl where cat_id='" + TextBox1.Text.Trim() + "';", con);
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

        void deleteCat()
        {

            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("DELETE from cat_master_tbl WHERE cat_id = '" + TextBox1.Text.Trim() + "'", con);
                cmd.ExecuteNonQuery();


                con.Close();
                Response.Write("<script>alert('Cat deleted successfully');</script>");
                clearForm();
                GridView1.DataBind();



            }
            catch (Exception ex)
            {

            }

        }
        void clearForm()
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox9.Text = "";
            TextBox10.Text = "";
            TextBox11.Text = "";
            TextBox6.Text = "";


        }
        void fillCatValues()
        {

        }

    }
}