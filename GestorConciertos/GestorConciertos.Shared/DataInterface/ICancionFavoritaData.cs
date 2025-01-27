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
        List<Cancion> GetCancionesFavoritasRestantes(List<Guid> idCanciones);
        Cancion? GetCancionFavorita(Guid IdCancion);

    }
}
