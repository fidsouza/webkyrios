using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using System.Web.UI;
using webKyrios.Infra;
using webKyrios.Interface;
using webKyrios.Models;

namespace webKyrios
{
    public partial class localizaMembro : System.Web.UI.Page
    {
        

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void lbLocalizar_Click(object sender, EventArgs e)
        {
            IMembro locMembro = new MembroRepository();

            Task<List<Membro>> retMembro = locMembro.localizaMembro(txtNomeMembro.Text);
            Membro[] array =  retMembro.Result.ToArray();

            
            List<Membro> Membros = new List<Membro>();

            Membros.Add(array[0]);
          

            Repeater1.DataSource = Membros;
            Repeater1.DataBind();
           
            
            
        }
    }
}