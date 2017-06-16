<%@ Page Title="" Async="true" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="webKyrios.loginPage" EnableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <body>
    <div class="container">
	<div class="login-container">
        <div id="output"></div>
        <div class="avatar"></div>
            <div class="form-box">
                <form>
                    <asp:TextBox ID="txtuser" runat="server" placeHolder="Usuário"></asp:TextBox>
                    <asp:TextBox ID="txtsenha" runat="server" placeHolder="Senha"></asp:TextBox>
                    <br />
                    <br />
                    <asp:LinkButton ID="lbEntrar"  OnClick="lbEntrar_Click" CssClass="btn btn-info btn-block login" runat="server">Entrar</asp:LinkButton>
                </form>
            </div>
        </div>
   
</div>
</body>



</asp:Content>
