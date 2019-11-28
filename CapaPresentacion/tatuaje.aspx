<%@ Page Title="" Language="C#" MasterPageFile="~/Page.Master" AutoEventWireup="true" CodeBehind="tatuaje.aspx.cs" Inherits="CapaPresentacion.paciente" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MenuPlaceHolder1" runat="server">
    <li class="nav-item">
        <a class="nav-link" href="#">Agregar</a>
    </li>
    <li class="nav-item">
        <a class="nav-link" href="#">Listar</a>
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

                    <asp:DropDownList ID="selSize" runat="server" CssClass="form-control" placeholder="Elegir Tamaño...">
                    </asp:DropDownList>
                </div>
                <div class="form-group">
                    <label for="selCantColor">CANTIDAD COLORES:</label>

                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control" placeholder="Cantidad de Colores...">
                    </asp:DropDownList>
                </div>
                <div class="form-group">
                    <label for="selSesiones">CANTIDAD SESIONES:</label>

                    <asp:DropDownList ID="DropDownList2" runat="server" CssClass="form-control" placeholder="Cantidad de Sesiones...">
                    </asp:DropDownList>
                </div>
            
            </div>
        </div>

        <div class="footer">
            <asp:Button ID="btnEnviar" runat="server" text="Enviar" CssClass="btn btn-large btn-success" OnClick="btnEnviar_Click" />
        </div>  
    </form>
</asp:Content>