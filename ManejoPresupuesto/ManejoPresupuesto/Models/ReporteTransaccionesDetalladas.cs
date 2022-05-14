namespace ManejoPresupuesto.Models
{
    public class ReporteTransaccionesDetalladas
    {
        public DateTime FechaInicio { get; set; }
        public DateTime FechaFin { get; set; }
        public IEnumerable<TransaccionesPorFecha> TransaccionesAgrupadas { get; set; }
        public int BalanceDepositos => TransaccionesAgrupadas.Sum(x=> x.BalanceDepositos);
        public int BalanceRetiros => TransaccionesAgrupadas.Sum(x => x.BalanceRetiros);
        public int Total => BalanceDepositos - BalanceRetiros;
        public class TransaccionesPorFecha
        { 
            public DateTime FechaTransaccion { get; set; }
            public IEnumerable<Transaccion> Transacciones { get; set; }
            public int BalanceDepositos => 
                Transacciones.Where(x => x.TipoOperacionId == TipoOperacion.Ingreso)
                .Sum(x => x.Monto);
            public int BalanceRetiros =>
                  Transacciones.Where(x => x.TipoOperacionId == TipoOperacion.Gasto)
                .Sum(x => x.Monto);
        }
    }
}
