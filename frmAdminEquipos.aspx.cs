using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class frmAdminEquipos : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
           /* DataSetTableAdapters. obj = new DataSetTableAdapters.LogginUsersTableAdapter();
            /String NombreUsuario = obj.ToString (UsuarioTex.Text, PassText.Text).ToString();
            if (!NombreUsuario.Equals(""))
            {
                Session["usuario"] = NombreUsuario;
                Response.Redirect("Default.aspx");

            }*/
        }
        catch
        {

        }
        
    }

    protected void btnBuscarJ_Click(object sender, EventArgs e)
    {
        //constructor de la clase//02012018
        adoJugador cljg = new adoJugador("","","","","",0,0);

        if (cljg.consultar(int.Parse(TxtCedula.Text)))
        {
            lblCedulaJ.Text = cljg.Cedula.ToString();
            lblNombreJ.Text = cljg.Nombre;
            lblTelefono.Text = cljg.Telefono.ToString();
            lblEmail.Text = cljg.Email;
            txtAviso.Text = "Jugador encontrado";
        }
        else
        {
            txtAviso.Text = "No existe ese jugador";
            lblCedulaJ.Text = "";
            lblNombreJ.Text = "";
            lblTelefono.Text = "";
            lblEmail.Text = "";
            lblEquipoJ.Text = "";
            lblNacionalidad.Text = "";
            lblstatus.Text = "";
        }
    }
}

