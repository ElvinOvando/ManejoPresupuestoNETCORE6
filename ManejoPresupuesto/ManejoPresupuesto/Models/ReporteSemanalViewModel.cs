namespace ManejoPresupuesto.Models
{
    public class ReporteSemanalViewModel
    {
        public int Ingresos => TransaccionesPorSemana.Sum(x => x.Ingresos);
        public int  Gastos => TransaccionesPorSemana.Sum(x => x.Gastos);
        public int Total { get; set; }
        public DateTime FechaReferencia { get; set; }
        public IEnumerable<ResultadoObtenerPorSemana> TransaccionesPorSemana { get; set; }
    }
}
