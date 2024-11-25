using Pecesweb.Models;

namespace Pecesweb.Controllers
{
    public class TicketController
    {
        public bool CrearTicket(TicketModel ticket)
        {
            // Lógica para validar y crear el ticket
            // Aquí puedes agregar la lógica para crear la entidad del ticket
            TicketEntity ticketEntity = new TicketEntity
            {
                Cliente = new ClienteEntity // Asignar cliente según la lógica de tu aplicación
                {
                    Nombre = ticket.Nombre,
                    Rut = ticket.Rut,
                    Telefono = ticket.Telefono,
                    Email = ticket.Email
                    // Puedes agregar otros campos según sea necesario
                },
                Producto = ticket.Producto,
                Descripción = ticket.Descripcion,
                Estado = "Nuevo" // Establecer un estado por defecto
            };

            // Agregar la entidad a la colección (suponiendo que exista)
            TicketEntityCollection.ListadoTickets.Add(ticketEntity);

            return true; // Retornar true si es exitoso
        }

        // Puedes implementar otros métodos como Read, Update, Delete aquí
    }
}



