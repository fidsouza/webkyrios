using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;
using System.Web;
using System.Web.UI;
using webKyrios.Interface;
using webKyrios.Models;

namespace webKyrios.Infra
{
    public class MembroRepository : IMembro
    {
        HttpClient client;


        public MembroRepository()
        {
            if (client == null)
            {
                client = new HttpClient();
                client.BaseAddress = new Uri("http://erpkyrios-cc.umbler.net/servico_kyrios/");
                client.DefaultRequestHeaders.Accept.Add(new System.Net.Http.Headers.MediaTypeWithQualityHeaderValue("application/json"));
            }
        }

        public void InserirMembro(Membro membro)
        {




            if (membro.nomeMembro == "")
            {
                Page currentPage = HttpContext.Current.Handler as System.Web.UI.Page;
                ScriptManager.RegisterStartupScript(currentPage, GetType(), "Popup", "loginCampos();", true);
            }

            if (membro.dataNascMembro == null)
            {
                Page currentPage = HttpContext.Current.Handler as System.Web.UI.Page;
                ScriptManager.RegisterStartupScript(currentPage, GetType(), "Popup", "loginCampos();", true);
            }







            try
            {
                HttpResponseMessage response = client.PostAsync("api/membros/Postmembros/", new StringContent(JsonConvert.SerializeObject(membro).ToString(),Encoding.UTF8, "application/json")).Result;
                response.EnsureSuccessStatusCode();


                if (response.IsSuccessStatusCode)
                {
                    Page currentPage = HttpContext.Current.Handler as System.Web.UI.Page;
                    ScriptManager.RegisterStartupScript(currentPage, GetType(), "Popup", "cadastroMOk();setInterval(function()window.location='" +
    currentPage.Request.ApplicationPath + "cadmembro.aspx',3000);", true);
                    

                }
                else
                {
                    Page currentPage = HttpContext.Current.Handler as System.Web.UI.Page;
                    ScriptManager.RegisterStartupScript(currentPage, GetType(), "Popup", "error();", true);
    

                }

            }

            catch (Exception ex)
            {
                Page currentPage = HttpContext.Current.Handler as System.Web.UI.Page;

                ScriptManager.RegisterStartupScript(currentPage, GetType(), "Popup", "error();", true);
            }
        }

        public async Task<List<Membro>> localizaMembro(string nome)
        {
           
          
                HttpResponseMessage response = client.GetAsync("api/membros/Getmembros?"+ "nome=" + nome  ).Result;
                response.EnsureSuccessStatusCode();

                 if (response.IsSuccessStatusCode) {

                    return JsonConvert.DeserializeObject<List<Membro>>(await response.Content.ReadAsStringAsync());

            }
                else
                    {
                Page currentPage = HttpContext.Current.Handler as System.Web.UI.Page;
                ScriptManager.RegisterStartupScript(currentPage, GetType(), "Popup", "error();", true);
                return default(List<Membro>);
                    }

        



        }

        public void deletaMembro(int id)
        {
            HttpResponseMessage response = client.DeleteAsync("api/membros/Deletemembros/" + id).Result;
            response.EnsureSuccessStatusCode();

            if (response.IsSuccessStatusCode)
            {
                Page currentPage = HttpContext.Current.Handler as System.Web.UI.Page;
                ScriptManager.RegisterStartupScript(currentPage, GetType(), "Popup", "excluiMembro();setInterval(function()window.location='" +
                currentPage.Request.ApplicationPath + "localizaMembro.aspx',3000);", true);
            }
            else
            {
                Page currentPage = HttpContext.Current.Handler as System.Web.UI.Page;
                ScriptManager.RegisterStartupScript(currentPage, GetType(), "Popup", "error();", true);
            }

        }



    }
}