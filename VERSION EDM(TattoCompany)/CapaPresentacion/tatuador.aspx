<%@ Page Title="" Language="C#" MasterPageFile="~/Page.Master" AutoEventWireup="true" CodeBehind="tatuador.aspx.cs" Inherits="CapaPresentacion.medicamento" %>
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
            <h2>Tatuador</h2>
        </div>
        <div class="row">
            <div class="col">
                <div class="form-group">
                    <label for="txtRut">RUT:</label>

                    <asp:TextBox ID="txtRut" runat="server" CssClass="form-control" placeholder="Ingrese RUT..."></asp:TextBox>
                </div>
                <div class="form-group">
                    <label for="txtNombre">Nombre:</label>

                    <asp:TextBox ID="txtNombre" runat="server" CssClass="form-control" placeholder="Ingrese un Nombre"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label for="txtApellidos">Apellidos:</label>

                    <asp:TextBox ID="txtApellidos" runat="server" CssClass="form-control" placeholder="Ingrese los Apellidos"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label for="calendarFecNac">Fecha de Nacimiento:</label>

                    <asp:Calendar ID="calendarFecNac" runat="server"></asp:Calendar>
                </div>

                <div class="form-group">
                    <label for="txtDireccion">Dirección:</label>

                    <asp:TextBox ID="txtDireccion" runat="server" CssClass="form-control" placeholder="Ingrese una Dirección"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label for="txtTel">Teléfono:</label>

                    <asp:TextBox ID="txtTel" runat="server" CssClass="form-control" placeholder="Ingrese un teléfono"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label for="txtGen">Género:</label>

                    <asp:TextBox ID="txtGen" runat="server" CssClass="form-control" placeholder="Ingrese un género..."></asp:TextBox>
                   
                </div>
            </div>
        </div>

        <div class="footer">
            <asp:Button ID="btnEnviar" runat="server" text="Enviar" CssClass="btn btn-large btn-success" OnClick="btnEnviar_Click" />
            <asp:EntityDataSource ID="EntityDataSource1" runat="server">
            </asp:EntityDataSource>
        </div>  
    </form>
</asp:Content>