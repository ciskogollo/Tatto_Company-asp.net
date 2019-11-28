<%@ Page Title="" Language="C#" MasterPageFile="~/Page.Master" AutoEventWireup="true" CodeBehind="ventas.aspx.cs" Inherits="CapaPresentacion.ventas" %>
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
            <h2>Nueva Venta</h2>
        </div>
        <div class="row">
            <div class="col">
                <div class="form-group">
                    <label for="selIDCliente">Cliente:</label>
                    <asp:DropDownList ID="selIDCliente" runat="server" CssClass="form-control" placeholder="Elegir Cliente...">
                    </asp:DropDownList>
                </div>
                <div class="form-group">
                    <label for="selIDTatuador">Tatuador:</label>

                    <asp:DropDownList ID="selIDTatuador" runat="server" CssClass="form-control" placeholder="Elegir Tatuador...">
                    </asp:DropDownList>
                </div>
                <div class="form-group">
                    <label for="selIDSucursal">Sucursal:</label>

                    <asp:DropDownList ID="selIDSucursal" runat="server" CssClass="form-control" placeholder="Elegir Sucursal...">
                    </asp:DropDownList>
                </div>
                <div class="form-group">
                    <label for="calendarFecha">Fecha:</label>

                    <asp:Calendar ID="calendarFecha" runat="server"></asp:Calendar>
                </div>
                <div class="form-group">
                    <label for="selIDTatuaje">Tipo de Tatuaje:</label>

                    <asp:DropDownList ID="selIDTatuaje" runat="server" CssClass="form-control" placeholder="Elegir Tipo de Tatuaje...">
                    </asp:DropDownList>
                </div>
                <div class="form-group">
                    <label for="txtValor">Valor Total:</label>

                    <asp:TextBox ID="txtValor" runat="server"></asp:TextBox>
                </div>
            </div>
        </div>

        <div class="footer">
            <asp:Button ID="btnEnviar" runat="server" text="Enviar" CssClass="btn btn-large btn-success" OnClick="btnEnviar_Click" />
        </div>  
    </form>
</asp:Content>