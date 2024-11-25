using System;
using System.Web.Routing;
using Microsoft.AspNet.FriendlyUrls;

namespace Pecesweb
{
    public static class RouteConfig
    {
        // Método para registrar las rutas en la aplicación
        public static void RegisterRoutes(RouteCollection routes)
        {
            // Configurar la redirección automática para URLs amigables
            var settings = new FriendlyUrlSettings
            {
                AutoRedirectMode = RedirectMode.Permanent
            };
            routes.EnableFriendlyUrls(settings);
        }
    }
}
