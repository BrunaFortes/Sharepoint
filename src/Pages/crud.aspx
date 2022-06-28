<%@ Page Language="C#" masterpagefile="../_catalogs/masterpage/seattle.master" title="teste" inherits="Microsoft.SharePoint.WebPartPages.WebPartPage, Microsoft.SharePoint, Version=16.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" meta:progid="SharePoint.WebPartPage.Document" %>

<%@ Register tagprefix="SharePoint" namespace="Microsoft.SharePoint.WebControls" assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>

<asp:Content id="Content1" ContentPlaceholderID="PlaceHolderMain" runat="server">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="/sites/Poc/style library/custom/myapp/style.css">
    <style>
        *{
    box-sizing: border-box;
}
body, h1,h2,h3,h4,h5,h6{
    margin: 0;
    padding: 0;
    outline: 0;
}
:root {
    --menuWidth: 200px;
    --detailsWidth: 300px;
    --border: solid 10px;
  
  }
  
  html {
    box-sizing: border-box;
    font-size: 16px;
  }
  
  *,
  *:before,
  *:after {
    box-sizing: inherit;
  }
  
  body,
  h1,
  h2,
  h3,
  h4,
  h5,
  h6,
  p,
  ol,
  ul {
    margin: 0;
    padding: 0;
    font-weight: normal;
  }
  
  ol,
  ul {
    list-style: none;
  }
  
  img {
    max-width: 100%;
    height: auto;
  }

.col-6{
        -webkit-box-flex: 0;
        -ms-flex: 0 0 50%;
        flex: 0 0 50%;
        max-width: 50%;
        margin-top: 20px;
}
.container{
    margin-top: 40px;
    
}
.btn-primary {
    color: #fff;
    background-color: #007bff;
    border-color: #007bff;
    float: left;
    margin-left: 0;
 
}
.btn-danger {
    margin-left: 800px;
   
}
.titulo{
    margin-left: 800px;

}
  


    </style>

    <div class="container" style="margin:10 px;overflow-x:auto;">
        <div class="col-6" style="margin-top: 20px;">
            <form action="">
                <div class="row">
                    <input class="col-4 form-control" id="Title" type="text">
                    <button id="btn-salvar" class="btn btn-success btn-sm" type="button" >Salvar</button>
                </div>
            </form>
        </div>
       
        <table class="table table-striped" style="overflow-x:auto;">
            <thead class="titulo">
                <th>ID</th>
                <th>Titulo</th>
           
            </thead>
            <div class="elements">
                <tbody id="mytable">
                    <tr>
                        <td>Teste</td>
                    </tr>
                </tbody>
            
            
            </div>
        </table>
   
  
        <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Edite</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
                </div>
                <div class="modal-body">
                <div class="form-group">
                    <label for="">Edite</label>
                    <input type="hidden" class="form-control" name="Title" id="idItem">
                    <input type="text" class="form-control" name="Title" id="TitleEdit">
                 
                        
                </select>
                </div>
                </div>
                <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Fechar</button>
                <button type="button" id="btn-edit" class="btn btn-success">Salvar</button>
                </div>
            </div>
            </div>
        </div>
    





    <script src="/sites/Poc/style library/custom/myapp/pnp.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
    <script src="/sites/Poc/style library/custom/myapp/app.js"></script>


    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</asp:Content>