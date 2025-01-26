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
    public partial class GestorConciertosDB : IConciertoCancionData
    {
        public ConciertoCancion AddConciertoCancion(ConciertoCancion conciertoCancion)
        {
            this.ConciertoCancion.Add(conciertoCancion);
            this.SaveToFile(this.ConciertoCancion);
            return conciertoCancion;
        }

        public List<ConciertoCancion> GetAllCancionesByIdConcierto(Guid IdConcierto)
        {
            return ConciertoCancion.FindAll(x => x.IdConcierto == IdConcierto);
        }

        public ConciertoCancion GetConciertoCancion(Guid IdConciertoCancion)
        {
            return ConciertoCancion.Find(x => x.Id == IdConciertoCancion);
        }

        public void RemoveConciertoCancion(Guid IdConciertoCancion)
        {
            ConciertoCancion.RemoveAll(x => x.Id == IdConciertoCancion);
            this.SaveToFile(this.ConciertoCancion);
        }

        public ConciertoCancion UpdateConciertoCancion(ConciertoCancion conciertoCancion)
        {
            var x = ConciertoCancion.Find(t => t.Id == conciertoCancion.Id);
            conciertoCancion = ConciertoCancion.Update(x, conciertoCancion);
            this.SaveToFile(this.ConciertoCancion);
            return conciertoCancion;
        }
    }
}
