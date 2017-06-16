using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using webKyrios.Infra;
using webKyrios.Interface;
using webKyrios.Models;

namespace webKyrios
{
   

    public partial class cadmembro : System.Web.UI.Page
    {
        

        protected void Page_Load(object sender, EventArgs e)
        {
                
        }

        protected void btnCadastrar_Click(object sender, EventArgs e)
        {
            


            Membro membro;

            membro = new Membro();
            IMembro cadMembro = new MembroRepository();

            membro.nomeMembro  = txtnome.Text;
            membro.enderMembro = txtEnder.Text;
            if(txtdataNasc.Text == "")
            {
                membro.dataNascMembro = null;
            }
            else
            {
                membro.dataNascMembro = DateTime.Parse(txtdataNasc.Text);
            }
            
            membro.telResMembro = txtTelRes.Text.Replace("(", "").Replace(")", "").Replace("-", "").Replace("0","");
            membro.emailMembro = txtEmail.Text;
            if (chkBatizado.Checked)
            {
                membro.batizadoMembro = true;
            }
            else
            {
                membro.batizadoMembro = false;
            }
            membro.telCelMembro = txtCel.Text.Replace("(","").Replace(")","").Replace("-","").Replace("0","");
            membro.bairroMembro = txtbairro.Text;
            membro.cepMembro = txtCep.Text.Replace("-", "").Replace("0","");
            membro.ufMembro = txtuf.Text;
            
            if(Sexo.SelectedValue == "Feminino")
             {
                membro.sexoMembro = "Feminino";
             }
             else
             {
                membro.sexoMembro = "Masculino";
             }

            membro.cidadeMembro = txtcidade.Text;



            cadMembro.InserirMembro(membro);


         



        }

        

    }
}