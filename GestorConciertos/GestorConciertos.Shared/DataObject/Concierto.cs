using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GestorConciertos.Shared.DataObject
{
    //Gestor de Concierto, con el dia y las canciones a tocarse
    public class Concierto
    {
        public Guid Id { get; set; }
        public string Nombre { get; set; }
        public string Lugar { get; set; }
        public bool  esEnsayo { get; set; }
        public DateTime Fecha { get; set; }
        public Concierto()
        {
            this.Id = Guid.NewGuid();
            this.Fecha = DateTime.Now;
        }
    }


}

