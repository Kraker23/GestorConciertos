using GestorConciertos.Shared.DataObject;

namespace GestorConciertos.Shared.DataInterface
{
    public interface IConciertoCancionData
    {
        ConciertoCancion AddConciertoCancion(ConciertoCancion conciertoCancion);
        void RemoveConciertoCancion(Guid IdConciertoCancion);
        ConciertoCancion UpdateConciertoCancion(ConciertoCancion conciertoCancion);
        List<ConciertoCancion> GetAllCancionesByIdConcierto(Guid IdConcierto);
        ConciertoCancion GetConciertoCancion(Guid IdConciertoCancion);
    }
}
