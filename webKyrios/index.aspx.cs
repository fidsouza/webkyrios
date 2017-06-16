using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace webKyrios
{


    public partial class loginPage : System.Web.UI.Page
    {
        HttpClient client;
        Uri usuarioUri;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (client == null)
            {
                client = new HttpClient();
                client.BaseAddress = new Uri("http://localhost:9090");
                client.DefaultRequestHeaders.Accept.Add(new System.Net.Http.Headers.MediaTypeWithQualityHeaderValue("application/json"));
            }

        }


        protected async void lbEntrar_Click(object sender, EventArgs e)
        {


            try
            {
                HttpResponseMessage response = client.GetAsync("api/login/Getlogin?email=" + txtuser.Text + "&senha=" + txtsenha.Text).Result;
                response.EnsureSuccessStatusCode();
                string responsebody = await response.Content.ReadAsStringAsync();


                if (responsebody == "false")
                {
                    ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "loginInvalid();", true);
                }
                else
                {
                    HttpCookie userid = new HttpCookie("userid");
                    Response.Cookies.Add(userid);
                    Response.Redirect("/mainpage.aspx", false);

                }

            }
            catch (Exception ex)
            {

                ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "loginInvalid();", true);
            }
         
     


               
                 





        }
    }
}