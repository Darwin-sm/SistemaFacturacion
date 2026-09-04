using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Facturacion
{
    public class ConexionDB
    {
        private string Base;
        private string Servidor;
        private string Usuario;
        private string Clave;
        private bool seguridad;
        private static ConexionDB Con = null;

        private ConexionDB()
        {
            this.Base = "Facturación";
            this.Servidor = "DARWIN\\DSMSERVER";
            this.Usuario = "sa";
            this.Clave = "Sanchez1995%";
            this.seguridad = true;
        }

        public SqlConnection CrearConexion()
        {
            SqlConnection Cadena = new SqlConnection();

            try
            {
                Cadena.ConnectionString = "Server=" + this.Servidor + "; Database=" + this.Base + ";";

                if (this.seguridad)
                {
                    Cadena.ConnectionString = Cadena.ConnectionString + "Integrated Security = SSPI";
                }
                else
                {
                    Cadena.ConnectionString = Cadena.ConnectionString + this.Base + "User Id=" + this.Usuario + "; Password="+ this.Clave;
                }

            }catch(Exception ex)
            {
                Cadena = null;
                throw ex;
            }
            return Cadena;
        }

        public static ConexionDB getInstacia()
        {
            if(Con == null)
            {
                Con = new ConexionDB(); 
            }
            return Con;
        }
    }
}