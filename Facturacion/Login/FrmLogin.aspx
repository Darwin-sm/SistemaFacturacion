<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmLogin.aspx.cs" Inherits="Facturacion.Login.FrmLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="/App_Themes/Tema1/Tema1.css" rel="stylesheet" type="text/css"/>

    <link href="/Imagenes/Favicon.png" rel="shorcut icon" type="ime/x-icon" />

    <title>Sistema de Facturacion</title>

    <style type="text/css">
        body{ background-image:url('/Imagenes/Fondo1.jpg'); }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Image ID="ImgCajasAlmacen" runat="server" ImageUrl="~/Imagenes/CajasAlmacen.png" CssClass="CajasAlmacen" Height="430px" Width="790px" />

            <div id="Logo">
                <h1>Sistema</h1>
                <h3>De Facturacion Electronica</h3>
            </div>

            <asp:Panel ID="PnlAcceso" runat="server" BorderColor="Black" BorderStyle="Solid" CssClass="PnlAcceso" Width="520px" Height="268px" BackImageUrl="~/Imagenes/FondoLogin.png">

                <asp:Panel ID="PnlControl" runat="server" Height="37px" Width="520px" BackColor="#3399FF">
                    <asp:Label ID="LblControl" runat="server" Text="Control de Acceso" Font-Bold="true" ForeColor="White" Font-Size="Larger" CssClass="LblControl"></asp:Label>
                </asp:Panel>

                <asp:Image ID="ImgCerradura" runat="server" ImageUrl="~/Imagenes/CerraduraRoja.png" Height="85px" Width="95px" CssClass="ImgCerradura"/>

                <asp:Label ID="LblUsuario" runat="server" Text="Usuario.:" Font-Bold="true" ForeColor="White" Font-Size="Large" CssClass="LblUsuario"></asp:Label>

                <asp:Label ID="LblClave" runat="server" Text="Clave.:" Font-Bold="true" ForeColor="White" Font-Size="Large" CssClass="LblClave"></asp:Label>

                <asp:TextBox ID="TxtUsuario" runat="server" Font-Bold="true" ToolTip="Introduzca su usuario" Font-Size="Large" ForeColor="#0066FF" AutoCompleteType="Disabled" CssClass="TxtUsuario"></asp:TextBox>

                <asp:TextBox ID="TxtClave" runat="server" Font-Bold="true" ToolTip="Introduzca su clave" Font-Size="Large" ForeColor="#0066FF" AutoCompleteType="Disabled" CssClass="TxtClave" TextMode="Password"></asp:TextBox>

                <asp:Button ID="BtnAceptar" runat="server" Text="Aceptar" Font-Bold="true" ToolTip="Presione para aceptar la validacion" BorderStyle="Outset" Width="80px" Height="40px" CssClass="BtnAceptar" OnClick="BtnAceptar_Click"/>

                <asp:Panel ID="PnlMensaje" runat="server" Height="37px" Width="520px" CssClass="PnlMensaje" BackColor="Black">
                    <asp:Label ID="LblMensaje" runat="server" Text="Mensaje.:" Font-Bold="true" ForeColor="White" CssClass="LblMensaje"></asp:Label>
                </asp:Panel>
            </asp:Panel>

            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

            <asp:Timer ID="Timer1" runat="server" Interval="5000" Enabled="false" OnTick="Timer1_Tick1"></asp:Timer>
        </div>
    </form>
</body>
</html>
