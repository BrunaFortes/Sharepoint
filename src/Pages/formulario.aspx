<%@ Page Language="C#" masterpagefile="../_catalogs/masterpage/seattle.master" title="Titulo_da_Pagina" inherits="Microsoft.SharePoint.WebPartPages.WebPartPage, Microsoft.SharePoint, Version=16.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" meta:progid="SharePoint.WebPartPage.Document" %>

<%@ Register tagprefix="SharePoint" namespace="Microsoft.SharePoint.WebControls" assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>

<asp:Content id="Content1" ContentPlaceholderID="PlaceHolderMain" runat="server">
<link rel="stylesheet" href="/sites/Poc/style library/custom/myapp/style_form.css">
  <section class="form-section">
    <h1>Formulário</h1>

    <div class="form-wrapper">
      
        <div class="row">
            <label for="Title">Nome</label>
            <input class="col-4 form-control" placeholder="Apenas letras" id="Title" type="text">
            
        </div>
        <div class="row">
            <label for="CPF">CPF</label>
            <input class="col-4 form-control" id="CPF" type="text" pattern="\d{3}\.\d{3}\.\d{3}-\d{2}" \ required>
        </div>
        <div class="row">
          <label for="DatadeNascimento">Data de Nascimento</label>
          <input class="col-4 form-control" id="DatadeNascimento" type="date" >
      </div>
      <div class="row">
            <label for="Email">Email</label>
            <input class="col-4 form-control" id="Email" type="email">
        </div>
      <button id="btn-salvar" class="btn btn-success btn-sm" type="button" >Salvar</button>
      
    </div>
  </section>
    <script src="/sites/Poc/style library/custom/myapp/pnp.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
    <script src="/sites/Poc/style library/custom/myapp/app_form.js"></script>


   
</asp:Content>