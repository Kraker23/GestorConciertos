using GestorConciertos.Shared.DataObject;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GestorConciertos.Shared.BLInterface
{
    public interface IConciertoManager
    {
        Concierto AddConcierto(Concierto concierto);
        Concierto AddCancionConcierto(Guid IdConcierto, Cancion cancion);
        Concierto UpdateConcierto(Concierto concierto);
        List<Concierto> GetConciertos();
        Concierto GetConcierto(Guid IdConcierto);
        bool HasConciertos();
        void RemoveConcierto(Guid IdConcierto);
    }
}
