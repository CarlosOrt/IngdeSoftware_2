<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="frmGestionJugador.aspx.cs" Inherits="frmGestionJugador" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td colspan="3">GESTION DE JUGADORES:</td>
        </tr>
        <tr>
            <td colspan="2" style="height: 33px">
                <asp:Button ID="btnNuevo" runat="server" OnClick="btnNuevo_Click" Text="Nuevo" Width="94px" />
                <asp:Button ID="btnmodificar" runat="server" Text="Modificar" Width="94px" OnClick="btnmodificar_Click" />
                <asp:Button ID="btnEliminar" runat="server" Text="Eliminar" Width="91px" OnClick="btnEliminar_Click" />
            </td>
            <td style="height: 33px">
                <asp:Label ID="lblAviso" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="height: 26px; width: 133px">Nombres y Apellidos:</td>
            <td style="height: 26px; width: 257px">
                <asp:TextBox ID="txtNombre" runat="server" Width="249px" Enabled="False"></asp:TextBox>
            </td>
            <td style="height: 26px"></td>
        </tr>
        <tr>
            <td style="height: 26px; width: 133px">Apellidos:</td>
            <td style="height: 26px; width: 257px">&nbsp;</td>
            <td style="height: 26px">&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 26px; width: 133px">Cedula:</td>
            <td style="height: 26px; width: 257px">
                <asp:TextBox ID="txtcedula" runat="server" Width="249px" Enabled="False"></asp:TextBox>
            </td>
            <td style="height: 26px">&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 26px; width: 133px">Fecha de nacimiento:</td>
            <td style="height: 26px; width: 257px">
                <asp:TextBox ID="txtFechaNac" runat="server" Width="249px" Enabled="False"></asp:TextBox>
            </td>
            <td style="height: 26px">&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 26px; width: 133px">Nacionalidad:</td>
            <td style="height: 26px; width: 257px">
                <asp:TextBox ID="txtNacionalidad" runat="server" Width="249px" Enabled="False"></asp:TextBox>
            </td>
            <td style="height: 26px">&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 26px; width: 133px">Telefono:</td>
            <td style="height: 26px; width: 257px">
                <asp:TextBox ID="txtTelefono" runat="server" Width="249px" Enabled="False"></asp:TextBox>
            </td>
            <td style="height: 26px">&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 26px; width: 133px">email:</td>
            <td style="height: 26px; width: 257px">
                <asp:TextBox ID="txtEmail" runat="server" Width="249px" Enabled="False"></asp:TextBox>
            </td>
            <td style="height: 26px">&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 26px; width: 133px">Equipo:</td>
            <td style="height: 26px; width: 257px">
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="Conexion1" DataTextField="nombre" DataValueField="codeq" Height="18px" Width="255px" Enabled="False">
                </asp:DropDownList>
                <asp:SqlDataSource ID="Conexion1" runat="server" ConnectionString="<%$ ConnectionStrings:bdLigaBarrialConnectionString %>" SelectCommand="SELECT [codeq], [nombre] FROM [equipos] ORDER BY [nombre]"></asp:SqlDataSource>
            </td>
            <td style="height: 26px">&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 26px; width: 133px">Numero de jugador:</td>
            <td style="height: 26px; width: 257px">
                <asp:TextBox ID="txtNumeroJug" runat="server" Width="249px" Enabled="False"></asp:TextBox>
            </td>
            <td style="height: 26px">&nbsp;</td>
        </tr>
    </table>
</asp:Content>

