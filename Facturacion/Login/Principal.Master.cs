using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel;
using System.Drawing;

namespace Facturacion.Login
{
    public partial class Principal : System.Web.UI.MasterPage
    {

        SqlConnection SqlCon = new SqlConnection();

        protected void ConsultarImagenes()
        {
            SqlCon = ConexionDB.getInstacia().CrearConexion();
            SqlCon.Open();
            SqlCommand cmd = new SqlCommand("sp_ConsultarImagen_Empresa", SqlCon);
            cmd.CommandType = CommandType.StoredProcedure;
            DataTable ImagenesDB = new DataTable();
            ImagenesDB.Load(cmd.ExecuteReader());
            Repeater1.DataSource = ImagenesDB;
            Repeater1.DataBind();
            SqlCon.Close();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            LblIdentificacion.Text = (string)Session["Log_Nombre"] + (" ") + (string)Session["Log_Apellido"];

            ConsultarImagenes();
        }
    }
}