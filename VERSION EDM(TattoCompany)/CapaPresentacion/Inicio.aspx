<%@ Page Title="" Language="C#" MasterPageFile="~/Page.Master" AutoEventWireup="true" CodeBehind="Inicio.aspx.cs" Inherits="CapaPresentacion.Inicio" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MenuPlaceHolder1" runat="server">
    <li class="nav-item">
        <a class="nav-link" href="#">Quienes Somos</a>
    </li>
    <li class="nav-item">
        <a class="nav-link" href="#">Perfil</a>
    </li>
    <li class="nav-item">
        <a class="nav-link" href="#">Configuraciòn</a>
    </li>
    <li class="nav-item">
        <a class="nav-link" href="#">Cerrar Sesión</a>
    </li>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- contenido dinamico -->
    <form id="form1" runat="server">
        <div class="row">
            <h2>Bienvenid@</h2>
        </div>
        <div class="row">
            <div class="col-6">
                <p>Elija una opción en el menú lateral</p></br>
                <p></p>
            </div>
            <div class="col-6">
                <p></p>
            </div>
        </div>
        <div class="row">
            <h2>CONSULTA</h2>
        </div>
        

        <div class="footer">
            <asp:Button ID="btnEnviar" runat="server" text="Enviar" CssClass="btn btn-large btn-success" OnClick="btnEnviar_Click" />
        </div>  
    </form>
</asp:Content>
