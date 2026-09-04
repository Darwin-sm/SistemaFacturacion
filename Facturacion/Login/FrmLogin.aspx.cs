using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Facturacion.Login
{
    public partial class FrmLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            TxtUsuario.Focus();
        }

        protected void BtnAceptar_Click(object sender, EventArgs e)
        {
            SqlConnection SqlCon = new SqlConnection();

            try
            {
                SqlCon = ConexionDB.getInstacia().CrearConexion();

                SqlParameter param = new SqlParameter("@usuario",TxtUsuario.Text.Trim());
                SqlParameter param1 = new SqlParameter("@clave",TxtClave.Text.Trim());

                SqlCommand cmd = new SqlCommand("Sp_CheclLogin", SqlCon);

                cmd.Parameters.Add(param);
                cmd.Parameters.Add(param1);
                cmd.CommandType = CommandType.StoredProcedure;

                SqlCon.Open();

                SqlDataReader dr = cmd.ExecuteReader();

                if (dr.Read())
                {
                    Session["Log_Status"] = dr["Log_Status"].ToString();
                    //Session["Log_Codigo"] = dr["Log_Codigo"];
                    Session["Log_Usuario1"] = TxtUsuario.Text;
                    Session["Log_Nombre"] = dr["Log_Nombre"].ToString();
                    Session["Log_Apellido"] = dr["Log_Apellido"].ToString();
                    Session["Log_NickName"] = dr["Log_NickName"].ToString();
                    Session["Log_Cargo"] = dr["Log_Cargo"].ToString();

                    if (dr["Log_Status"].ToString() == "Activo")
                    {
                        LblMensaje.Text = "Mensaje.: Login Correcto";

                        TxtUsuario.Enabled = false;
                        TxtClave.Enabled = false;
                        BtnAceptar.Enabled = false;

                        ImgCerradura.ImageUrl = "~/Imagenes/CerraduraVerde.png";
                        Timer1.Enabled = true;
                    }
                    else
                    {
                        LblMensaje.Text = "Mensaje.: Usuario Inhabilitado";

                        Timer1.Enabled = true;
                    }
                }
                else
                {
                    LblMensaje.Text = "Mensaje.: Login Incorrecto";

                    Timer1.Enabled = true;
                }

            }
            catch (Exception ex)
            {
                Response.Write(ex);
                //LblMensaje.Text = "Mensaje: No hay conexion con la Base de Datos";
            }
            finally
            {
                if(SqlCon.State == ConnectionState.Open) SqlCon.Close();
            }
        }

        protected void Timer1_Tick1(object sender, EventArgs e)
        {   
            if(LblMensaje.Text == "Mensaje.: Login Correcto")
            {
                Session["Log_Usuario"] = LblMensaje.Text;
                Response.Redirect("~/Login/Default.aspx");
            }
            else
            {
                LblMensaje.Text = "Mensaje.:";
            }
            Timer1.Enabled = false;
        }
    }
}