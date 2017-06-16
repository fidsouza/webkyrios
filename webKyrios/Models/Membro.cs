using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace webKyrios.Models
{
    public class Membro
    {
        public string nomeMembro { get; set; }
        public string enderMembro { get; set; }
        public Nullable<System.DateTime> dataNascMembro { get; set; }
        public string telResMembro { get; set; }
        public string emailMembro { get; set; }
        public Nullable<bool> batizadoMembro { get; set; }
        public string telCelMembro { get; set; }
        public string bairroMembro { get; set; }
        public string cepMembro { get; set; }
        public string ufMembro { get; set; }
        public string sexoMembro { get; set; }
        public string cidadeMembro { get; set; }
    }
}