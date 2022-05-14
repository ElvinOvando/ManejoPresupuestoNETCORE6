namespace ManejoPresupuesto.Models
{
    public class ReporteMensualViewModel
    {
        public IEnumerable<ResultadoObtenerPorMes> TransaccionesPorMes { get; set; }
        public int Ingresos => TransaccionesPorMes.Sum(x => x.Ingreso);
        public int Gastos => TransaccionesPorMes.Sum(x => x.Gasto);
        public int Total => Ingresos - Gastos;
        public int Año { get; set; }
    }
}
