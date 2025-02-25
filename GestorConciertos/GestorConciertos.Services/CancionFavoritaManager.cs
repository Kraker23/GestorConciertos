using GestorConciertos.Shared.BLInterface;
using GestorConciertos.Shared.DataApi;
using GestorConciertos.Shared.DataInterface;
using GestorConciertos.Shared.DataObject;

namespace GestorConciertos.Services
{
    public class CancionFavoritaManager : ICancionFavoritaManager
    {
        private Concierto concierto;
        private ICancionFavoritaData cancionData;
        public CancionFavoritaManager(ICancionFavoritaData cancionData)
        {
            this.cancionData = cancionData;
        }

        public Cancion AddCancionFavorita(CancionCantante cancionCantante,string letra)
        {
            Cancion cancion = new Cancion
            {
                Id = Guid.NewGuid(),
                IdCancionApi = cancionCantante.id,
                Nombre = cancionCantante.title,
                IdCantanteApi = cancionCantante.artist.id,
                Cantante = cancionCantante.artist.name,
                PictureCantante = cancionCantante.artist.picture,
                IdAlbumApi = cancionCantante.album.id,
                Album = cancionCantante.album.title,
                Letra = letra,
                preview = cancionCantante.preview

            };
            return  cancionData.AddCancionFavorita(cancion);
        }

        public Cancion? GetCancionFavorita(Guid IdCancion)
        {
            return cancionData.GetCancionFavorita(IdCancion);            
        }

        public List<Cancion> GetCancionesFavoritas()
        {
            return cancionData.GetCancionesFavoritas();
        }

        public bool HasCancionesFavoritas()
        {
            return cancionData.GetCancionesFavoritas().Any();
        }

        public void RemoveCancionFavorita(Guid IdCancion)
        {
            cancionData.RemoveCancionFavorita(IdCancion);
        }

        public Cancion UpdateCancionFavorita(Cancion cancion)
        {
            return cancionData.UpdateCancionFavorita(cancion);
        }
    }
}
