<%@ Page Title="" Language="C#" MasterPageFile="~/Mantenimiento/MPMantenimiento.master" AutoEventWireup="true" CodeBehind="FrmEmpresa.aspx.cs" Inherits="Facturacion.Mantenimiento.FrmEmpresa" %>
<asp:Content ID="Content1" ContentPlaceHolderID="contenidoPrincipal" runat="server">
<h2>&nbsp Datos Empresa</h2>

<script language="JavaScript">
    var nav4 = window.Event ? true : false;
    function acceptNum(evt) {
        var key = nav4 ? evt.which : evt.keyCode;
        return (key <= 13 || (key >= 48 && key <= 57 || key == 46));
    }
</script>

<asp:Panel ID="PnlBotonera" runat="server" BorderStyle="Solid" Width="138px" Height="639px" CssClass="PnlBotonera" BackImageUrl="~/Imagenes/Negra.png">

    <asp:ImageButton ID="ImgAceptar" ImageUrl="~/Imagenes/Aceptar.png" runat="server" BorderColor="#999999" BorderStyle="Solid" CssClass="ImgAceptar" Enabled="true" OnClick="ImgAceptar_Click" />
    <asp:ImageButton ID="ImbNuevo" ImageUrl="~/Imagenes/Nuevo.png" runat="server" BorderColor="#999999" BorderStyle="Solid" CssClass="ImbNuevo" Enabled="false" />
    <asp:ImageButton ID="ImbCancelar" ImageUrl="~/Imagenes/Cancelar.png" runat="server" BorderColor="#999999" BorderStyle="Solid" CssClass="ImbCancelar" OnClick="ImbCancelar_Click" />
    <asp:ImageButton ID="ImbBuscar" ImageUrl="~/Imagenes/Buscar.png" runat="server" BorderColor="#999999" BorderStyle="Solid" CssClass="ImbBuscar" Enabled="false" />
    <asp:ImageButton ID="ImbModificar" ImageUrl="~/Imagenes/Modificar.png" runat="server" BorderColor="#999999" BorderStyle="Solid" CssClass="ImbModificar" Enabled="false" />
   
    <asp:ImageButton ID="ImbImprimir" ImageUrl="~/Imagenes/Printer.png" runat="server" BorderColor="#999999" BorderStyle="Solid" CssClass="ImbPrinter" Enabled="false" />

</asp:Panel>

<asp:Panel ID="PnlMensaje" runat="server" CssClass="ImgBarraAzul" Width="784px" Height="50px">
    <asp:Image ID="ImgBarras" ImageUrl="~/Imagenes/BarraAzul.png" CssClass="ImgBarraAzul" Width="852px" Height="50px" runat="server" />

    <asp:Label ID="LblMensaje2" Text="Mensaje: " Font-Bold="true" ForeColor="Black" CssClass="LblMensaje2" runat="server" ></asp:Label>

</asp:Panel>

<asp:Panel ID="PnlDatos" BorderStyle="Solid" runat="server" BorderColor="Black" Width="775px" Height="507px" CssClass="PnlDatos" BackImageUrl="~/Imagenes/Crema.jpg">

    <div class="container">
        <div class="row">
            <div class="col-md-4 col-md-offset-4">
                <asp:FileUpload ID="fuploadImagen" accept=".jpg, .png" runat="server" CssClass="form-control" Font-Bold="true" />
                <br />
                <br />
                <asp:Image ID="imgPreview" ImageUrl="" runat="server" Width="150" BorderColor="Black" BorderStyle="Solid" CssClass="img-1" />
                <br />
                <br />
            </div>
        </div>
    </div>

    <asp:Label ID="LblNombre" runat="server" Text="Nombre.:" Font-Bold="true" CssClass="LblNombre"></asp:Label>

    <asp:Label ID="LblDireccion" runat="server" Text="Direccion.:" Font-Bold="true" CssClass="LblDireccion"></asp:Label>

    <asp:Label ID="LblTelefono" runat="server" Text="Telefono.:" Font-Bold="true" CssClass="Telefono"></asp:Label>

    <asp:Label ID="LblRNC" runat="server" Text="RNC.:" Font-Bold="true" CssClass="RNC"></asp:Label>

    <asp:TextBox ID="TxtNombre" runat="server" CssClass="TxtNombre" ForeColor="#0066FF" AutoCompleteType="Disabled" Font-Size="Medium" Font-Bold="true" MaxLength="50"></asp:TextBox>

    <asp:TextBox ID="TxtDireccion" runat="server" CssClass="TxtDireccion" ForeColor="#0066FF" AutoCompleteType="Disabled" Font-Size="Medium" Font-Bold="true" MaxLength="50"></asp:TextBox>

    <div class="TxtTelefono">
        <input ID="TxtTelefono" runat="server" style="width:97%;height:2.4%; font-weight:bold;font-size:medium;color:#0066FF;" title="Introduzca el telefono de la compañía" OnFocus="this.style.borderColor = 'black'" onkeypress="return acceptNum(event)" type="text" name="Phone" placeholder="" onkeyup="
            var Phone = this.value;
            if(Phone.match(/^\d{3}$/) !== null){
                this.value = Phone + '-';
            }else if(Phone.match(/^\d{3}\-\d{3}$/) !== null){
                this.value = Phone + '-'
            }" maxlength="12" autocomplete="off" />
    </div>
    <div class="TxtRNC">
        <input ID="TxtRNC" runat="server" style="width:97%; height:2.4%; font-weight:bold;font-size:medium;color:#0066FF;" title="Introduzca el RNC de la compañía" onfocus =" this. style. borderColor ='Black'" onblur="this.style. borderColor=''" onkeypress="return acceptNum(event)" type="text" name="RNC" placeholder="" onkeyup="
                var RNC = this.value;
                if(RNC.match(/^\d{3}$/) !== null){
                    this.value = RNC + '-';
                }else if(RNC.match(/^\d{3}\-\d{5}$/) !== null){
                    this.value = RNC + '-';
                }
            " maxlength="11" autocomplete="off"/>
    </div>
</asp:Panel>

<asp:ScriptManager ID="ScriptManager1" runat="server" ></asp:ScriptManager>
<asp:Timer ID="Timer1" runat="server" Interval="4000" Enabled="false" OnTick="Timer1_Tick" ></asp:Timer>

</asp:Content>