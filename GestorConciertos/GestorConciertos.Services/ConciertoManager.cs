using GestorConciertos.Shared.BLInterface;
using GestorConciertos.Shared.DataInterface;
using GestorConciertos.Shared.DataObject;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GestorConciertos.Services
{
    public class ConciertoManager: IConciertoManager
    {
        private IConciertoData conciertoData;
        private ICancionFavoritaManager cancionManager;
        public ConciertoManager(IConciertoData conciertoData, ICancionFavoritaManager cancionManager)
        {
            this.conciertoData = conciertoData;
            this.cancionManager = cancionManager;         
        }
        

        
        public Concierto AddCancionConcierto(Guid IdConcierto, Cancion cancion)
        {
            throw new NotImplementedException();
            //this.Conciertos.Where(conciertos => conciertos.Id == IdConcierto).FirstOrDefault().Canciones.Add(cancion);
            //this.SaveToFile(this.Conciertos);
            //return this.Conciertos.Where(conciertos => conciertos.Id == IdConcierto).FirstOrDefault();
        }

        public Concierto AddConcierto(Concierto concierto)
        {
            throw new NotImplementedException();
        }

        public Concierto? GetConcierto(Guid IdConcierto)
        {
            return conciertoData.GetConcierto(IdConcierto);
        }

        public List<Concierto> GetConciertos()
        {
            throw new NotImplementedException();
        }

        public bool HasConciertos()
        {
            return this.conciertoData.GetConciertos().Any();
        }

        public void RemoveConcierto(Guid IdConcierto)
        {
            throw new NotImplementedException();
        }

        public Concierto UpdateConcierto(Concierto concierto)
        {
            throw new NotImplementedException();
        }
    }
}
