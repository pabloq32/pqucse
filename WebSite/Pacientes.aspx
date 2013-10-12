<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="Pacientes.aspx.vb" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 240px;
        }
        .style3
        {
            width: 231px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <table class="style1">
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style2">
                PACIENTE</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style2">
                <asp:TextBox ID="TextBox1" runat="server" Width="118px" TabIndex="1"></asp:TextBox>
            </td>
            <td class="style3">
                DNI</td>
            <td>
                <asp:Button ID="bttnagregar" runat="server" Text="Agregar" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style2">
                <asp:TextBox ID="TextBox10" runat="server" TabIndex="2"></asp:TextBox>
            </td>
            <td class="style3">
                DNI Tutor</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style2">
                <asp:TextBox ID="TextBox2" runat="server" TabIndex="3"></asp:TextBox>
            </td>
            <td class="style3">
                Apellido</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style2">
                <asp:TextBox ID="TextBox3" runat="server" TabIndex="4"></asp:TextBox>
            </td>
            <td class="style3">
                Nombre</td>
            <td>
                <asp:Button ID="bttnmodificar" runat="server" Text="Modificar" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style2">
                <asp:TextBox ID="TextBox4" runat="server" TabIndex="5"></asp:TextBox>
            </td>
            <td class="style3">
                Dirección</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style2">
                <asp:DropDownList ID="DropBarrios" runat="server" DataSourceID="SqlBarrios" 
                    DataTextField="bnombre" DataValueField="bidbarrio" TabIndex="6">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlBarrios" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:SaludConnection %>" 
                    SelectCommand="SELECT * FROM [Barrios]"></asp:SqlDataSource>
            </td>
            <td class="style3">
                Barrio</td>
            <td>
                <asp:Button ID="bttneliminar" runat="server" Text="Eliminar" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style2">
                <asp:TextBox ID="TextBox5" runat="server" TabIndex="7"></asp:TextBox>
            </td>
            <td class="style3">
                Teléfono</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style2">
                <asp:TextBox ID="TextBox6" runat="server" TabIndex="8"></asp:TextBox>
            </td>
            <td class="style3">
                Celular</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style2">
                <asp:TextBox ID="TextBox7" runat="server" TabIndex="9"></asp:TextBox>
            </td>
            <td class="style3">
                Correo electrónico</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style2">
                <asp:TextBox ID="TextBox8" runat="server" TabIndex="10"></asp:TextBox>
            </td>
            <td class="style3">
                Fecha de nacimiento</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style2">
                <asp:DropDownList ID="DropSexo" runat="server" DataSourceID="SqlSexo" 
                    DataTextField="descripcion" DataValueField="idsexo" TabIndex="11">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlSexo" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:SaludConnection %>" 
                    SelectCommand="SELECT * FROM [Genero]"></asp:SqlDataSource>
            </td>
            <td class="style3">
                Sexo</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style2">
                <asp:TextBox ID="TextBox9" runat="server" TabIndex="12"></asp:TextBox>
            </td>
            <td class="style3">
                Ciudad</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style2">
                <asp:TextBox ID="TextBox11" runat="server" TabIndex="13"></asp:TextBox>
            </td>
            <td class="style3">
                Observaciones</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style2">
                <asp:Button ID="bttnaceptar" runat="server" Text="Aceptar" />
            </td>
            <td class="style3">
                <asp:Button ID="bttncancelar" runat="server" Text="Cancelar" />
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

