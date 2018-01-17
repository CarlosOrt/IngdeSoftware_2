<%@ Page Language="C#" AutoEventWireup="true" CodeFile="frmAdminEquipos.aspx.cs" Inherits="frmAdminEquipos" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Gestion de datos</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" href="styles/layout.css" type="text/css" />
<!--script type="text/javascript" src="layout/scripts/jquery.min.js"></!--script>
<script type="text/javascript" src="layout/scripts/jquery.jcarousel.pack.js"></script>
<script type="text/javascript" src="layout/scripts/jquery.jcarousel.setup.js"></script-->
    <style type="text/css">
        .auto-style1 {
            left: 0px;
            top: 0px;
            height: 115px;
        }
        .auto-style2 {
            width: 100%;
        }
        .auto-style4 {
            margin-left: 11px;
        }
        .auto-style5 {
            margin-left: 10px;
        }
        .auto-style6 {
            width: 37px;
        }
        .auto-style7 {
            width: 286px;
        }
        .auto-style8 {
            width: 272px;
        }
        .auto-style9 {
            width: 151px;
        }
        .auto-style10 {
            margin-left: 12px;
        }
    </style>
</head>
<body id="top">
    <form id="form1" runat="server">
<!-- ####################################################################################################### -->
<div class="wrapper col1">
  <div id="header" class="auto-style1">
    <div id="logo">
      <h1><a href="index.html">SisFutWeb</a></h1>
      <p>Sistema Organizador de Resultados de Futbol</p>
    </div>
    <div id="topnav">
      <ul>
        <li class="active"><a href="frmEquipos.aspx">Equipos</a></li>
        <li><a href="#">Jugadores</a>
          <ul>
            <li><a href="frmAdminEquipos.aspx">Consulta de Jugadores</a></li>
            <li><a href="#">Gestion de Jugadores</a></li>
          </ul>
        </li>
        <li><a href="pages/style-demo.html">Administración</a></li>
        <li><a href="pages/full-width.html">Full Width</a></li>
      </ul>
    </div>
    <br class="clear" />
  </div>
</div>
<!-- ####################################################################################################### -->
<div class="wrapper col3">
  <div id="container">
      
    <asp:PlaceHolder ID="PlaceHolder1" runat="server">
        <h2>Consulta de Jugadores</h2> 
          
    </asp:PlaceHolder>
      <table class="auto-style2" bgcolor="White" border="3">
          <tr>
              <td colspan="3">&nbsp;Cédula Jugador:
                 <asp:TextBox ID="TxtCedula" runat="server" CssClass="auto-style4" Width="219px"></asp:TextBox>
                  <asp:Button ID="btnBuscarJ" runat="server" CssClass="auto-style5" Text="Buscar" OnClick="btnBuscarJ_Click" />
                  <asp:TextBox ID="txtAviso" runat="server" CssClass="auto-style10" Width="173px" BackColor="White" BorderStyle="None" Enabled="False"></asp:TextBox>
              </td>
              <td colspan="3">&nbsp;<asp:Label ID="lblstatus" runat="server"></asp:Label>
              </td>  
          </tr>
          <tr>
              <td class="auto-style6">Cedula:</td>
              <td class="auto-style7" style="table-layout: auto">
                  <asp:Label ID="lblCedulaJ" runat="server"></asp:Label>
              </td>
              <td class="auto-style8">Nombres y Apellidos:</td>
              <td>
                  <asp:Label ID="lblNombreJ" runat="server"></asp:Label>
              </td>
          </tr>
          <tr>
              <td class="auto-style6">Equipo:</td>
              <td class="auto-style7">
                  <asp:Label ID="lblEquipoJ" runat="server"></asp:Label>
              </td>
              <td class="auto-style8">Telefono:</td>
              <td>
                  <asp:Label ID="lblTelefono" runat="server"></asp:Label>
              </td>
          </tr>
          <tr>
              <td class="auto-style6">Email:</td>
              <td class="auto-style7">
                  <asp:Label ID="lblEmail" runat="server"></asp:Label>
              </td>
              <td class="auto-style8">Nacionalidad:</td>
              <td>
                  <asp:Label ID="lblNacionalidad" runat="server"></asp:Label>
              </td>
          </tr>
      </table>
      <table style="width:100%;">
          <tr>
              <td class="auto-style9">Historial del jugador:</td>
          </tr>
          <tr>
              <td class="auto-style9">&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
          </tr>
          <tr>
              <td class="auto-style9">&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
          </tr>
      </table>
  </div>
</div>
<!-- ####################################################################################################### -->
<div class="wrapper col5">
  <div id="copyright">
    <p class="fl_right">Copyright 2017 by Steven Adrian Vasco | All Right Reserved | Contactos: 0984505329</p>
    <br class="clear" />
  </div>
</div>
    </form>
</body>
</html>