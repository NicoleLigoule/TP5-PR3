<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListadoDeSucursales.aspx.cs" Inherits="TP5_GRUPO_1.ListadoDeSucursales" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            font-size: x-large;
            width: 234px;
            height: 50px;
        }
        .auto-style3 {
            width: 234px;
        }
        .auto-style4 {
            width: 160px;
        }
        .auto-style6 {
            width: 160px;
            height: 50px;
        }
        .auto-style8 {
            height: 50px;
        }
        .auto-style9 {
            width: 234px;
            height: 22px;
        }
        .auto-style10 {
            width: 160px;
            height: 22px;
        }
        .auto-style12 {
            height: 22px;
        }
        .auto-style14 {
            width: 229px;
            height: 50px;
        }
        .auto-style15 {
            width: 229px;
        }
        .auto-style16 {
            width: 229px;
            height: 22px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style3">
                        <asp:HyperLink ID="hpAgregarSucursal" runat="server">Agregar sucursal</asp:HyperLink>
                        <br />
                    </td>
                    <td class="auto-style4">
                        <asp:HyperLink ID="hpListarSucursales" runat="server">Listado de sucursales</asp:HyperLink>
                    </td>
                    <td class="auto-style15">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2"><strong>Listado de Sucurales<br />
                        </strong></td>
                    <td class="auto-style6"></td>
                    <td class="auto-style14"></td>
                    <td class="auto-style8"></td>
                </tr>
                <tr>
                    <td class="auto-style9">Busqueda ingrese Id sucursal:</td>
                    <td class="auto-style10">
                        <asp:TextBox ID="txtBusqueda" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style16">
                        <asp:Button ID="btnFiltrar" runat="server" Text="Filtrar" OnClick="btnFiltrar_Click" Height="25px" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnMostrartodos" runat="server" Height="25px" Text="Mostrar todos" />
                    </td>
                    <td class="auto-style12">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:GridView ID="gvTabla" runat="server">
                        </asp:GridView>

                    </td>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style15">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
