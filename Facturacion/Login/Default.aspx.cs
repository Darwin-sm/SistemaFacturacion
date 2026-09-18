using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Facturacion.Login
{
    public partial class Default1 : System.Web.UI.Page
    {
        SqlConnection SqlCon = new SqlConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            //LblCodigo.Text = (string)Session["Log_Codigo"];
            //LblUsuario.Text = (string)Session["Log_Usuario1"];
            //LblNombre.Text = (string)Session["Log_Nombre"];
            //LblApellido.Text = (string)Session["Log_Apellido"];
            //LblNickName.Text = (string)Session["Log_NickName"];
            //LblCargo.Text = (string)Session["Log_Cargo"];

            //SqlCon = ConexionDB.getInstacia().CrearConexion();
            //SqlCommand cmd = new SqlCommand("sp_Insert_SeguridadLogin", SqlCon);
            //cmd.CommandType = CommandType.StoredProcedure;
            //SqlCon.Open();

            //cmd.Parameters.AddWithValue("@Log_Codigo", LblCodigo.Text);
            //cmd.Parameters.AddWithValue("@Log_Usuario1", LblUsuario.Text);
            //cmd.Parameters.AddWithValue("@Log_Nombre", LblNombre.Text);
            //cmd.Parameters.AddWithValue("@Log_Apellido", LblApellido.Text);
            //cmd.Parameters.AddWithValue("@Log_NickName", LblNickName.Text);
            //cmd.Parameters.AddWithValue("@Log_Cargo", LblCargo.Text);
            //cmd.Parameters.AddWithValue("@Log_FechaEntrada", DateTime.Now);

            //cmd.ExecuteScalar();
            //SqlCon.Close();
        }
    }
}