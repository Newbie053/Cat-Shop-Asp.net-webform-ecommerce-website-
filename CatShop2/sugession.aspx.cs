using System;
using System.Web.UI;

namespace CatShop2
{
    public partial class sugession : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Optional: Add any initialization logic here
        }

        protected void btnFetchAndRedirect_Click(object sender, EventArgs e)
        {
            // Fetch the selected value from the dropdown
            string selectedValue = ddlOptions.SelectedValue;

            // Redirect to the appropriate page based on the selected value
            switch (selectedValue)
            {
                case "1":
                    Response.Redirect("bengal.aspx");
                    break;
                case "2":
                    Response.Redirect("siamese.aspx");
                    break;
                case "3":
                    Response.Redirect("ragdoll.aspx");
                    break;
                case "4":
                    Response.Redirect("maineCoon.aspx");
                    break;
                case "5":
                    Response.Redirect("domesticShorthair.aspx");
                    break;
                default:
                    // Handle other cases or provide a default redirect
                    Response.Redirect("sugession.aspx");
                    break;
            }
        }
    }
}