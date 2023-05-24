// Funções Login
function matriz(){

  let dados
  
  if(JSON.parse(window.localStorage.getItem('tds')) != null){
    dados = JSON.parse(window.localStorage.getItem('tds'))
  }

  else {
    dados = [
      {id:1, login:"admin", senha:123}
    ]
  }  

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
    alert("Email ou senha inválidos");
  }

  else {
    alert("Login bem-sucedido!");
    window.open("index.html");
  }
}

// Funções Cadastro
function cadastro(email, pass){

  var email = document.getElementById("email").value
  var pass = document.getElementById("pass").value

  var db = matriz()

  db.push({id:Date.now(),login:email,senha:pass })

  let n = JSON.stringify(db);

  localStorage.setItem("tds", n);

  console.log(db)

  alert("Cadastro realizado com sucesso!")

  window.open('login.html')
}

function passver(email, pass, pass1) {

  if(pass !== pass1){
    alert("As senhas não coincidem")

  }else{
    cadastro(email, pass)
  }
}


document.addEventListener('DOMContentLoaded', function() {
  var btnTopo = document.getElementById('btn-topo');

  window.addEventListener('scroll', function() {
    if (window.pageYOffset > 100) {
      btnTopo.style.display = 'block';
    } else {
      btnTopo.style.display = 'none';
    }
  });

  btnTopo.addEventListener('click', function() {
    window.scrollTo({
      top: 0,
      behavior: 'smooth'
    });
  });
});
