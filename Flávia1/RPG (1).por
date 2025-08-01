programa {
  inclua biblioteca Util-->u
  funcao inicio() {
    cadeia nome
    cadeia ir
    escreva("Muito boa noite, jogador! Antes de começar, insira o nome do seu personagem: ") 
    leia(nome)
    escreva("\nCerto, ", nome, "!\n") 
    u.aguarde(1000)
    escreva("\nEm uma noite, você estava navegando pela internet buscando maneiras de ganhar dinheiro fácil, \ne uma proposta tentadora se mostra interessante, um Escape room com um prêmio no valor de R$ 100.000.\n") 
    u.aguarde(2000)
    escreva("\nA próxima campanha irá acontecer amanhã às 20h, em uma vila abandonada de São Paulo. Você vai? (sim/nao): ")
    leia(ir)
    se(ir=="nao"){
      escreva("\n🎉Você não se arriscou e sobreviveu!🎉\n")
    }senao{
      escreva("\n--NO DIA SEGUINTE--\n")
    u.aguarde(1000)
    escreva("\nEntrando em contato com os organizadores, você é instruído a ir para um prédio abandonado em uma área isolada adentrando a mata. \nO local é estranho. ",nome,", você tem certeza que quer ir?(sim/nao): ")
    leia(ir)
    se(ir=="nao"){
      escreva("\n🎉Você foi pra casa ileso!🎉\n")
   }senao{
     escreva("\nChegando na mata, a escuridão toma conta dos arredores, ruídos parecem vir de todos os lados, você sente uma presença entre as árvores. \nHá algo ali além de você?\n")
     u.aguarde(7000)
     escreva("\nAntes que você pudesse procurar aquilo que te perseguia, algo bate na sua cabeça... \n")
     u.aguarde(4000)
     escreva("\nApós horas inconsciente, você enfim acorda, olha ao redor e se percebe em uma sala com um design futurista, todas as paredes são feitas de aço, \nno canto esquerdo superior a uma televisão mais ao alto, na parede inferior há uma caixa grande fechada e a sua direita também \nhá uma caixa um pouco maior com um teclado e uma tela. Lá haviam mais 3 pessoas totalmente desconhecidas. \nApós minutos confusos, a tela se liga e uma voz é escutada por todos.\n")
     u.aguarde(3000)
     escreva("\n— Bem vindos, jogadores. — Na tela a um estranho símbolo jamais visto por você, a pessoa falando é um idoso grisalho de barba comprida e bigode.") 
     u.aguarde(2000)
     escreva("\n— Vocês todos aqui, estão com um propósito, ganhar o prêmio no final.")

     }
    }
  }
}