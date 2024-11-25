<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CrearTicket.aspx.cs" Inherits="Pecesweb.CrearTicket" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Crear Ticket</title>
</head>
<body>
    <form id="form2" runat="server">
        <div>
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
                        HeaderText="Por favor corrige los siguientes errores:"
                        CssClass="validation-summary" />

            <!-- Nombre -->
            <label>Nombre:</label>
            <asp:TextBox ID="txtNombre" runat="server" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                        ControlToValidate="txtNombre" 
                                        ErrorMessage="El nombre es obligatorio." 
                                        Display="Dynamic" 
                                        CssClass="error" 
                                        SetFocusOnError="true" />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="txtNombre" 
                        ErrorMessage="El nombre debe tener al menos 5 caracteres." 
                        ValidationExpression="^.{5,}$" 
                        Display="Dynamic" 
                        CssClass="error" />
            <asp:CustomValidator ID="cvNombre" runat="server"
                                ControlToValidate="txtNombre"
                                ErrorMessage="El nombre debe tener al menos 5 caracteres."
                                OnServerValidate="ValidarNombreCustom"
                                Display="Dynamic" 
                                CssClass="error" />

            <!-- RUT -->
            <label>RUT:</label>
            <asp:TextBox ID="txtRut" runat="server" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                        ControlToValidate="txtRut" 
                                        ErrorMessage="El RUT es obligatorio." 
                                        Display="Dynamic" 
                                        CssClass="error" />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                      ControlToValidate="txtRut" 
                  ErrorMessage="Formato de RUT no válido." 
                         ValidationExpression="^(\d{8,9}-[\dkK])$" 
                  Display="Dynamic" 
                     CssClass="error" />
            <asp:CustomValidator ID="cvRut" runat="server"
                                ControlToValidate="txtRut"
                                ErrorMessage="Formato de RUT no válido."
                                OnServerValidate="ValidarRutCustom"
                                Display="Dynamic" 
                                CssClass="error" />

            <!-- Teléfono -->
            <label>Teléfono:</label>
            <asp:TextBox ID="txtTelefono" runat="server" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                        ControlToValidate="txtTelefono" 
                                        ErrorMessage="El teléfono es obligatorio." 
                                        Display="Dynamic" 
                                        CssClass="error" />

            <!-- Email -->
            <label>Email:</label>
            <asp:TextBox ID="txtEmail" runat="server" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                        ControlToValidate="txtEmail" 
                                        ErrorMessage="El email es obligatorio." 
                                        Display="Dynamic" 
                                        CssClass="error" />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                                           ControlToValidate="txtEmail" 
                                           ErrorMessage="Formato de email no válido." 
                                           ValidationExpression="^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$" 
                                           Display="Dynamic" 
                                           CssClass="error" />

            <!-- Producto -->
            <label>Producto:</label>
            <asp:TextBox ID="txtProducto" runat="server" />
            <asp:RequiredFieldValidator ID="rfvProducto" runat="server" 
                                        ControlToValidate="txtProducto" 
                                        ErrorMessage="El producto es obligatorio." 
                                        Display="Dynamic" 
                                        CssClass="error" />
            <asp:RegularExpressionValidator ID="revProducto" runat="server" 
                                           ControlToValidate="txtProducto" 
                                           ErrorMessage="El producto debe tener al menos 10 caracteres." 
                                           ValidationExpression="^.{10,}$" 
                                           Display="Dynamic" 
                                           CssClass="error" />
            <asp:CustomValidator ID="cvProducto" runat="server"
                                ControlToValidate="txtProducto"
                                ErrorMessage="El producto debe tener al menos 10 caracteres."
                                OnServerValidate="ValidarProductoCustom"
                                Display="Dynamic" 
                                CssClass="error" />

            <!-- Descripción -->
            <label>Descripción:</label>
            <asp:TextBox ID="txtDescripcion" runat="server" TextMode="MultiLine" />
            <asp:RequiredFieldValidator ID="rfvDescripcion" runat="server" 
                                        ControlToValidate="txtDescripcion" 
                                        ErrorMessage="La descripción es obligatoria." 
                                        Display="Dynamic" 
                                        CssClass="error" />
            <asp:RegularExpressionValidator ID="revDescripcion" runat="server" 
                                           ControlToValidate="txtDescripcion" 
                                           ErrorMessage="La descripción debe tener al menos 10 caracteres." 
                                           ValidationExpression="^.{10,}$" 
                                           Display="Dynamic" 
                                           CssClass="error" />
            <asp:CustomValidator ID="cvDescripcion" runat="server"
                                ControlToValidate="txtDescripcion"
                                ErrorMessage="La descripción debe tener al menos 10 caracteres."
                                OnServerValidate="ValidarDescripcionCustom"
                                Display="Dynamic" 
                                CssClass="error" />

            <!-- Botón para crear el ticket -->
            <asp:Button ID="btnCrearTicket" runat="server" Text="Crear Ticket" OnClick="btnCrearTicket_Click" />
        </div>
    </form>
</body>
</html>
