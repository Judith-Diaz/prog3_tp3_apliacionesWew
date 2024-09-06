using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class ejercicio1b : System.Web.UI.Page
    {

        protected bool guardaLocalidad_ddl(string nombreLocalidad)
        {
            //bool bandera =true;
          foreach (ListItem item in Ddl_localidad.Items)
            {

                if (item.Text.ToUpper() == nombreLocalidad.ToUpper())//paso todo a mayuscula para comprara las cadenas ya que si estan diferentes ,nlas toma como diferentes
                { 
                   //bandera = false;
                    Lbl_errorNOmbreLOcalidadees.Text = "*Esta localidad ya fue ingresada";
                    return false;
                 }
           }
           //if (bandera == true)
           // {
    
                  Ddl_localidad.Items.Add(nombreLocalidad.ToUpper());//asi se pone en mayusculas en el ddl.
        
                  Lbl_errorNOmbreLOcalidadees.Text =" ";
                  Txt_NombreLocalidad.Text = string.Empty;//una vez que salfgo de la funcion, el texbol queda nuevamnete vacio
             
           // }
           return true;
        }
        protected void Page_Load(object sender, EventArgs e)
        {



            ValidationSettings.UnobtrusiveValidationMode= UnobtrusiveValidationMode.None; //esto reemplaza lo que haboa puesto en el html del script

            if (!IsPostBack)// hayq ue ponerlo si o si ,porque si no cada vez que se refresca la pagina me lo agrega como opcion el "Seleccione una localidad", y se va a cumulando
            {
                Ddl_localidad.Items.Add("Seleccione una localidad");
            }
        }

    
protected void Btn_GuardarLocalidad_Click(object sender, EventArgs e)
        {
    string nombreLocalidad= Txt_NombreLocalidad.Text.Trim();
             guardaLocalidad_ddl(nombreLocalidad);
          
           

        }

        protected void Btn_inicio_Click(object sender, EventArgs e)
        {
            Response.Redirect("ejecicio1a.aspx");
        }

        protected void Btn_guardarUsuario_Click(object sender, EventArgs e)
        {
            lbl_mensaje.Text =" Bienvenido  "+ Txt_NombreUsuario.Text;
            Txt_NombreUsuario.Text= string.Empty;
            Txt_contraseña.Text= string.Empty;
            Txt_repeCOntraseña.Text= string.Empty;
            Txt_correo.Text= string.Empty;
            Txt_cp.Text= string.Empty;
            Ddl_localidad.SelectedIndex=0; /// aca yoquiero que cuando aprieto el boton que se me limpien todos loa campos y en el ddl no s emem borre nada,pero que se quede ubicado en el selecioanr, que seria la opcion 1
        }
    }
}