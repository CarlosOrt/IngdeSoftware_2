using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnAceptar_Click(object sender, EventArgs e)
    {
        if (txtUsuario.Text != "" && txtpass.Text != "")
        {
            adoUsers objconsultar = new adoUsers("", "");
            if (objconsultar.consultar(txtUsuario.Text, txtpass.Text))
            {

                //Session["usuario"] = objconsultar;
                Response.Redirect("~/frmadmin.aspx");
            }
            else
            {
                lblError.Text = "Usuario o contraseña invalido";
                lblError.Visible = true;
            }
        }
        else
        {
            lblError.Text = "Faltan ingresar campos";
            lblError.Visible = true;
        }
    }
    protected void btnRegresar_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Default.aspx");
    }
}