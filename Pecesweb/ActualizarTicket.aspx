<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ActualizarTicket.aspx.cs" Inherits="Pecesweb.ActualizarTicket" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>ActualizarTicket</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblTelefono" runat="server" Text="Número Telefónico:"></asp:Label>
            <asp:TextBox ID="txtTelefono" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvTelefono" runat="server" ControlToValidate="txtTelefono" ErrorMessage="Número telefónico es obligatorio." ForeColor="Red" />

            <asp:Label ID="lblEmail" runat="server" Text="Email:"></asp:Label>
            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email es obligatorio." ForeColor="Red" />
            <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail" ValidationExpression="^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$" ErrorMessage="Formato de email no válido." ForeColor="Red" />

            <asp:Label ID="lblNombreProducto" runat="server" Text="Nombre del Producto:"></asp:Label>
            <asp:TextBox ID="txtNombreProducto" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvNombreProducto" runat="server" ControlToValidate="txtNombreProducto" ErrorMessage="Nombre del producto es obligatorio." ForeColor="Red" />
            <asp:RegularExpressionValidator ID="revNombreProducto" runat="server" ControlToValidate="txtNombreProducto" ValidationExpression=".{10,}" ErrorMessage="Nombre del producto debe tener al menos 10 caracteres." ForeColor="Red" />

            <asp:Label ID="lblDescripcionProducto" runat="server" Text="Descripción del Producto:"></asp:Label>
            <asp:TextBox ID="txtDescripcionProducto" runat="server" TextMode="MultiLine"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvDescripcionProducto" runat="server" ControlToValidate="txtDescripcionProducto" ErrorMessage="Descripción del producto es obligatoria." ForeColor="Red" />
            <asp:RegularExpressionValidator ID="revDescripcionProducto" runat="server" ControlToValidate="txtDescripcionProducto" ValidationExpression=".{10,}" ErrorMessage="Descripción del producto debe tener al menos 10 caracteres." ForeColor="Red" />

            <asp:ValidationSummary ID="vsActualizarTicket" runat="server" HeaderText="Por favor corrija los siguientes errores:" ForeColor="Red" />
            <asp:Button ID="btnActualizarTicket" runat="server" Text="Actualizar Ticket" OnClick="btnActualizarTicket_Click" />
        </div>
    </form>
</body>
</html>
