namespace GestorConciertos.Shared.DataInterface
{
    public interface IDBImportExport
    {
        void ExportData(string destinationDir);
        void ImportData(string origin);
    }
}
