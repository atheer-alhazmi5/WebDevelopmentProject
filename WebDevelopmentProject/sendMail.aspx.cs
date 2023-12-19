using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Net;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebDevelopmentProject
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SendBtn_Click(object sender, EventArgs e)
        {

            var fromAddress = "atheer.a22a@hotmail.com";// hotmail Address from where you send the mail
            var toAddress = Email.Text.ToString();
            const string fromPassword = "123321aa123";//Password of your hotmail address

            string body = Msg.Text;
            var smtp = new System.Net.Mail.SmtpClient();
            {
                smtp.Host = "smtp.live.com";
                smtp.Port = 587;
                smtp.EnableSsl = true;
                smtp.DeliveryMethod = System.Net.Mail.SmtpDeliveryMethod.Network;
                smtp.Credentials = new NetworkCredential(fromAddress, fromPassword);
                smtp.Timeout = 20000;
            }
            smtp.Send(fromAddress, toAddress, subject.Text, body);
            Label2.Text = "your email was sent successfully";
        }
    }
}

