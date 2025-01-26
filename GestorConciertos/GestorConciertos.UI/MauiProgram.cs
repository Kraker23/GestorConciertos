using GestorConciertos.Services;
using GestorConciertos.Shared.DataApi;
using GestorConciertos.Shared.DataInterface;
using Microsoft.Extensions.Logging;
using Radzen;
using System.Net;
using System.Net.Http.Headers;
using GestorConciertos.DM;
using GestorConciertos.Shared.BLInterface;

namespace GestorConciertos
{
    public static class MauiProgram
    {
        public static MauiApp CreateMauiApp()
        {
            var builder = MauiApp.CreateBuilder();
            builder
                .UseMauiApp<App>()
                .ConfigureFonts(fonts =>
                {
                    fonts.AddFont("OpenSans-Regular.ttf", "OpenSansRegular");
                });

            builder.Services.AddMauiBlazorWebView();
            builder.Services.AddRadzenComponents();

            //https://lyrics.ovh
            builder.Services.AddScoped(sp => new HttpClient { BaseAddress = new Uri(ConfigurationApi.URL_Base) });


            try
            {
                builder.Services.AddSingleton<IApiClient, ApiClient>();
                builder.Services.AddSingleton<DBManagerJsonConfig>(new DBManagerJsonConfig());
                builder.Services.AddSingleton<ICancionFavoritaData, GestorConciertosDB>();
                builder.Services.AddSingleton<IConciertoData, GestorConciertosDB>();
                builder.Services.AddSingleton<IConciertoCancionData, GestorConciertosDB>();
                builder.Services.AddScoped<IDBImportExport, GestorConciertosDB>();


                builder.Services.AddScoped<ICancionFavoritaManager, CancionFavoritaManager>();
                builder.Services.AddScoped<IConciertoManager, ConciertoManager>();



#if DEBUG
                builder.Services.AddBlazorWebViewDeveloperTools();
                builder.Logging.AddDebug();
#endif

                return builder.Build();
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
                return builder.Build();

            }
        }
    }
}
