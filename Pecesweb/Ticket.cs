/*using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Pecesweb
{
    public class Ticket
    {
    }
}*/


public class Ticket
{
    public string Id { get; set; }
    public Cliente Cliente { get; set; }
    public string Producto { get; set; }
    public string Descripción { get; set; }
    public string Estado { get; set; }
}
