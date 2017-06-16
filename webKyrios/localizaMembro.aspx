<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="localizaMembro.aspx.cs" Inherits="webKyrios.localizaMembro" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
                <div class="tab-pane active">
                    <div class="modal-dialog">
                        <div class="modal-content" onkeypress="javascript:return WebForm_FireDefaultButton(event, 'body_body_btnBuscaCli')">
	
                            <div class="modal-header">
                                <h3>
                                    <i class="fa fa-search fa-1-3x"></i>&nbsp;
                                    Pesquise pelo ID ou nome do membro
                                </h3>
                            </div>
                            <div class="modal-body">
                                <div class="form-group">
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="fa fa-id-card-o"></i></span>
                                        <asp:TextBox  ID="txtid" CssClass="form-control input-lg search-query"   placeholder="ID do membro" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group m-b-10 text-center">
                                    <h3>ou</h3>
                                </div>
                                <div class="form-group m-b-20">
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="fa fa-bars"></i></span>
                                        <asp:TextBox  ID="txtNomeMembro" CssClass="form-control input-lg search-query" placeholder="Nome do Membro" runat="server"></asp:TextBox>
                                    </div>
                                    <h3 class="p-t-5"><small>Exemplo: João da Silva</small></h3>
                                </div>
                            </div>
                            <div class="modal-footer">
                    <asp:LinkButton ID="lbLocalizar" OnClientClick="return ValidateForm()" OnClick="lbLocalizar_Click"  CssClass="btn btn-info btn-block login" runat="server">Localizar</asp:LinkButton>

                            </div>

                            

                            <div class="help-block with-errors"></div>
                            <span class="glyphicon form-control-feedback" aria-hidden="true"></span>
                        
                        </div>

                    </div>

                </div>


    <<asp:Repeater ID="Repeater1" runat="server">
       
        <HeaderTemplate>
                         <table class="table table-striped table-bordered table-hover">
                            <thead>
                                <tr>
                                    <th>Nome</th>
                                    <th>Data de Nascimento</th>
                                    <th>E-mail</th>
                                    <th>Telefone</th>
                                </tr>
                            </thead>

        </HeaderTemplate>
        <ItemTemplate>
                             <tbody>
                                 <tr>
                                     <th>
                                    <%# DataBinder.Eval(Container,"DataItem.nomeMembro")%>
                                     </th>
                                 </tr>
                            </tbody>
                        </table>
        </ItemTemplate>

  </asp:Repeater>


    
	
    <script>



        function ValidateForm() {
        
            if (document.getElementById("MainContent_txtNomeMembro").value == "" && (document.getElementById("MainContent_txtid").value == "") ) {
                swal({
                    title: 'Ops..',
                    text: 'o campo nome e obrigatorio',
                    type: 'error'
                });
                return false;
            }  else {
                return true;
            }
        };
        

    </script>

    
    

            
</asp:Content>
