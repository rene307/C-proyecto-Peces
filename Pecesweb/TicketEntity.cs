/*using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Pecesweb
{
    public class TicketEntity
    {
    }
}*/

using System;

public class TicketEntity
{
    public string Id { get; set; } = Guid.NewGuid().ToString();
    public ClienteEntity Cliente { get; set; }
    public string Producto { get; set; }
    public string Descripción { get; set; }
    public string Estado { get; set; }
    private DateTime _createdAt { get; set; } = DateTime.Now;

    public DateTime GetCreatedAt()
    {
        return _createdAt;
    }
}
