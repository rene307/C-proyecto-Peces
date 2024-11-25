using System;
using System.Web.Routing;
using Microsoft.AspNet.FriendlyUrls;

namespace Pecesweb
{
    public static class RouteConfig
    {
        // M�todo para registrar las rutas en la aplicaci�n
        public static void RegisterRoutes(RouteCollection routes)
        {
            // Configurar la redirecci�n autom�tica para URLs amigables
            var settings = new FriendlyUrlSettings
            {
                AutoRedirectMode = RedirectMode.Permanent
            };
            routes.EnableFriendlyUrls(settings);
        }
    }
}
