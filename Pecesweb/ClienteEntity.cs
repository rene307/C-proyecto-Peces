using System;
public class ClienteEntity
{
    public string Id { get; set; } = Guid.NewGuid().ToString();
    public string Nombre { get; set; }
    public string Rut { get; set; }
    public string Telefono { get; set; }
    public string Email { get; set; }
}

public class PersonaNaturalEntity : ClienteEntity
{
}

public class EmpresaEntity : ClienteEntity
{
    public string RazonSocial { get; set; }
}
