<%@ Page Title="" Language="C#" MasterPageFile="~/Login/Principal.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Facturacion.Login.Default1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contenidoMenuContextual" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPrincipal" runat="server">
    <h2>&nbsp Bienvenido</h2>

    <img src="/Imagenes/CajasAlmacen.png" />

    <asp:Label ID="LblCodigo" runat="server" Text="" Visible="false"></asp:Label>
    <asp:Label ID="LblUsuario" runat="server" Text="" Visible="false"></asp:Label>
    <asp:Label ID="LblNombre" runat="server" Text="" Visible="false"></asp:Label>
    <asp:Label ID="LblApellido" runat="server" Text="" Visible="false"></asp:Label>
    <asp:Label ID="LblNickName" runat="server" Text="" Visible="false"></asp:Label>
    <asp:Label ID="LblCargo" runat="server" Text="" Visible="false"></asp:Label>
</asp:Content>
