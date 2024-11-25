/*using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Pecesweb
{
    public class Cliente
    {
    }
}*/

public class Cliente
{
    public string Id { get; set; }
    public string Nombre { get; set; }
    public string Rut { get; set; }
    public string Telefono { get; set; }
    public string Email { get; set; }
}

public class PersonaNatural : Cliente
{
}

public class Empresa : Cliente
{
    public string RazonSocial { get; set; }
}


