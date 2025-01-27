using GestorConciertos.Shared.DataObject;

namespace GestorConciertos.Shared.DataInterface
{
    public interface IConciertoData
    {
        Concierto AddConcierto(Concierto concierto);
        void RemoveConcierto(Guid IdConcierto);
        Concierto UpdateConcierto(Concierto concierto);
        Concierto SaveConcierto(Concierto concierto);
        List<Concierto> GetConciertos();
        Concierto GetConcierto(Guid IdConcierto);
    }
}
