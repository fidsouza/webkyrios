<%@ Page Title=""  Language="C#" Async="true" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="cadmembro.aspx.cs" Inherits="webKyrios.cadmembro" EnableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
 
    <form id="frmcad" data-toggle="validator" role="form">
     <div class="container body-content" >
         <div class="row"></div>
         <div class="row">
             <div class="col-lg-2"></div>
             <div class="col-lg-8" style="top: 30px;">
                 <h3>
                    <span>Cadastro de Membro</span>
                </h3>
                 <div class="panel panel-default">
                     <div class="panel-body">
                         <div class="row">
                             <div class="col-md-3">
                                 <div class="col-md-12">
                                     <div class="form-group has-feedback">
                                         <label class="control-label" for="nome">Nome:</label>
                                         <div class="input-group">
                                             <span class="input-group-addon">
                                               <i class="fa fa-sign-in"></i>
                                            </span>
                                             <asp:TextBox  ID="txtnome" required="" CssClass="form-control" runat="server" style="width:3000px;" placeHolder="digite o nome completo..."></asp:TextBox>

                                         </div>
                                     </div>
                                 </div>
                             </div>
                         </div>
                         <div class="row">
                             <div class="col-md-12">
                                 <div class="col-md-6">
                                     <div class="form-group has-feedback">
                                         <label class="control-label" for="endereco">Cep:</label>
                                         <div class="input-group">
                                             <span class="input-group-addon">
                                               <i class="fa fa-sign-in"></i>
                                            </span>
                                          <asp:TextBox CssClass="form-control" ID="txtCep" placeHolder="insira o endereço" runat="server"  style="width:3000px;"></asp:TextBox>
                                         </div>
                                     </div>
                                 </div>
                                 <div class="col-md-6">
                                     <div class="form-group has-feedback">
                                         <label class="control-label" for="endereco">Endereço:</label>
                                         <div class="input-group">
                                             <span class="input-group-addon">
                                               <i class="fa fa-sign-in"></i>
                                            </span>
                                          <asp:TextBox CssClass="form-control" ID="txtEnder" placeHolder="insira o endereço" runat="server"  style="width:3000px;"></asp:TextBox>
                                         </div>
                                     </div>
                                 </div>
                             </div>
                         </div>
                         <div class="row">
                             <div class="col-md-3">
                                 <div class="col-md-12">
                                     <div class="form-group has-feedback">
                                         <label class="control-label">Bairro:</label>
                                         <div class="input-group">
                                             <span class="input-group-addon">
                                               <i class="fa fa-sign-in"></i>
                                            </span>
                                          <asp:TextBox CssClass="form-control" ID="txtbairro" placeHolder="insira o bairro" runat="server"  style="width:3000px;"></asp:TextBox>
                                         </div>
                                     </div>
                                 </div>
                             </div>
                         </div>
                         <div class="row">
                             <div class="col-md-3">
                                 <div class="col-md-12">
                                     <div class="form-group has-feedback">
                                         <label class="control-label">Cidade:</label>
                                         <div class="input-group">
                                             <span class="input-group-addon">
                                               <i class="fa fa-sign-in"></i>
                                            </span>
                                          <asp:TextBox CssClass="form-control" ID="txtcidade" placeHolder="insira a cidade" runat="server"  style="width:3000px;"></asp:TextBox>
                                         </div>
                                     </div>
                                 </div>
                             </div>
                         </div>
                         <div class="row">
                             <div class="col-md-3">
                                 <div class="col-md-12">
                                     <div class="form-group has-feedback">
                                         <label class="control-label">UF:</label>
                                         <div class="input-group">
                                             <span class="input-group-addon">
                                               <i class="fa fa-sign-in"></i>
                                            </span>
                                          <asp:TextBox CssClass="form-control" ID="txtuf" placeHolder="insira o estado" runat="server"  style="width:3000px;" MaxLength="2"></asp:TextBox>
                                         </div>
                                     </div>
                                 </div>
                             </div>
                         </div>
                         <div class="row">
                             <div class="col-md-3">
                                 <div class="col-md-12">
                                     <div class="form-group has-feedback">
                                         <label class="control-label" for="datanascimento">Data Nascimento:</label>
                                         <div class="input-group">
                                             <span class="input-group-addon">
                                               <i class="fa fa-sign-in"></i>
                                            </span>
                                          <asp:TextBox CssClass="form-control" required="" ID="txtdataNasc" placeHolder="insira a data de nascimento" runat="server"  style="width:3000px;"></asp:TextBox>
                                         </div>
                                     </div>
                                 </div>
                             </div>
                         </div>

                         <div class="row">
                             <div class="col-md-12">
                                 <div class="col-md-6">
                                     <div class="form-group has-feedback">
                                         <label class="control-label">Telefone Celular:</label>
                                         <div class="input-group">
                                             <span class="input-group-addon">
                                               <i class="fa fa-sign-in"></i>
                                            </span>
                                          <asp:TextBox CssClass="form-control" ID="txtCel" placeHolder="insira o telefone" runat="server"  style="width:3000px;"></asp:TextBox>
                                         </div>
                                     </div>
                                 </div>
                                  <div class="col-md-6">
                                     <div class="form-group has-feedback">
                                         <label class="control-label">Telefone Residencial:</label>
                                         <div class="input-group">
                                             <span class="input-group-addon">
                                               <i class="fa fa-sign-in"></i>
                                            </span>
                                          <asp:TextBox CssClass="form-control" ID="txtTelRes" placeHolder="insira o telefone" runat="server"  style="width:3000px;"></asp:TextBox>
                                             
                                         </div>
                                     </div>
                                 </div>
                             </div>
                         </div>
                         <div class="row">
                             <div class="col-md-3">
                                 <div class="col-md-12">
                                     <div class="form-group has-feedback">
                                         <label class="control-label">Email:</label>
                                         <div class="input-group">
                                             <span class="input-group-addon">
                                               <i class="fa fa-sign-in"></i>
                                            </span>
                                          <asp:TextBox CssClass="form-control" ID="txtEmail" placeHolder="insira o email" runat="server"  style="width:3000px;"></asp:TextBox>
                                         </div>
                                     </div>
                                 </div>
                             </div>
                         </div>
                         <div class="row">
                             <div class="col-md-6">
                                 <div class="col-md-12">
                                     <div class="form-group has-feedback">
                                         <label class="control-label">Sexo:</label>
                                         <div class="input-group">
                                             <span class="input-group-addon">
                                               <i class="fa fa-sign-in"></i>
                                            </span>
                                                 <asp:RadioButtonList  ID="Sexo" runat="server">
                                                     <asp:ListItem Value="Feminino" Text="Feminino">

                                                     </asp:ListItem>

                                                     <asp:ListItem Value="Masculino" Text="Masculino">

                                                     </asp:ListItem>
                                                 </asp:RadioButtonList>

                      
                                         </div>
                                     </div>
                                 </div>
                             </div>
                             
                         </div>
                         <div class="row">
                             <div class="col-md-3">
                                 <div class="col-md-12">
                                     <div class="form-group has-feedback">
                                         <label class="control-label">Batizado ?</label>
                                         <div class="input-group">
                                             <span class="input-group-addon">
                                               <i class="fa fa-sign-in"></i>
                                            </span>
                                             <asp:CheckBox ID="chkBatizado" runat="server" />
                                         </div>
                                     </div>
                                 </div>
                             </div>
                         </div>
        <asp:UpdatePanel ID="cadastrarUpdatePanel" runat="server">
            <ContentTemplate>
                
                   <div class="row">

                        <div class="form-group col-md-3"></div>
                            <div class="form-group col-md-6 text-right">
                                <hr />
                                <asp:LinkButton OnClick="btnCadastrar_Click" ID="btnCadastrar" CssClass="btn btn-default disable" Width="200px" Height="40px" runat="server">Cadastrar</asp:LinkButton>
                                   <asp:UpdateProgress  ID="UpdateProgress1" runat="server" AssociatedUpdatePanelID="cadastrarUpdatePanel">
                                             <ProgressTemplate>
                                                            <img class="text-left" alt="" src="loader.gif" />
                                             </ProgressTemplate>
                                    </asp:UpdateProgress>
                            </div>
                    </div>
            
            </ContentTemplate>
        </asp:UpdatePanel>
       
     



                     </div>
                 </div>
             </div>
         </div>
     </div>

 </form>



  <script type="text/javascript">




         jQuery(function ($) {
             $("#MainContent_txtCep").mask("99999-999");
             $("#MainContent_txtCel").mask("(099)99999-9999");
             $("#MainContent_txtTelRes").mask("(099)9999-9999");
      });


     

         $('#ctl01').validator({});



  </script> 
    
    


</asp:Content>
