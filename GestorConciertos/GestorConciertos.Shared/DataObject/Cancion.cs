namespace GestorConciertos.Shared.DataObject
{
    //datos de la Cancion
    public class Cancion
    {
        public Guid Id { get; set; } = Guid.NewGuid();
        public long IdCancion { get; set; }
        public string Nombre { get; set; }
        public long IdCantante { get; set; }
        public string PictureCantante { get; set; }
        public string Cantante { get; set; }
        public long IdAlbum { get; set; }
        public string Album { get; set; }
        public string Letra { get; set; }
        public string preview { get; set; }

    }

    public class ConciertoCancion
    {
        public Guid Id { get; set; } = Guid.NewGuid();
        public long IdConcierto { get; set; }
        public long IdCancion { get; set; }
        public int orden { get; set; }
    }


    }

