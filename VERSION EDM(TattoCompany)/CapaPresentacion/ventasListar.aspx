<%@ Page Title="" Language="C#" MasterPageFile="~/Page.Master" AutoEventWireup="true" CodeBehind="ventasListar.aspx.cs" Inherits="CapaPresentacion.ventasListar" %>
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:tatu_companyConnectionString %>" DeleteCommand="DELETE FROM [venta] WHERE [id_venta] = @original_id_venta AND [id_cliente] = @original_id_cliente AND [id_tatuador] = @original_id_tatuador AND [id_sucursal] = @original_id_sucursal AND [fecha_hora] = @original_fecha_hora AND [id_tatuaje] = @original_id_tatuaje AND [valor_total] = @original_valor_total" InsertCommand="INSERT INTO [venta] ([id_venta], [id_cliente], [id_tatuador], [id_sucursal], [fecha_hora], [id_tatuaje], [valor_total]) VALUES (@id_venta, @id_cliente, @id_tatuador, @id_sucursal, @fecha_hora, @id_tatuaje, @valor_total)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [venta] ORDER BY [id_cliente]" UpdateCommand="UPDATE [venta] SET [id_cliente] = @id_cliente, [id_tatuador] = @id_tatuador, [id_sucursal] = @id_sucursal, [fecha_hora] = @fecha_hora, [id_tatuaje] = @id_tatuaje, [valor_total] = @valor_total WHERE [id_venta] = @original_id_venta AND [id_cliente] = @original_id_cliente AND [id_tatuador] = @original_id_tatuador AND [id_sucursal] = @original_id_sucursal AND [fecha_hora] = @original_fecha_hora AND [id_tatuaje] = @original_id_tatuaje AND [valor_total] = @original_valor_total">
            <DeleteParameters>
                <asp:Parameter Name="original_id_venta" Type="Int32" />
                <asp:Parameter Name="original_id_cliente" Type="Int32" />
                <asp:Parameter Name="original_id_tatuador" Type="Int32" />
                <asp:Parameter Name="original_id_sucursal" Type="Int32" />
                <asp:Parameter DbType="Date" Name="original_fecha_hora" />
                <asp:Parameter Name="original_id_tatuaje" Type="Int32" />
                <asp:Parameter Name="original_valor_total" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="id_venta" Type="Int32" />
                <asp:Parameter Name="id_cliente" Type="Int32" />
                <asp:Parameter Name="id_tatuador" Type="Int32" />
                <asp:Parameter Name="id_sucursal" Type="Int32" />
                <asp:Parameter DbType="Date" Name="fecha_hora" />
                <asp:Parameter Name="id_tatuaje" Type="Int32" />
                <asp:Parameter Name="valor_total" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="id_cliente" Type="Int32" />
                <asp:Parameter Name="id_tatuador" Type="Int32" />
                <asp:Parameter Name="id_sucursal" Type="Int32" />
                <asp:Parameter DbType="Date" Name="fecha_hora" />
                <asp:Parameter Name="id_tatuaje" Type="Int32" />
                <asp:Parameter Name="valor_total" Type="Int32" />
                <asp:Parameter Name="original_id_venta" Type="Int32" />
                <asp:Parameter Name="original_id_cliente" Type="Int32" />
                <asp:Parameter Name="original_id_tatuador" Type="Int32" />
                <asp:Parameter Name="original_id_sucursal" Type="Int32" />
                <asp:Parameter DbType="Date" Name="original_fecha_hora" />
                <asp:Parameter Name="original_id_tatuaje" Type="Int32" />
                <asp:Parameter Name="original_valor_total" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id_venta" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                <asp:BoundField DataField="id_venta" HeaderText="id_venta" ReadOnly="True" SortExpression="id_venta" />
                <asp:BoundField DataField="id_cliente" HeaderText="id_cliente" SortExpression="id_cliente" />
                <asp:BoundField DataField="id_tatuador" HeaderText="id_tatuador" SortExpression="id_tatuador" />
                <asp:BoundField DataField="id_sucursal" HeaderText="id_sucursal" SortExpression="id_sucursal" />
                <asp:BoundField DataField="fecha_hora" HeaderText="fecha_hora" SortExpression="fecha_hora" />
                <asp:BoundField DataField="id_tatuaje" HeaderText="id_tatuaje" SortExpression="id_tatuaje" />
                <asp:BoundField DataField="valor_total" HeaderText="valor_total" SortExpression="valor_total" />
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
