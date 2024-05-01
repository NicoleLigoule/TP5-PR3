<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AgregarSucursal.aspx.cs"
    Inherits="TP5_GRUPO_1.AgregarSucursal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 1141px;
        }
        .auto-style5 {
            height: 22px;
            width: 380px;
        }
        .auto-style7 {
            height: 29px;
            width: 342px;
        }
        .auto-style8 {
            height: 33px;
            width: 342px;
        }
        .auto-style13 {
            height: 33px;
            width: 380px;
        }
        .auto-style15 {
            font-size: xx-large;
            width: 342px;
        }
        .auto-style16 {
            width: 380px;
        }
        .auto-style22 {
            width: 342px;
        }
        .auto-style23 {
            font-size: xx-large;
            width: 342px;
            height: 22px;
        }
        .auto-style24 {
            width: 331px;
        }
        .auto-style25 {
            font-size: xx-large;
            width: 331px;
            height: 22px;
        }
        .auto-style26 {
            height: 29px;
            width: 331px;
        }
        .auto-style27 {
            height: 33px;
            width: 331px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            &nbsp;<table class="auto-style1">
                <tr>
                    <td class="auto-style22">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:LinkButton ID="lbAgregar" runat="server">Agregar Sucursal</asp:LinkButton>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;</td>
                    <td class="auto-style24">
                        <asp:LinkButton ID="lbListado" runat="server">Listado de Sucursales</asp:LinkButton>
                    </td>
                    <td class="auto-style24">
                        <asp:LinkButton ID="lbEliminarSucursal" runat="server">Eliminar sucursal</asp:LinkButton>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style15"><strong>GRUPO N°<br />
                    </strong></td>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style16">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style23">
                        <asp:Label ID="lblSucursal" runat="server" Font-Size="X-Large" Text="Agregar sucursal"></asp:Label>
                    </td>
                    <td class="auto-style25">
                    </td>
                    <td class="auto-style25">
                        &nbsp;</td>
                    <td class="auto-style5"></td>
                </tr>
                <tr>
                    <td class="auto-style7">Nombre Sucursal:&nbsp;&nbsp;&nbsp; </td>
                    <td class="auto-style26">
                        <asp:TextBox ID="txtAgregarSucursal" runat="server" Width="164px"></asp:TextBox>
                    </td>
                    <td class="auto-style26">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtAgregarSucursal">puto el que lee</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">Descripcion:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                    <td class="auto-style27">
                        <asp:TextBox ID="txtDescripcion" runat="server" Width="167px"></asp:TextBox>
                    </td>
                    <td class="auto-style27">
                        &nbsp;</td>
                    <td class="auto-style13"></td>
                </tr>
                <tr>
                    <td class="auto-style22">&nbsp;</td>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style16">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style22">&nbsp;</td>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style16">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style22">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                    <td class="auto-style24">
                        <asp:Button ID="btnAceptar" runat="server" Height="28px" OnClick="btnAceptar_Click" Text="Aceptar" Width="92px" />
                    </td>
                    <td class="auto-style24">
                        &nbsp;</td>
                    <td class="auto-style16">&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
