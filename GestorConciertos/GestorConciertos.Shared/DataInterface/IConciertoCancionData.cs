using GestorConciertos.Shared.DataObject;

namespace GestorConciertos.Shared.DataInterface
{
    public interface IConciertoCancionData
    {
        ConciertoCancion AddConciertoCancion(ConciertoCancion conciertoCancion);
        void RemoveConciertoCancion(Guid IdConciertoCancion);
        ConciertoCancion UpdateConciertoCancion(ConciertoCancion conciertoCancion);
        ConciertoCancion SaveConciertoCancion(ConciertoCancion conciertoCancion);
        List<ConciertoCancion> SaveConciertoCanciones(List<ConciertoCancion> conciertoCanciones);
        List<ConciertoCancion> GetAllCancionesByIdConcierto(Guid IdConcierto);
        ConciertoCancion GetConciertoCancion(Guid IdConciertoCancion);
    }
}
