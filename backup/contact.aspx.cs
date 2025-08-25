using System;
using System.Collections.Generic;
using System.Net.Mail;
using System.Net;
using System.Web;
using System.Web.UI;
//using System.Web.UI.MobileControls;
using System.Web.UI.WebControls;

public partial class contact : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Random rand = new Random();
            lblNum1.Text = rand.Next(1, 10).ToString();
            lblNum2.Text = rand.Next(1, 10).ToString();
        }
    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        if (CheckCaptcha())
        {
            MailToCustomer();
            MailToAdmin();
            Response.Redirect("contact.aspx?status=sent");
        }
        else
        {
            Response.Redirect("contact.aspx?status=notsent");
        }
    }

    private bool CheckCaptcha()
    {
        int num1, num2, userAnswer;

        bool isValidNum1 = int.TryParse(lblNum1.Text, out num1);
        bool isValidNum2 = int.TryParse(lblNum2.Text, out num2);
        bool isValidUserAnswer = int.TryParse(txtCaptcha.Text.Trim(), out userAnswer);

        if (isValidNum1 && isValidNum2 && isValidUserAnswer)
        {
            return (num1 + num2 == userAnswer);
        }

        return false;
    }

    private void MailToCustomer()
    {

        string filename = Server.MapPath("MailFormate/MailToclient.html");
        string mailbody = System.IO.File.ReadAllText(filename);

        mailbody = mailbody.Replace("##Name##", txtname.Text.Trim());
        mailbody = mailbody.Replace("##Date##", DateTime.Now.ToString("dd/MM/yyyy"));

        MailMessage mailmsg = new MailMessage();
        MailAddress mailaddress = new MailAddress("sales@cropsto.in", "Cropsto");
        mailmsg.From = mailaddress;
        mailmsg.To.Add(txtemail.Text.Trim());
        mailmsg.IsBodyHtml = true;
        mailmsg.Priority = MailPriority.High;
        mailmsg.Subject = "Cropsto";
        mailmsg.Body = mailbody;
        SmtpClient smtp = new SmtpClient("smtp.gmail.com", 587);
        smtp.Credentials = new NetworkCredential("het.empbweb@gmail.com", "zguc hmuq wwwi jwpf");
        smtp.EnableSsl = true;
        //smtp.UseDefaultCredentials = true;
        smtp.Send(mailmsg);


    }
    private void MailToAdmin()
    {

        MailMessage mailmsg = new MailMessage();
        string filename = Server.MapPath("MailFormate/MailToAdmin.html");
        string mailbody = System.IO.File.ReadAllText(filename);
        mailbody = mailbody.Replace("##Name##", txtname.Text.Trim());
        mailbody = mailbody.Replace("##Email##", txtemail.Text.Trim());
        mailbody = mailbody.Replace("##Subject##", txtsubject.Text.Trim());
        mailbody = mailbody.Replace("##Message##", txtmessage.Text.Trim());
        mailbody = mailbody.Replace("##Phone##", txtphone.Text.Trim());
        mailbody = mailbody.Replace("##Date##", DateTime.Now.ToString("dd/MM/yyyy"));

        MailAddress mailaddress = new MailAddress("sales@cropsto.in", "Cropsto");
        mailmsg.From = mailaddress;
        mailmsg.To.Add("sales@cropsto.in");
        mailmsg.IsBodyHtml = true;
        mailmsg.Priority = MailPriority.High;
        mailmsg.Subject = "Cropsto";
        mailmsg.Body = mailbody;
        SmtpClient smtp = new SmtpClient("smtp.gmail.com", 587);
        smtp.Credentials = new NetworkCredential("het.empbweb@gmail.com", "zguc hmuq wwwi jwpf");
        smtp.EnableSsl = true;
        //smtp.UseDefaultCredentials = true;
        smtp.Send(mailmsg);





    }
}