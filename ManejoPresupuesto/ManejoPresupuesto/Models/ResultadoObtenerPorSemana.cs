namespace ManejoPresupuesto.Models
{
    public class ResultadoObtenerPorSemana
    {
        public int Semana { get; set; }
        public int Monto { get; set; }
        public TipoOperacion TipoOperacionId { get; set; }
        public int Ingresos { get; set; }
        public int Gastos { get; set; }

        public DateTime FechaInicio { get; set; }
        public DateTime FechaFin { get; set; }

    }
}
