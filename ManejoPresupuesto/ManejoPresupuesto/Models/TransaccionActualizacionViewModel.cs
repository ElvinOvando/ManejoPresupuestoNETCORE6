namespace ManejoPresupuesto.Models
{
    public class TransaccionActualizacionViewModel: TransaccionCreacionViewModel
    {
        public int CuentaAnteriorId { get; set; }
        public int MontoAnterior { get; set; }
        public string UrlRetorno { get; set; }
    }
}
