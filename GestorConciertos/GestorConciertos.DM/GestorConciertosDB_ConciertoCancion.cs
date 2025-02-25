using GestorConciertos.Shared.DataInterface;
using GestorConciertos.Shared.DataObject;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GestorConciertos.DM
{  
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

        public ConciertoCancion SaveConciertoCancion(ConciertoCancion conciertoCancion)
        {
            var x = ConciertoCancion.Find(t => t.Id == conciertoCancion.Id);
            if (x == null) { conciertoCancion = AddConciertoCancion(conciertoCancion); }
            else { conciertoCancion = UpdateConciertoCancion(conciertoCancion); }
            this.SaveToFile(this.ConciertoCancion);
            return conciertoCancion;
        }

        public List<ConciertoCancion> SaveConciertoCanciones(List<ConciertoCancion> conciertoCanciones)
        {
            foreach (ConciertoCancion cc in conciertoCanciones)
            {
                var x = ConciertoCancion.Find(t => t.Id == cc.Id);
                if (x == null) { AddConciertoCancion(cc); }
                else { UpdateConciertoCancion(cc); }
            }
            this.SaveToFile(this.ConciertoCancion);
            return conciertoCancion;
        }

        
    }
}
