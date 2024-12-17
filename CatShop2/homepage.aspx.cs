using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CatShop2
{
    public partial class homepage3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void catView_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewCats.aspx");
        }
        protected void foodView_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewFoods.aspx");
        }

        protected void SendEmail(object sender, EventArgs e)
        {
            try
            {
                // Set the Gmail sender email and password
                string senderEmail = "systemsabnaj@gmail.com";
                string senderPassword = "eydmnpmxeinqunef";

                // Set the recipient email address
                string recipientEmail = "systemsabnaj@gmail.com"; // Change this to the actual recipient email

                // Create a MailMessage object
                MailMessage mailMessage = new MailMessage(senderEmail, recipientEmail);

                // Set the email subject and body
                mailMessage.Subject = subject.Text;
                mailMessage.Body = body.Text;

                // Configure the SMTP client
                SmtpClient smtpClient = new SmtpClient("smtp.gmail.com");
                smtpClient.Port = 587;
                smtpClient.UseDefaultCredentials = false;
                smtpClient.Credentials = new NetworkCredential(senderEmail, senderPassword);
                smtpClient.EnableSsl = true;

                // Send the email
                smtpClient.Send(mailMessage);

                // Display a success message
                status.Text = "Message sent successfully!";
                subject.Text = "";
                body.Text = "";
            }
            catch (Exception ex)
            {
                // Display an error message
                status.Text = "Error sending email: " + ex.Message;
            }


        }
    }


}