using GestorConciertos.Shared.DataInterface;
using GestorConciertos.Shared.DataObject;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GestorConciertos.DM
{
    public partial class GestorConciertosDB : ICancionFavoritaData
    {
        public Cancion UpdateCancionFavorita(Cancion cancion)
        {
            var x = Canciones.Find(t => t.Id == cancion.Id);
            cancion = Canciones.Update(x, cancion);
            this.SaveToFile(this.Canciones);
            return cancion;
        }
        public Cancion AddCancionFavorita(Cancion cancion)
        {
            this.Canciones.Add(cancion);
            this.SaveToFile(this.Canciones);
            return cancion;
        }

        public Cancion? GetCancionFavorita(Guid IdCancion)
        {
            return Canciones.Find(x => x.Id == IdCancion);
        }
        public void RemoveCancionFavorita(Guid IdCancion)
        {
            Canciones.RemoveAll(x => x.Id == IdCancion);
            this.SaveToFile(this.Canciones);
        }



        public List<Cancion> GetCancionesFavoritasRestantes(List<Guid> idCanciones)
        {
            return Canciones.Where(x => !idCanciones.Contains(x.Id)).ToList();
        }
        public List<Cancion> GetCancionesFavoritas()
        {
            return Canciones;
        }

    }
}
