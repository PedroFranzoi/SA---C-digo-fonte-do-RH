Algoritmo "RH"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Antonio Carlos Nicolodi
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 18/11/2024
//Registro de informa��es de funcionario
tipo
   dadosFuncionarios = registro
      nome, cargo, localNascimento, genero, Email, endereco: caractere
      idade, salario, dataNascimento, telefone: inteiro
   fimregistro
Var
   // Se��o de Declara��es das vari�veis
   informacaoFuncionario: vetor[0..99] de dadosFuncionarios

   codigo, respostaCodigo, permissao, mensagemCodigo, mensagemAlterar, mensagemEnviada: inteiro
   mensagemAlteracao, edicao: caractere


   //Procedimento para o usuario com permiss�o poder editar as informa��es
procedimento edicaoRH()
var
   editarRH, continuarEditando, quantidadeFuncionarios, t, verLista, i, desejoEdicao: inteiro
   continuarRH, permissaoAlterar: inteiro
   troca: caractere
inicio
   repita
      //Ver o que o usuario quer fazer
      escreval("O que deseja fazer?")
      escreval("Incluir funcionario - 1")
      escreval("Editar informa��es de funcionario - 2")
      escreval("Excluir funcionario - 3")
      escreval("Ver mensagem de funcionario - 4")
      leia(editarRH)

      escolha editarRH
         //Adicionar funcionario
      caso 1
         repita
            quantidadeFuncionarios <- quantidadeFuncionarios + 1
            escreval("Digite o nome do funcionario")
            leia(informacaoFuncionario[t].nome)
            escreval("Digite o cargo do funcionario")
            leia(informacaoFuncionario[t].cargo)
            escreval("Digite o local de nascimento do funcionario")
            leia(informacaoFuncionario[t].localNascimento)
            escreval("Digite o g�nero do funcionario")
            leia(informacaoFuncionario[t].genero)
            escreval("Digite o E-mail do funcionario")
            leia(informacaoFuncionario[t].Email)
            escreval("Digite o endere�o do funcionario")
            leia(informacaoFuncionario[t].endereco)
            escreval("Digite a idade do funcionario")
            leia(informacaoFuncionario[t].idade)
            escreval("Digite o sal�rio do funcionario")
            leia(informacaoFuncionario[t].salario)
            escreval("Digite a data de nascimento do funcionario")
            leia(informacaoFuncionario[t].dataNascimento)
            escreval("Digite o telefone do funcionario")
            leia(informacaoFuncionario[t].telefone)
            t <- t + 1
            escreval("Deseja colocar mais um funcionario ou sair?")
            escreval("Para sair aperte '1', para continuar editando aperte '2'")
            leia(continuarEditando)
         ate (continuarEditando = 1) ou (quantidadeFuncionarios = 100)
         //Editar informa��o de funcionario
      caso 2
         escreval("Qual funcionario deseja editar?")
         escreval("Para var a lista de funcionarios aperte '1'")
         leia(verLista)
         se verLista = 1 entao
            para i de 0 ate 99 faca
               se informacaoFuncionario[i].nome <> "" entao
                  escreval(i,"-", informacaoFuncionario[i].nome)
               fimse
            fimpara
         fimse
         escreval("---------------")
         escreval("Digite o numero do funcionario que deseja editar")
         leia(edicao)
         repita
            escreval("---------------")
            escreval("O que deseja editar do funcionario?")
            escreval("Nome - 1")
            escreval("Cargo - 2")
            escreval("Local de nascimento - 3")
            escreval("G�nero - 4")
            escreval("E-mail - 5")
            escreval("Endere�o - 6")
            escreval("Idade - 7")
            escreval("Sal�rio - 8")
            escreval("Data de nascimento - 9")
            escreval("Telefone - 10")
            leia(desejoEdicao)
            escolha desejoEdicao
               //Editar as informa��es dos funcionarios
            caso 1
               escreval("O atual �:", informacaoFuncionario[edicao].nome, " para qual deseja trocar?")
               leia(troca)
               informacaoFuncionario[edicao].nome <- troca
            caso 2
               escreval("O atual �:", informacaoFuncionario[edicao].cargo, " para qual deseja trocar?")
               leia(troca)
               informacaoFuncionario[edicao].cargo <- troca
            caso 3
               escreval("O atual �:", informacaoFuncionario[edicao].localNascimento, " para qual deseja trocar?")
               leia(troca)
               informacaoFuncionario[edicao].localNascimento <- troca
            caso 4
               escreval("O atual �:", informacaoFuncionario[edicao].genero, " para qual deseja trocar?")
               leia(troca)
               informacaoFuncionario[edicao].genero <- troca
            caso 5
               escreval("O atual �:", informacaoFuncionario[edicao].Email, " para qual deseja trocar?")
               leia(troca)
               informacaoFuncionario[edicao].Email <- troca
            caso 6
               escreval("O atual �:", informacaoFuncionario[edicao].endereco, " para qual deseja trocar?")
               leia(troca)
               informacaoFuncionario[edicao].endereco <- troca
            caso 7
               escreval("O atual �:", informacaoFuncionario[edicao].idade, " para qual deseja trocar?")
               leia(troca)
               informacaoFuncionario[edicao].idade <- troca
            caso 8
               escreval("O atual �:", informacaoFuncionario[edicao].salario, " para qual deseja trocar?")
               leia(troca)
               informacaoFuncionario[edicao].salario <- troca
            caso 9
               escreval("O atual �:", informacaoFuncionario[edicao].dataNascimento, " para qual deseja trocar?")
               leia(troca)
               informacaoFuncionario[edicao].dataNascimento <- troca
            caso 10
               escreval("O atual �:", informacaoFuncionario[edicao].telefone, " para qual deseja trocar?")
               leia(troca)
               informacaoFuncionario[edicao].telefone <- troca
            fimescolha

            escreval("Deseja alterar mais alguma informa��o?")
            escreval("Se sim digite '1'")
            escreval("Para parar digite '2'")
            leia(continuarEditando)
         ate continuarEditando = 2
         //Excluir funcionario
      caso 3
         escreval("Qual funcionario deseja excluir?")
         escreval("Para var a lista de funcionarios aperte '1'")
         leia(verLista)
         se verLista = 1 entao
            para i de 0 ate 99 faca
               se informacaoFuncionario[i].nome <> "" entao
                  escreval(i,"-", informacaoFuncionario[i].nome)
               fimse
            fimpara
         fimse
         escreval("---------------")
         escreval("Digite o numero do funcionario que deseja excluir")
         leia(edicao)
         informacaoFuncionario[edicao].nome <- ""
         informacaoFuncionario[edicao].idade <- 0
         informacaoFuncionario[edicao].cargo <- ""
         informacaoFuncionario[edicao].Email <- ""
         informacaoFuncionario[edicao].localNascimento <- ""
         informacaoFuncionario[edicao].endereco <- ""
         informacaoFuncionario[edicao].idade <- 0
         informacaoFuncionario[edicao].salario <- 0
         informacaoFuncionario[edicao].dataNascimento <- 0
         informacaoFuncionario[edicao].telefone <- 0
         //Alterar as informa��es dos funcionarios pela mensagem que eles enviaram
      caso 4
         se mensagemEnviada = 1 entao
            escreval("Voc� tem a mensagem de um funcionario")
            escreval("Ele deseja alterar uma informa��a, esses s�o os dados dele:")
            escreval("C�digo de funcionario: ", mensagemCodigo)
            escreval("Ele deseja alterar a informa��o: ", mensagemAlterar)
            escreval("A altera��o desejada � para: ", mensagemAlteracao)
            escreval("Para alterar as informa��e digite '1'")
            leia(permissaoAlterar)

            se permissaoAlterar = 1 entao
               escolha mensagemAlterar

               caso 1
                  informacaoFuncionario[mensagemCodigo].nome <- mensagemAlteracao

               caso 2
                  informacaoFuncionario[mensagemCodigo].genero <- mensagemAlteracao

               caso 3
                  informacaoFuncionario[mensagemCodigo].Email <- mensagemAlteracao

               caso 4
                  informacaoFuncionario[mensagemCodigo].endereco <- mensagemAlteracao

               caso 5
                  informacaoFuncionario[mensagemCodigo].telefone <- mensagemAlteracao
               fimescolha
               escreval("As altera��es foram feitas")
               mensagemEnviada <- 0
            fimse
         fimse
         se mensagemEnviada <> 1 entao
            escreval("Voc� n�o tem mensagens no momento")
         fimse
      fimescolha

      escreval("Deseja fazer mais alguma coisa?")
      escreval("Se sim digite '1'")
      escreval("Se n�o digite '2'")
      leia(continuarRH)
   ate continuarRH = 2


