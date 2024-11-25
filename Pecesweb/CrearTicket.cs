using System;
using System.Web.UI;

namespace Pecesweb
{
    public partial class CrearTicket : Page
    {
        protected void Page_Load(object sender, EventArgs e) { }

        protected void btnCrearTicket_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                // Lógica para crear el ticket si el formulario es válido
            }
            else
            {
                // Lógica si el formulario no es válido (opcional)
            }
        }

        // Validación custom para el campo Nombre
        protected void ValidarNombreCustom(object sender, ServerValidateEventArgs e)
        {
            e.IsValid = e.Value.Length >= 5;
        }

        // Validación custom para el campo RUT
        protected void ValidarRutCustom(object sender, ServerValidateEventArgs e)
        {
            string rutPattern = @"^\d{7,8}-[\dkK]$"; // Acepta RUT con 7 u 8 dígitos
            e.IsValid = System.Text.RegularExpressions.Regex.IsMatch(e.Value, rutPattern);
        }

        // Validación custom para el campo Producto
        protected void ValidarProductoCustom(object sender, ServerValidateEventArgs e)
        {
            e.IsValid = e.Value.Length >= 10;
        }

        // Validación custom para el campo Descripción
        protected void ValidarDescripcionCustom(object sender, ServerValidateEventArgs e)
        {
            e.IsValid = e.Value.Length >= 10;
        }
    }
}
