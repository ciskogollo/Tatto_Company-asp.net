<%@ Page Title="" Language="C#" MasterPageFile="~/Page.Master" AutoEventWireup="true" CodeBehind="tatuaje.aspx.cs" Inherits="CapaPresentacion.tatuaje" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MenuPlaceHolder1" runat="server">
    <li class="nav-item">
        <a class="nav-link" href="/ventas.aspx">Agregar</a>
    </li>
    <li class="nav-item">
        <a class="nav-link" href="/ventasListar.aspx">Listar</a>
    </li>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- contenido dinamico -->
    <form id="form1" runat="server">

        <div class="row">
            <h2>Agregar Tatuaje</h2>
        </div>
        <div class="row">
            <div class="col">
                <div class="form-group">
                    <label for="selSize">TAMAÑO:</label>
                    <asp:TextBox ID="txtTamano" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label for="selCantColor">CANTIDAD COLORES:</label>

                    <asp:TextBox ID="txtCantidadColores" runat="server" CssClass="form-control"></asp:TextBox>
                    
                </div>
                <div class="form-group">
                    <label for="selSesiones">CANTIDAD SESIONES:</label>

                    <asp:TextBox ID="txtCantidadSesiones" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
            
            </div>
        </div>

        <div class="footer">
            <asp:Button ID="btnEnviar" runat="server" text="Enviar" CssClass="btn btn-large btn-success" OnClick="btnEnviar_Click" />
        </div>  
    </form>
</asp:Content>