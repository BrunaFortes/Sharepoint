let strCPF = document.getElementById("CPF");
function TestaCPF(strCPF) {
    var Soma;
    var Resto;
    Soma = 0;
  if (strCPF == "00000000000") return false;

  for (i=1; i<=9; i++) Soma = Soma + parseInt(strCPF.substring(i-1, i)) * (11 - i);
  Resto = (Soma * 10) % 11;

    if ((Resto == 10) || (Resto == 11))  Resto = 0;
    if (Resto != parseInt(strCPF.substring(9, 10)) ) return false;

  Soma = 0;
    for (i = 1; i <= 10; i++) Soma = Soma + parseInt(strCPF.substring(i-1, i)) * (12 - i);
    Resto = (Soma * 10) % 11;

    if ((Resto == 10) || (Resto == 11))  Resto = 0;
    if (Resto != parseInt(strCPF.substring(10, 11) ) ) return false;
    return true;
}

$(document).ready(function(){

    // const form = document.querySelector("#myform");
    // form.addEventListener("submit",function(event){
    //     event.preventDefault();
    // });
   
    
    $("#btn-salvar").click(function(){

        var _title = $("#Title").val();
        var _cpf = $("#CPF").val();
        var _datadenascimento = $("#DatadeNascimento").val();
        var _email = $("#Email").val();

        var data = {
            Title: _title,
            CPF: _cpf,
            DatadeNascimento: _datadenascimento,
            Email: _email
        };
        try{
            console.log(data);
            addItem(data);
        } catch (e) {
            console.log(e);
        }
        

       addItem({
        Title: _title,
        CPF: _cpf,
        // DatadeNascimento: data.DatadeNascimento,
        Email: _email
       })
       console.log(data);

});
    
});
function getItem(){

    $pnp.sp.web.lists.getByTitle("Colaboradores").items.get().then(function(res){
        var html;
        res.map(function(value){
            html += `<tr><td>${value.Id}</td><td>${value.Title,value.CPF,value.DatadeNascimento,value.Email}</tr></td>`;
        })

        $("#myform").html(html);
        console.log();
    }).catch(function(err){
        console.log(err)

})

}
function addItem(item){
    $pnp.sp.web.lists.getByTitle("Colaboradores").items.add({
        Title: item.Title,
        CPF: item.CPF,
        DatadeNascimento: item.DatadeNascimento,
        Email: item.Email

      
    }).then(function(res){
        console.log(res);
        console.log(item);
      
    });
}
// document.getElementById('btn-salvar').addEventListener('click',()=>this.AddItem());
// function AddItem() 
// {
// $pnp.sp.web.lists.getByTitle('Colaboradores').items.add({
// Title : document.getElementById('Title')["value"],
// CPF : document.getElementById('CPF')["value"],
// Email : document.getElementById('Email')["value"]8.})
// alert("Os dados foram adicionados "+ document.getElementById('EmployeeName')["value"] + " Added !");
// } 