namespace GestorConciertos.Shared.DataObject
{
    public class ConciertoCancion
    {
        public Guid Id { get; set; } = Guid.NewGuid();
        public Guid IdConcierto { get; set; }
        public Guid IdCancion { get; set; }
        public int orden { get; set; }
    }


    }

