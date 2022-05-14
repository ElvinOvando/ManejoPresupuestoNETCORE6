using System.ComponentModel.DataAnnotations;

namespace ManejoPresupuesto.Validaciones
{
    public class PrimeraLetraMayusculaAttribute : ValidationAttribute
    {
        protected override ValidationResult IsValid(object value, ValidationContext validationContext)
        {
            if (value == null || string.IsNullOrEmpty(value.ToString()))
            {
                return ValidationResult.Success;
            }
            var primraLetra = value.ToString()[0].ToString();
            
            if (primraLetra != primraLetra.ToUpper())
            {
                return new ValidationResult("La primera letra debe ser mayúscula");
            }

            return ValidationResult.Success;
        }
    }
}
