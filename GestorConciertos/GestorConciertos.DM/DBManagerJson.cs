using System;
using System.Collections.Generic;
using System.IO.Compression;
using System.Linq;
using System.Text;
using System.Text.Json.Serialization.Metadata;
using System.Text.Json;
using System.Threading.Tasks;

namespace GestorConciertos.DM
{
    public class DBManagerJsonConfig
    {
        public string DataPath { get; set; }
    }

    // All the code in this file is included in all platforms.
    public abstract class DBManagerJson
    {
        DBManagerJsonConfig conf;
        private readonly string NameApplication = "GestorConciertos";

        public DBManagerJson(DBManagerJsonConfig conf)
        {
            this.conf = conf;
            if (this.conf == null) this.conf = new DBManagerJsonConfig();
            if (string.IsNullOrEmpty(this.conf.DataPath))
            {
                this.conf.DataPath = Environment.GetFolderPath(Environment.SpecialFolder.LocalApplicationData);
                this.conf.DataPath = Path.Combine(this.conf.DataPath, NameApplication);
            }
            // init folder
            if (!Directory.Exists(this.conf.DataPath)) Directory.CreateDirectory(this.conf.DataPath);
        }
        //public DBManagerJson(IOptions<DBManagerJsonConfig> conf) { this.conf = conf.Value; }

        public void SaveData()
        {
            this.GetType().GetProperties().ToList().ForEach(p =>
            {
                if (p.PropertyType.IsGenericType && p.PropertyType.GetGenericTypeDefinition() == typeof(DBData<>))
                {
                    var data = p.GetValue(this);
                    var t = typeof(DBData<>).MakeGenericType(p.PropertyType.GetGenericArguments());
                    var m = this.GetType().GetMethod("SaveToFile").MakeGenericMethod(t);
                    m.Invoke(this, new object[] { data });
                }
            });
        }

        public DBData<T> LoadFromFile<T>(ref DBData<T>? dest) where T : class
        {
            var f = Path.Combine(conf.DataPath, typeof(T).Name + ".json");

            if (File.Exists(f))
            {
                //var options = new JsonSerializerOptions
                //{
                //    TypeInfoResolver = new DefaultJsonTypeInfoResolver
                //    {
                //        Modifiers =
                //       {
                //             static typeInfo =>
                //             {
                //                   if (typeInfo.Type == typeof(IProductoSimplificado))
                //                   {
                //                         typeInfo.CreateObject = () => new Producto();
                //                   }
                //                   else if (typeInfo.Type == typeof(IProducto))
                //                   {
                //                         typeInfo.CreateObject = () => new Producto();
                //                   }
                //             }
                //       }
                //    }
                //};
                //dest = JsonSerializer.Deserialize<DBData<T>>(File.ReadAllText(f), options) ?? new DBData<T>();
                dest = JsonSerializer.Deserialize<DBData<T>>(File.ReadAllText(f)) ?? new DBData<T>();
            }
            else
            {
                dest = new DBData<T>();
            }

            return dest;
        }

        public void SaveToFile<T>(DBData<T> data) where T : class
        {
            var f = Path.Combine(conf.DataPath, typeof(T).Name + ".json");
            var opt = new JsonSerializerOptions();
            opt.WriteIndented = false;
            var s = JsonSerializer.Serialize<IList<T>>(data, opt);

            File.WriteAllText(f, s);
        }

        public void ExportData(string destinationDir)
        {
            var f = Path.Combine(destinationDir, $"{NameApplication}.zip");
            ZipFile.CreateFromDirectory(conf.DataPath, f);
        }

        public void ImportData(string origin)
        {
            ZipFile.ExtractToDirectory(origin, conf.DataPath);
        }
    }
}
