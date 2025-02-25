namespace GestorConciertos.Shared.DataObject
{
    //datos de la Cancion
    public class Cancion
    {
        public Guid Id { get; set; } = Guid.NewGuid();
        public long IdCancionApi { get; set; }
        public string Nombre { get; set; }
        public long IdCantanteApi { get; set; }
        public string PictureCantante { get; set; }
        public string Cantante { get; set; }
        public long IdAlbumApi { get; set; }
        public string Album { get; set; }
        public string Letra { get; set; }
        public string preview { get; set; }

        public string FullName { get { return $"{Nombre} - {Cantante}"; } }

    }
}

