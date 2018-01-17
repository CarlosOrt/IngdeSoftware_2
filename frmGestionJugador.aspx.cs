using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class frmGestionJugador : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    public void ControlsEdicion()
    {
        txtcedula.Enabled = true;
        txtEmail.Enabled = true;
        txtFechaNac.Enabled = true;
        txtNacionalidad.Enabled = true;
        txtNombre.Enabled = true;
        txtNumeroJug.Enabled = true;
        txtTelefono.Enabled = true;
        lblAviso.Text = "";


        //btnbuscar.Enabled = true;
        btnNuevo.Enabled = true;
        btnmodificar.Enabled = false;
        btnEliminar.Enabled = false;
        
    }

    public void ControlsLimpiar()
    {
        txtcedula.Text = "";
        txtEmail.Text = "";
        txtFechaNac.Text = "";
        txtNacionalidad.Text = "";
        txtNombre.Text = "";
        txtNumeroJug.Text = "";
        txtTelefono.Text = "";
    }
    public void ControlsTerminada()
    {
        txtcedula.Enabled = false;
        txtEmail.Enabled = false;
        txtFechaNac.Enabled = false;
        txtNacionalidad.Enabled = false;
        txtNombre.Enabled = false;
        txtNumeroJug.Enabled = false;
        txtTelefono.Enabled = false;
        lblAviso.Text = "";
        btnNuevo.Text = "Nuevo";

        btnmodificar.Enabled = true;
        btnEliminar.Enabled = true;

    }
    protected void btnNuevo_Click(object sender, EventArgs e)
    {
        //control de botones para el ingreso de datos-Svasco_01032018

        if (btnNuevo.Text == "Nuevo")
        {
            ControlsLimpiar();
            ControlsEdicion();
            btnmodificar.Text = "Guardar";
        }
        else if (btnNuevo.Text == "Guardar")
        {
            try {
                adoJugador jugador = new adoJugador("", "", "", "", "", 0, 0);
                if (jugador.consultar(int.Parse(txtcedula.Text.Trim())))
                {
                    jugador.Cedula = int.Parse(txtcedula.Text);
                    jugador.Nombre = txtNombre.Text;
                    jugador.Email = txtEmail.Text;
                    jugador.Telefono = int.Parse(txtTelefono.Text);
                    jugador.Direccion = txtNacionalidad.Text;
                    jugador.Codjugador = txtcedula.Text;

                    jugador.actualizar();
                    ControlsTerminada();
                    lblAviso.Text = "Registro Actualizado";
                    btnNuevo.Text = "Nuevo";

                }
                else
                {
                    jugador.Cedula = int.Parse(txtcedula.Text);
                    jugador.Nombre = txtNombre.Text;
                    jugador.Email = txtEmail.Text;
                    jugador.Telefono = int.Parse(txtTelefono.Text);
                    jugador.Direccion = txtNacionalidad.Text;
                    jugador.Codjugador = txtcedula.Text;

                    jugador.agregar();
                    ControlsTerminada();
                    lblAviso.Text = "Nuevo Registro Guardado";
                    btnNuevo.Text = "Nuevo";

                }
            }
            catch{
                lblAviso.Text = "No dejar espacios en blanco";
            }
       
        }
    }

    protected void btnmodificar_Click(object sender, EventArgs e)
    {
        if (btnNuevo.Text=="Nuevo")
        {
            ControlsEdicion();
            btnNuevo.Text = "Guardar";
        }
        else if(btnNuevo.Text=="Guardar")
        {

        }
    }

    protected void btnEliminar_Click(object sender, EventArgs e)
    {
        try
        {
            adoJugador jugador = new adoJugador("", "", "", "", "", 0, 0);

            jugador.eliminar(int.Parse(txtcedula.Text));
            lblAviso.Text = "Registro Eliminado";

        }
        catch
        {
            lblAviso.Text = "No hay conexción con la base de datos";
        }

        
   
    }
}