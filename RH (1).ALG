Algoritmo "RH"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 18/11/2024
//Registro de informações de funcionario
tipo
   dadosFuncionarios = registro
      nome, cargo, localNascimento, genero, Email, endereco: caractere
      idade, salario, dataNascimento, telefone: inteiro
   fimregistro
Var
   // Seção de Declarações das variáveis
   informacaoFuncionario: vetor[0..99] de dadosFuncionarios

   codigo, respostaCodigo, permissao, mensagemCodigo, mensagemAlterar, mensagemEnviada: inteiro
   mensagemAlteracao, edicao: caractere


   //Procedimento para o usuario com permissão poder editar as informações
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
      escreval("Editar informações de funcionario - 2")
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
            escreval("Digite o gênero do funcionario")
            leia(informacaoFuncionario[t].genero)
            escreval("Digite o E-mail do funcionario")
            leia(informacaoFuncionario[t].Email)
            escreval("Digite o endereço do funcionario")
            leia(informacaoFuncionario[t].endereco)
            escreval("Digite a idade do funcionario")
            leia(informacaoFuncionario[t].idade)
            escreval("Digite o salário do funcionario")
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
         //Editar informação de funcionario
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
            escreval("Gênero - 4")
            escreval("E-mail - 5")
            escreval("Endereço - 6")
            escreval("Idade - 7")
            escreval("Salário - 8")
            escreval("Data de nascimento - 9")
            escreval("Telefone - 10")
            leia(desejoEdicao)
            escolha desejoEdicao
               //Editar as informações dos funcionarios
            caso 1
               escreval("O atual é:", informacaoFuncionario[edicao].nome, " para qual deseja trocar?")
               leia(troca)
               informacaoFuncionario[edicao].nome <- troca
            caso 2
               escreval("O atual é:", informacaoFuncionario[edicao].cargo, " para qual deseja trocar?")
               leia(troca)
               informacaoFuncionario[edicao].cargo <- troca
            caso 3
               escreval("O atual é:", informacaoFuncionario[edicao].localNascimento, " para qual deseja trocar?")
               leia(troca)
               informacaoFuncionario[edicao].localNascimento <- troca
            caso 4
               escreval("O atual é:", informacaoFuncionario[edicao].genero, " para qual deseja trocar?")
               leia(troca)
               informacaoFuncionario[edicao].genero <- troca
            caso 5
               escreval("O atual é:", informacaoFuncionario[edicao].Email, " para qual deseja trocar?")
               leia(troca)
               informacaoFuncionario[edicao].Email <- troca
            caso 6
               escreval("O atual é:", informacaoFuncionario[edicao].endereco, " para qual deseja trocar?")
               leia(troca)
               informacaoFuncionario[edicao].endereco <- troca
            caso 7
               escreval("O atual é:", informacaoFuncionario[edicao].idade, " para qual deseja trocar?")
               leia(troca)
               informacaoFuncionario[edicao].idade <- troca
            caso 8
               escreval("O atual é:", informacaoFuncionario[edicao].salario, " para qual deseja trocar?")
               leia(troca)
               informacaoFuncionario[edicao].salario <- troca
            caso 9
               escreval("O atual é:", informacaoFuncionario[edicao].dataNascimento, " para qual deseja trocar?")
               leia(troca)
               informacaoFuncionario[edicao].dataNascimento <- troca
            caso 10
               escreval("O atual é:", informacaoFuncionario[edicao].telefone, " para qual deseja trocar?")
               leia(troca)
               informacaoFuncionario[edicao].telefone <- troca
            fimescolha

            escreval("Deseja alterar mais alguma informação?")
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
         //Alterar as informações dos funcionarios pela mensagem que eles enviaram
      caso 4
         se mensagemEnviada = 1 entao
            escreval("Você tem a mensagem de um funcionario")
            escreval("Ele deseja alterar uma informaçõa, esses são os dados dele:")
            escreval("Código de funcionario: ", mensagemCodigo)
            escreval("Ele deseja alterar a informação: ", mensagemAlterar)
            escreval("A alteração desejada é para: ", mensagemAlteracao)
            escreval("Para alterar as informaçõe digite '1'")
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
               escreval("As alterações foram feitas")
               mensagemEnviada <- 0
            fimse
         fimse
         se mensagemEnviada <> 1 entao
            escreval("Você não tem mensagens no momento")
         fimse
      fimescolha

      escreval("Deseja fazer mais alguma coisa?")
      escreval("Se sim digite '1'")
      escreval("Se não digite '2'")
      leia(continuarRH)
   ate continuarRH = 2


fimprocedimento


//Procedimento para o usuario sem permissão poder ver suas informações
procedimento funcionarioSemPermissao()
var
   desejaAlterar, continuar, alteracao, codigoFuncionario: inteiro
   respostaAlteracao: caractere

inicio
   //Permitir que o usuario veja as suas informações
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
   //Permitir que o funcionario mande mensagem para o RH pedindo que algumas informações sejam alteradas
   escreval("---------------")
   escreval("Deseja alterar alguma informação?")
   escreval("Sim - 1")
   escreval("Não - 2")
   leia(desejaAlterar)
   escolha(desejaAlterar)

   caso 1
      escreval("Qual das suas informações você deseja alterar(só é possivel alterar uma informação por vez)")
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
      escreval("Para o que você deseja alterar essa informação")
      leia(respostaAlteracao)

      mensagemCodigo <- codigoFuncionario
      mensagemAlterar <- alteracao
      mensagemAlteracao <- respostaAlteracao
      mensagemEnviada <- 1

   caso 2
      escreval("Deseja continuar usando o programa?")
      escreval("Sim - 1")
      escreval("Não - 2")
      leia(continuar)

   fimescolha
fimprocedimento


Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...
   //Codigo de permissão para mexer no RH
   codigo <- 1234
   repita
      escreval("Bem vindo ao RH da WEG, aqui você pode ver seus dados de funcionario.")
      repita
         //Ver se o funcionario tem permissão para mexer no RH
         escreval("Você é um funcionario com permissão ou não?")
         escreval("Sim - 1")
         escreval("Não - 2")
         escreval("Desejo sair - 3")
         leia(permissao)

         //Testar se o funcionario tem permissão para mexer no RH
         se permissao = 1 entao
            escreval("Digite o codigo para ter certeza que você tem permissão")
            leia(respostaCodigo)
            se respostaCodigo <> codigo entao
               escreval("Você não tem permissão, tente novamante")
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