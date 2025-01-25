using GestorConciertos.Services;
using GestorConciertos.Shared;
using Microsoft.Extensions.Logging;
using Radzen;
using System.Net;
using System.Net.Http.Headers;

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

            /*fabrixapi 
                HttpClient client = new HttpClient();
            client.BaseAddress = new Uri(ConfigurationApi.URL_Base);
            client.DefaultRequestHeaders.Accept.Clear();
            client.DefaultRequestHeaders.Add("X-OpenAPIHub-Key",ConfigurationApi.Token);
            builder.Services.AddScoped(sp => client);
            */


            
            //https://lyrics.ovh
            builder.Services.AddScoped(sp => new HttpClient { BaseAddress = new Uri(ConfigurationApi.URL_Base)});

            builder.Services.AddScoped<IApiClient, ApiClient>();

            builder.Services.AddRadzenComponents();

#if DEBUG
            builder.Services.AddBlazorWebViewDeveloperTools();
            builder.Logging.AddDebug();
#endif

            return builder.Build();
        }
    }
}
