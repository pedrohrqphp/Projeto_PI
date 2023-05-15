// Funções Login
function matriz(){

    var dados = [
        {id:1, login:"Will", senha:1315},
        {id:2, login:"Black", senha:1111},
        {id:3, login:"Sandra", senha:2020}    
    ]
    
    console.log(dados)

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
    window.location.href = "index.html"
    alert("Login bem-sucedido!")
  }
}

// Funções Cadastro
function cadastro(email, pass){
  var email = document.getElementById("email").value
  var senha = document.getElementById("pass").value

  var db = matriz()
  var id = db.length + 1

  db.push({id:id, login:email, senha:senha})
  console.log(db)

  alert("Cadastro realizado com sucesso!")
}

function passver(email, pass, pass1) {
  if (pass !== pass1) {
    alert("As senhas não coincidem")
  } else {
    cadastro(email, pass)
  }
}