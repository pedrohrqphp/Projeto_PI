// Funções Login
function matriz(){
    var dados = [
        {id:1, login:"Will", senha:1315},
        {id:2, login:"Black", senha:1111},
        {id:3, login:"Sandra", senha:2020}    
    ]

    return dados

}
function login(email,pass){

    const db = matriz()
    
    var encontrado = false;
    for (var i = 0; i < db.length; i++) {
      if (db[i].login == email && db[i].senha == pass) {
        encontrado = true;
        break;
      }
    }
    if (encontrado == false) {
        alert("Email ou senha inválidos")
        
      } else {
        alert("Login bem-sucedido!")
      }
    
}
// Funções Cadastro
function cadastro(email,pass){
  //A Função não foi completamente implementada o alert abaixo serve apenas para testar se a função foi chamada 
  alert("Teste cadastro" + "|" + email + "|" + pass)
}

function passver(email, pass, pass1) {
  if (pass !== pass1) {
    alert("As senhas não coincidem")
  } else {
    cadastro(email, pass)
  }
}


