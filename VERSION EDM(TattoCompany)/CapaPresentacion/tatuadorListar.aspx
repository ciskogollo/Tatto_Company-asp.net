<%@ Page Title="" Language="C#" MasterPageFile="~/Page.Master" AutoEventWireup="true" CodeBehind="tatuadorListar.aspx.cs" Inherits="CapaPresentacion.tatuadorListar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MenuPlaceHolder1" runat="server">
    <li class="nav-item">
        <a class="nav-link" href="/tatuador.aspx">Agregar</a>
    </li>
    <li class="nav-item">
        <a class="nav-link" href="/tatuadorListar.aspx">Listar</a>
    </li>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
    <div id="content-ventas-list">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:tatu_companyConnectionString %>" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [tatuador]">
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id_tatuador" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="id_tatuador" HeaderText="id_tatuador" ReadOnly="True" SortExpression="id_tatuador" />
                <asp:BoundField DataField="rut" HeaderText="rut" SortExpression="rut" />
                <asp:BoundField DataField="nombres" HeaderText="nombres" SortExpression="nombres" />
                <asp:BoundField DataField="apellidos" HeaderText="apellidos" SortExpression="apellidos" />
                <asp:BoundField DataField="fec_nac" HeaderText="fec_nac" SortExpression="fec_nac" />
                <asp:BoundField DataField="direccion" HeaderText="direccion" SortExpression="direccion" />
                <asp:BoundField DataField="telefono" HeaderText="telefono" SortExpression="telefono" />
                <asp:BoundField DataField="genero" HeaderText="genero" SortExpression="genero" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
        </div>
    </form>
</asp:Content>
