using GestorConciertos.Shared.DataApi;
using GestorConciertos.Shared.BLInterface;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using System.Web;

namespace GestorConciertos.Services
{
    public class ApiClient : IApiClient
    {
        private readonly HttpClient _httpClient;
        //private const string URL_test = "https://api.lyrics.ovh/v1/artist/title";

        public ApiClient(HttpClient httpClient)
        {
            _httpClient = httpClient;
        }
        public async Task<ResultadoBusqueda> GetBusqueda(string busqueda)
        {
            try
            {
                var json = await _httpClient.GetStringAsync($"suggest/{busqueda}");
                ResultadoBusqueda dato = JsonConvert.DeserializeObject<ResultadoBusqueda>(json);
                return dato;
            }
            catch (Exception ex)
            {
                return null;
            }
        }

        public async Task<Letra> GetLetraCancion(string Cancion, string Cantante)
        {
            //"https://api.lyrics.ovh/v1/artist/title";
            try
            {
                var json = await _httpClient.GetStringAsync($"v1/{Cantante}/{Cancion}");
                Letra dato = JsonConvert.DeserializeObject<Letra>(json);
                return dato;
            }
            catch (Exception ex)
            {
                return new Letra { Lyrics = "No encontrada" };
            }
        }

    }


    /*   public class ApiClientfabrixapi : IApiClient
       {
           private readonly HttpClient _httpClient;
           //private const string URL_test = "https://api.lyrics.ovh/v1/artist/title";

           public ApiClient(HttpClient httpClient)
           {
               _httpClient = httpClient;
           }
           public async Task<ResultApi> GetTest()
           {
               //var json = await _httpClient.GetStringAsync(ConfigurationApi.URL_Base+ "/search-song");
               string url = crearURL();
               var json = await _httpClient.GetStringAsync(url);
               ResultApi dato = JsonConvert.DeserializeObject<ResultApi>(json);
               return dato;
           }

           public async Task<ResultApi> GetByCancion(string Cancion)
           {
               //string peticionCancion = $"{ConfigurationApi.URL}&term={Cancion.Replace(" ", "%20")}&format=json";
               string peticionCancion = $"search-song";

               var json = await _httpClient.GetStringAsync(peticionCancion);
               ResultApi dato = JsonConvert.DeserializeObject<ResultApi>(json);
               return dato;
           }

           public async Task<ResultApi> GetByCantante(string cantante)
           {
               //string peticionCantante = $"{ConfigurationApi.URL}&artist={cantante.Replace(" ", "%20")}&format=json";
               string peticionCantante = $"search-song";


               var json = await _httpClient.GetStringAsync(peticionCantante);
               ResultApi dato = JsonConvert.DeserializeObject<ResultApi>(json);
               return dato;
           }

           public string crearURL()
           {
               var builder = new UriBuilder(ConfigurationApi.URL_Base + "search-song");
               builder.Port = -1;
               var query = HttpUtility.ParseQueryString(builder.Query);
               query["song_title"] = "Estopa";
               builder.Query = query.ToString();
               string url = builder.ToString();
               return url;
           }
       }*/
}
