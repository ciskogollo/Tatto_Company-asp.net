<%@ Page Title="" Language="C#" MasterPageFile="~/Page.Master" AutoEventWireup="true" CodeBehind="tatuajeListar.aspx.cs" Inherits="CapaPresentacion.tatuajeListar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MenuPlaceHolder1" runat="server">
    <li class="nav-item">
        <a class="nav-link" href="/ventas.aspx">Agregar</a>
    </li>
    <li class="nav-item">
        <a class="nav-link" href="/ventasListar.aspx">Listar</a>
    </li>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
    <div id="content-ventas-list">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:tatu_companyConnectionString %>" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [tatuaje]">
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id_tatuaje" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="id_tatuaje" HeaderText="id_tatuaje" ReadOnly="True" SortExpression="id_tatuaje" />
                <asp:BoundField DataField="tamano" HeaderText="tamano" SortExpression="tamano" />
                <asp:BoundField DataField="cant_color" HeaderText="cant_color" SortExpression="cant_color" />
                <asp:BoundField DataField="sesiones" HeaderText="sesiones" SortExpression="sesiones" />
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
