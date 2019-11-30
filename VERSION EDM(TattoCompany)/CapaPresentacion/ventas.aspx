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
                    <asp:DropDownList ID="selCliente" runat="server" CssClass="form-control" placeholder="Elegir Cliente..." OnSelectedIndexChanged="selCliente_SelectedIndexChanged" DataSourceID="selClienteDS" DataTextField="nombre" DataValueField="id_cliente">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="selClienteDS" runat="server" ConnectionString="<%$ ConnectionStrings:tatu_companyConnectionString %>" SelectCommand="SELECT [nombre], [id_cliente] FROM [cliente] ORDER BY [nombre]"></asp:SqlDataSource>
                </div>
                <div class="form-group">
                    <label for="selIDTatuador">Tatuador:</label>

                    <asp:DropDownList ID="selTatuador" runat="server" CssClass="form-control" placeholder="Elegir Tatuador..." DataSourceID="selTatuadorSDS" DataTextField="nombres" DataValueField="id_tatuador">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="selTatuadorSDS" runat="server" ConnectionString="<%$ ConnectionStrings:tatu_companyConnectionString2 %>" SelectCommand="SELECT [id_tatuador], [nombres], [rut], [apellidos] FROM [tatuador] ORDER BY [apellidos], [nombres]"></asp:SqlDataSource>
                </div>
                <div class="form-group">
                    <label for="selIDSucursal">Sucursal:</label>

                    <asp:DropDownList ID="selSucursal" runat="server" CssClass="form-control" placeholder="Elegir Sucursal..." DataSourceID="selSucursalSDS" DataTextField="direccion" DataValueField="id_sucursal">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="selSucursalSDS" runat="server" ConnectionString="<%$ ConnectionStrings:tatu_companyConnectionString %>" SelectCommand="SELECT * FROM [sucursal]"></asp:SqlDataSource>
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