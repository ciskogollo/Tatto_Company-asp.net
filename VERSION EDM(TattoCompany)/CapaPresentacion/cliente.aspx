<%@ Page Title="" Language="C#" MasterPageFile="~/Page.Master" AutoEventWireup="true" CodeBehind="cliente.aspx.cs" Inherits="CapaPresentacion.cliente" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MenuPlaceHolder1" runat="server">
    <li class="nav-item">
        <a class="nav-link" href="/cliente.aspx">Agregar</a>
    </li>
    <li class="nav-item">
        <a class="nav-link" href="/clienteListar.aspx">Listar</a>
    </li>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- contenido dinamico -->
    <form id="form1" runat="server">
        
        <div class="row">
            <h2>Cliente</h2>
        </div>
        <div class="row">
            <div class="col">
                <div class="form-group">
                    <label for="txtNombre">Nombre:</label>
                    <asp:TextBox ID="txtNombre" runat="server" CssClass="form-control" placeholder="Ingrese un nombre"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label for="txtEdad">Edad:</label>

                    <asp:TextBox ID="txtEdad" runat="server" CssClass="form-control" placeholder="Ingrese una Edad"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label for="txtTel">Teléfono:</label>

                    <asp:TextBox ID="txtTel" runat="server" CssClass="form-control" placeholder="Ingrese un teléfono"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label for="txtCorreo">Correo:</label>

                    <asp:TextBox ID="txtCorreo" runat="server" CssClass="form-control" placeholder="Ingrese un correo"></asp:TextBox>
                </div>
            </div>
        </div>

        <div class="footer">
            <asp:Button ID="btnEnviar" runat="server" text="Enviar" CssClass="btn btn-large btn-success" OnClick="btnEnviar_Click" />
        </div>  
    </form>
</asp:Content>