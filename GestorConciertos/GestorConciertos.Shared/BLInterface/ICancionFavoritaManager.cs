using GestorConciertos.Shared.DataApi;
using GestorConciertos.Shared.DataObject;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GestorConciertos.Shared.BLInterface
{
    public interface ICancionFavoritaManager
    {
        Cancion AddCancionFavorita(CancionCantante cancionCantante, string letra);
        void RemoveCancionFavorita(Guid IdCancion);
        List<Cancion> GetCancionesFavoritas();
        bool HasCancionesFavoritas();
        Cancion UpdateCancionFavorita(Cancion cancion);
        Cancion? GetCancionFavorita(Guid IdCancion);
    }
}
