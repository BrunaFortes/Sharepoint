function editItem(item){
    $pnp.sp.web.lists.getByTitle("Atividades").items.getById(item.Id).update({
        Title: item.Title,
        ListaId: item.idLookup
    }).then(function(resp){
        getItem();
    }).catch(function(err){
        console.log(err);
    })
}
$(document).ready(function(){

    getItem();
   
    
    $("#btn-salvar").click(function(){

        var title = $("#Title").val();

        addItem({
            Title: title
        });
    });
    $("#btn-edit").click(function(){
        
        editItem({
            Id: $("#idItem").val(),
            Title: $("#TitleEdit").val(),
            idLookup: $("#lookup").val()
        });
    });
    $(document).on("click", "#btn-get" ,function(){
        
        var Id = $(this).data("id");

        getItemById(Id);
        
    });
    $(document).on("click", "#btn-delete" ,function(){
        
        var Id = $(this).data("id");

        deleteItem(Id);
        
    });
    
});
function getItemById(id){
    $pnp.sp.web.lists.getByTitle("Atividades").items.getById(id).get().then(function(res){
        
        $("#idItem").val(res.Id);
        $("#TitleEdit").val(res.Title);

    }).catch(function(err){
        console.log(err);

    });
}

function getItem(){

    $pnp.sp.web.lists.getByTitle("Atividades").items.get().then(function(res){
        var html;
        res.map(function(value){
            html += `<tr><td>${value.Id}</td><td>${value.Title}</tr></td>
            <td>
            <button type="button" id="btn-get" data-id="${value.Id}" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">Editar
            </button>
            <button type="button" class="btn btn-danger" data-id="${value.Id}" id="btn-delete">Deletar</button>
            </td>
            </tr>`;

        })

        $("#mytable").html(html);
        console.log();
    }).catch(function(err){
        console.log(err)
})

}
function addItem(item){
    $pnp.sp.web.lists.getByTitle("Atividades").items.add({
        Title: item.Title
    }).then(function(res){
        getItem();
    });
}
function editItem(item){
    $pnp.sp.web.lists.getByTitle("Atividades").items.getById(item.Id).update({
        Title: item.Title,
        ListaId: item.idLookup
    }).then(function() {
        getItem();
    }).catch(function(err) {
        console.log(err);
    })
}
function deleteItem(id){
    $pnp.sp.web.lists.getByTitle("Atividades").items.getById(id).delete().then(function(res){
        console.log(res);
        alert("Item Deletado");
        getItem();
    }).catch(function(err){
        console.log(err);
    })
}