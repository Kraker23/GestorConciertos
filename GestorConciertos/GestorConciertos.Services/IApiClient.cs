using GestorConciertos.Shared;
using Newtonsoft.Json;

namespace GestorConciertos.Services
{
    //https://lyricsovh.docs.apiary.io/#reference/0/lyrics-of-a-song/search
    //https://lyrics.ovh
    //https://github.com/NTag/lyrics.ovh/tree/main/frontend
    public interface IApiClient
    {
        Task<ResultadoBusqueda> GetBusqueda(string busqueda);
        Task<Letra> GetLetraCancion(string Cancion, string Cantante);
    }
}

