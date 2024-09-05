using System;
using System.Collections.Generic;
using System.Linq;
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

                if (item.Text == nombreLocalidad)
                { 
                   //bandera = false;
                    Lbl_errorNOmbreLOcalidadees.Text = "*Esta localidad ya fue ingresada";
                    return false;
                   
                }
                

            }
           

            //if (bandera == true)
           // {
    
                  Ddl_localidad.Items.Add(nombreLocalidad);
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
    }
}