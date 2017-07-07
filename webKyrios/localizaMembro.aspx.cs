using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Threading.Tasks;
using System.Web.UI;
using webKyrios.Infra;
using webKyrios.Interface;
using webKyrios.Models;


namespace webKyrios
{
    public partial class localizaMembro : System.Web.UI.Page
    {
        IMembro locMembro = new MembroRepository();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        static DataTable ConvertToDatatable(List<Membro> list)
        {
            DataTable dt = new DataTable();

            dt.Columns.Add("idMembro");
            dt.Columns.Add("nomeMembro");
            dt.Columns.Add("dataNascMembro");
            dt.Columns.Add("emailMembro");
            dt.Columns.Add("telCelMembro");

            foreach (var item in list)
            {
                dt.Rows.Add(item.idMembro,item.nomeMembro,item.dataNascMembro,item.emailMembro,item.telCelMembro);
            }

            return dt;
        }

        protected void lbLocalizar_Click(object sender, EventArgs e)
        {
            

            Task<List<Membro>> retMembro = locMembro.localizaMembro(txtNomeMembro.Text);

            if(retMembro.Result.Count == 0)
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "error();", true);
            }
            else
            {
                Membro[] array = retMembro.Result.ToArray();
                List<Membro> Membros = new List<Membro>();

                for (int i = 0; i < retMembro.Result.Count; i++)
                {
                    Membros.Add(array[i]);


                }

                DataTable dt = ConvertToDatatable(Membros);

                GridView1.DataSource = dt;
                GridView1.DataBind();

            }
        }

        protected void GridView1_RowDeleting(object sender, System.Web.UI.WebControls.GridViewDeleteEventArgs e)
        {
            int id = Convert.ToInt16(GridView1.DataKeys[e.RowIndex].Values["idMembro"].ToString());
            locMembro.deletaMembro(id);
        }

        protected void GridView1_RowEditing(object sender, System.Web.UI.WebControls.GridViewEditEventArgs e)
        {
            int id = Convert.ToInt16(GridView1.DataKeys[e.NewEditIndex].Values["idMembro"].ToString());

            Response.Redirect("cadmembro.aspx?id=" + id);

        }
    }
}