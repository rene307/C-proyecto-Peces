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
            if (e.Value.Length >= 5)
            {
                e.IsValid = true;
            }
            else
            {
                e.IsValid = false;
            }
        }

        // Validación custom para el campo RUT
        protected void ValidarRutCustom(object sender, ServerValidateEventArgs e)
        {
            string rutPattern = @"^\d{8,9}-[\dkK]$";  // Formato de RUT
            if (System.Text.RegularExpressions.Regex.IsMatch(e.Value, rutPattern))
            {
                e.IsValid = true;
            }
            else
            {
                e.IsValid = false;
            }
        }

        // Validación custom para el campo Producto
        protected void ValidarProductoCustom(object sender, ServerValidateEventArgs e)
        {
            if (e.Value.Length >= 10)
            {
                e.IsValid = true;
            }
            else
            {
                e.IsValid = false;
            }
        }

        // Validación custom para el campo Descripción
        protected void ValidarDescripcionCustom(object sender, ServerValidateEventArgs e)
        {
            if (e.Value.Length >= 10)
            {
                e.IsValid = true;
            }
            else
            {
                e.IsValid = false;
            }
        }
    }
}
