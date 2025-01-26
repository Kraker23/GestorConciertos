using GestorConciertos.Shared.DataInterface;
using GestorConciertos.Shared.DataObject;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GestorConciertos.DM
{
    public partial class GestorConciertosDB : DBManagerJson, IDBImportExport
    {
        public GestorConciertosDB(DBManagerJsonConfig conf) : base(conf) { }
        //public MiniStoreDB(IOptions<DBManagerJsonConfig> conf) : base(conf) { }


        private DBData<Cancion>? canciones = null;
        public DBData<Cancion> Canciones => canciones == null ? this.LoadFromFile(ref this.canciones) : canciones;


        private DBData<Concierto>? conciertos = null;
        public DBData<Concierto> Conciertos => conciertos == null ? this.LoadFromFile(ref this.conciertos) : conciertos;

    }
}