fimprocedimento


//Procedimento para o usuario sem permiss�o poder ver suas informa��es
procedimento funcionarioSemPermissao()
var
   desejaAlterar, continuar, alteracao, codigoFuncionario: inteiro
   respostaAlteracao: caractere

inicio
   //Permitir que o usuario veja as suas informa��es
   escreval("Bom dia, digite seu codigo de funcionario para ver seus dados")
   leia(codigoFuncionario)

   escreval(informacaoFuncionario[codigoFuncionario].nome)
   escreval(informacaoFuncionario[codigoFuncionario].cargo)
   escreval(informacaoFuncionario[codigoFuncionario].localNascimento)
   escreval(informacaoFuncionario[codigoFuncionario].genero)
   escreval(informacaoFuncionario[codigoFuncionario].Email)
   escreval(informacaoFuncionario[codigoFuncionario].endereco)
   escreval(informacaoFuncionario[codigoFuncionario].idade)
   escreval(informacaoFuncionario[codigoFuncionario].salario)
   escreval(informacaoFuncionario[codigoFuncionario].dataNascimento)
   escreval(informacaoFuncionario[codigoFuncionario].telefone)
   //Permitir que o funcionario mande mensagem para o RH pedindo que algumas informa��es sejam alteradas
   escreval("---------------")
   escreval("Deseja alterar alguma informa��o?")
   escreval("Sim - 1")
   escreval("N�o - 2")
   leia(desejaAlterar)
   escolha(desejaAlterar)

   caso 1
      escreval("Qual das suas informa��es voc� deseja alterar(s� � possivel alterar uma informa��o por vez)")
      escreval("1 - nome")
      escreval("2 - genero")
      escreval("3 - Email")
      escreval("4 - endereco")
      escreval("5 - telefone")
      leia(alteracao)
      escolha alteracao
      caso 1


      fimescolha

      escreval("-----------")
      escreval("Para o que voc� deseja alterar essa informa��o")
      leia(respostaAlteracao)

      mensagemCodigo <- codigoFuncionario
      mensagemAlterar <- alteracao
      mensagemAlteracao <- respostaAlteracao
      mensagemEnviada <- 1

   caso 2
      escreval("Deseja continuar usando o programa?")
      escreval("Sim - 1")
      escreval("N�o - 2")
      leia(continuar)

   fimescolha
fimprocedimento


Inicio
   // Se��o de Comandos, procedimento, fun��es, operadores, etc...
   //Codigo de permiss�o para mexer no RH
   codigo <- 1234
   repita
      escreval("Bem vindo ao RH da WEG, aqui voc� pode ver seus dados de funcionario.")
      repita
         //Ver se o funcionario tem permiss�o para mexer no RH
         escreval("Voc� � um funcionario com permiss�o ou n�o?")
         escreval("Sim - 1")
         escreval("N�o - 2")
         escreval("Desejo sair - 3")
         leia(permissao)

         //Testar se o funcionario tem permiss�o para mexer no RH
         se permissao = 1 entao
            escreval("Digite o codigo para ter certeza que voc� tem permiss�o")
            leia(respostaCodigo)
            se respostaCodigo <> codigo entao
               escreval("Voc� n�o tem permiss�o, tente novamante")
            fimse
         fimse
      ate (respostaCodigo = codigo) ou (permissao = 2) ou (permissao = 3)

      se (respostaCodigo = codigo) e (permissao <> 2) e (permissao <> 3) entao
         edicaoRH()
      fimse

      se permissao = 2 entao
         funcionarioSemPermissao()
      fimse
   ate permissao = 3
Fimalgoritmo