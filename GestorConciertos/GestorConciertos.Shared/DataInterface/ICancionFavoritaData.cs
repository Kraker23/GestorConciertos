using GestorConciertos.Shared.DataObject;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GestorConciertos.Shared.DataInterface
{
    public interface ICancionFavoritaData
    {
        Cancion AddCancionFavorita(Cancion cancion);
        void RemoveCancionFavorita(Guid IdCancion);
        Cancion UpdateCancionFavorita(Cancion cancion);
        List<Cancion> GetCancionesFavoritas();
        Cancion? GetCancionFavorita(Guid IdCancion);

    }
}
