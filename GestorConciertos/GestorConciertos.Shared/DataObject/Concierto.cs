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
        public DateTime Fecha { get; set; }

        public List<Cancion> Cancions { get; set; }
    }
    //datos de la Cancion
    public class Cancion
    {
        public Guid Id { get; set; }
        public string Nombre { get; set; }
        public string Artista { get; set; }
        public string Album { get; set; }
        public string Letra { get; set; }
    }

    //Lista de Canciones favoritas, para busquedas rapidas
    public class Favoritas
    {
        public List<Cancion> Cancions { get; set; }
    }

}

