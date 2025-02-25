using GestorConciertos.Shared.DataInterface;
using GestorConciertos.Shared.DataObject;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GestorConciertos.DM
{
    public partial class GestorConciertosDB : IConciertoData
    {

        public Concierto AddConcierto(Concierto concierto)
        {
            this.Conciertos.Add(concierto);
            this.SaveToFile(this.Conciertos);
            return concierto;
        }

        public List<Concierto> GetConciertos()
        {
            return Conciertos;
        }
        public Concierto UpdateConcierto(Concierto concierto)
        {
            var x = Conciertos.Find(t => t.Id == concierto.Id);
            concierto = Conciertos.Update(x, concierto);
            this.SaveToFile(this.Conciertos);
            return concierto;
        }

        public Concierto SaveConcierto(Concierto concierto)
        {
            var x = Conciertos.Find(t => t.Id == concierto.Id);
            if (x == null) { concierto = AddConcierto(concierto); }
            else { concierto = UpdateConcierto(concierto); }
            this.SaveToFile(this.Conciertos);
            return concierto;
        }
        public Concierto? GetConcierto(Guid IdConcierto)
        {
            return Conciertos.Find(x => x.Id == IdConcierto);
        }

        public void RemoveConcierto(Guid IdConcierto)
        {
            Conciertos.RemoveAll(x => x.Id == IdConcierto);
            this.SaveToFile(this.Conciertos);
        }
    }
}
