using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using webKyrios.Models;

namespace webKyrios.Interface
{
   public  interface IMembro
    {
        void InserirMembro(Membro membro);

         Task<List<Membro>> localizaMembro(string nome);

         void deletaMembro(int id);
    }



}
