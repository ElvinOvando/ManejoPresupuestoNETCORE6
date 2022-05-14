namespace ManejoPresupuesto.Models
{
    public class ResultadoObtenerPorMes
    {
        public int Mes { get; set; }
        public DateTime FechaReferencia { get; set; }
        public int Monto { get; set; }
        public int Ingreso { get; set; }
        public int Gasto { get; set; }
        public TipoOperacion TipoOperacionId { get; set; }
    }
}
