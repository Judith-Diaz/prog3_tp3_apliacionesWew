<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ejercicio1b.aspx.cs" Inherits="WebApplication1.ejercicio1b"  %>
<!--lo que agregeg aca para que funcioanra el form por el tema del query, ya que estoy validando UnobtrusiveValidationMode="None"-->
<!DOCTYPE html>
<!--UnobtrusiveValidationMode="None"-->
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 318px;
        }
        .auto-style3 {
            width: 318px;
            height: 23px;
        }
        .auto-style4 {
            height: 23px;
        }
        .auto-style5 {
            width: 158px;
        }
        .auto-style6 {
            height: 23px;
            width: 158px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
         <!--<asp:ScriptManager runat="server"></asp:ScriptManager>     esto tube que agregar para que me funcione ele fomulario porque le faltaba lo delquuary y atambien agreggee algo mas arriba del todo, esto ba abajo del form -->
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5"><b>Localida</b></td>
                
                <td>&nbsp;</td>
                
                <td>&nbsp;</td>
                
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
              
                <td>
                    <asp:RegularExpressionValidator ID="rev_nombreLocalidad" runat="server" ControlToValidate="Txt_NombreLocalidad" ForeColor="#CC00FF" ValidationExpression="^\d{0,2}\s?([A-Za-z]+\s?)+$" ValidationGroup="grupo1">*la localidad esta mal ingresada </asp:RegularExpressionValidator>
                </td>
              
                <td>&nbsp;</td>
              
            </tr>
            <tr>
                <td class="auto-style2">Nombre de Localida:</td>
                <td class="auto-style5">
                    <asp:TextBox ID="Txt_NombreLocalidad" runat="server" ValidationGroup="grupo1"></asp:TextBox>
                </td>
              
                <td>
                    <asp:RequiredFieldValidator ID="rfv_nombreLocalidad" runat="server" ControlToValidate="Txt_NombreLocalidad" ForeColor="#CC00CC" ValidationGroup="grupo1">*Ingrese localidad</asp:RequiredFieldValidator>
                </td>
              
                <td>
                    &nbsp;</td>
              
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td class="auto-style5">
                    &nbsp;</td>
            
                <td>
                    <asp:Label ID="Lbl_errorNOmbreLOcalidadees" runat="server" ForeColor="#CC0099"></asp:Label>
                </td>
            
                <td>
                    &nbsp;</td>
            
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">
                    <asp:Button ID="Btn_GuardarLocalidad" runat="server" Text="Guardar localidad" OnClick="Btn_GuardarLocalidad_Click" ValidationGroup="grupo1" />
                </td>
            
                <td>
                    &nbsp;</td>
            
                <td>
                    &nbsp;</td>
            
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
        
                <td>&nbsp;</td>
        
                <td>&nbsp;</td>
        
            </tr>
            <tr>
                <td class="auto-style3"></td>
                <td class="auto-style6"><b>Usuario</b></td>
            
                <td class="auto-style4">&nbsp;</td>
            
                <td class="auto-style4">&nbsp;</td>
            
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
            
                <td>&nbsp;</td>
            
                <td>&nbsp;</td>
            
            </tr>
            <tr>
                <td class="auto-style2">Nombre usuario:</td>
                <td class="auto-style5">
                    <asp:TextBox ID="Txt_NombreUsuario" runat="server"></asp:TextBox>
                </td>
       
                <td>
                    &nbsp;</td>
       
                <td>
                    &nbsp;</td>
       
            </tr>
            <tr>
                <td class="auto-style2">Contraseña:</td>
                <td class="auto-style5">
                    <asp:TextBox ID="Txt_contraseña" runat="server"></asp:TextBox>
                </td>
         
                <td>
                    &nbsp;</td>
         
                <td>
                    &nbsp;</td>
         
            </tr>
            <tr>
                <td class="auto-style2">Repetir Contraseña: </td>
                <td class="auto-style5">
                    <asp:TextBox ID="Txt_repeCOntraseña" runat="server"></asp:TextBox>
                </td>
           
                <td>
                    &nbsp;</td>
           
                <td>
                    &nbsp;</td>
           
            </tr>
            <tr>
                <td class="auto-style2">Correo electrónico:</td>
                <td class="auto-style5">
                    <asp:TextBox ID="Txt_correo" runat="server"></asp:TextBox>
                </td>
             
                <td>
                    &nbsp;</td>
             
                <td>
                    &nbsp;</td>
             
            </tr>
            <tr>
                <td class="auto-style2">CP:</td>
                <td class="auto-style5">
                    <asp:TextBox ID="Txt_cp" runat="server"></asp:TextBox>
                </td>
      
                <td>
                    &nbsp;</td>
      
                <td>
                    &nbsp;</td>
      
            </tr>
            <tr>
                <td class="auto-style2">Localidad:</td>
                <td class="auto-style5">
                    <asp:DropDownList ID="Ddl_localidad" runat="server" Width="194px">
                    </asp:DropDownList>
                </td>
         
                <td>
                    &nbsp;</td>
         
                <td>
                    &nbsp;</td>
         
            </tr>
            <tr>
                <td class="auto-style3"></td>
                <td class="auto-style6"></td>
            
                <td class="auto-style4"></td>
            
                <td class="auto-style4"></td>
            
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">
                    <asp:Button ID="Btn_guardarUsuario" runat="server" Text="GuardarUsuario" />
                </td>
           
                <td>
                    &nbsp;</td>
           
                <td>
                    &nbsp;</td>
           
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
          
                <td>&nbsp;</td>
          
                <td>&nbsp;</td>
          
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Button ID="Btn_inicio" runat="server" Text="Ir al inicio .aspx" />
                </td>
                <td class="auto-style5">&nbsp;</td>
             
                <td>&nbsp;</td>
             
                <td>&nbsp;</td>
             
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
               
                <td>&nbsp;</td>
               
                <td>&nbsp;</td>
               
            </tr>
            </table>
        <div>
        </div>
    </form>
</body>
    
</html>
