programa {
  funcao inicio() {
     // Declaração de variáveis
    inteiro personagem ,numero , opcao
   inteiro  vida=5 , Cogumelos=1 , usosFlorFogo=2
    logico casteloBloqueado = verdadeiro

       escreva("\n          SUPER MARIO: O RPG DAS ESCOLHAS\n ")
      escreva("O sol brilha sobre os Campos Verdes do Reino Cogumelo, onde o vento sopra suave entre as colinas e os blocos de moedas reluzem à distância.\n Tudo parecia tranquilo... até agora. Bowser, o rei dos Koopas, agiu mais uma vez! Com um exército de Goombas, Koopas Troopas e Shy Guys,\n ele invadiu o Castelo da Peach e sequestrou a princesa,  deixando o reino em caos. Agora, cabe a você, um herói destemido, reunir coragem, aliados \ne poder para enfrentar os desafios à frente!\n")
      escreva("    Sua missão é salvar o Reino Cogumelo! \n\n")

      //escolha dos personagens 
       escreva("Escolha seus personagens:\n")
      escreva("1 -Mario (Equilibrado)\n")
      escreva("2 -Luigi (Defensivo)\n")
      escreva("3 -Yoshi (Mágica)\n")
      escreva("Digite o número do personagens: ")
      leia(personagem)
    

     
       escreva("\n Você escolheu: ")
      se ( personagem==1)
      {
     escreva("Mario-Equilibrado\n")
     
      }
       se ( personagem==2)
       {
       escreva("Luigi-Defensivo\n")
       
     se ( personagem==3)
       escreva ("Yoshi-Mágica\n")  
         
       }
      
// Mostrar inventário
      escreva("\nInventário inicial:\n")
      
      escreva("- ", Cogumelos, " Cogumelos de Cura\n")
      escreva("- 1 Flor de Fogo com ", usosFlorFogo , " usos\n")
      escreva("- Vida: ", vida, "\n")  
 

      // Primeiro inimigo
      escreva("\nVocê começou nos Campos Verdes do Reino Cogumelo...\n")
      escreva("Um Goomba selvagem aparece à sua frente!\n")
      escreva("O que deseja fazer?\n")
      escreva("1 - Atacar com salto\n")
      escreva("2 - Usar Flor de Fogo\n")
      escreva("3 - Fugir\n")
      escreva("Escolha uma opção (1, 2 ou 3): ")
      leia(opcao)
 
       // Processar escolha
       escolha (opcao)
       {
        caso 1:
         escreva("\nVocê pulou sobre o Goomba e o derrotou!\n")
         escreva("\nVocê segue sua jornada em direção ao castelo...\n")
       pare
       caso 2:
         escreva("\nVocê usou a Flor de Fogo e derrotou o Goomba! agora resta 1 Flor de Fogo")
         escreva("\nVocê segue sua jornada em direção ao castelo...\n")
       pare
       caso 3:
       escreva ("\nVocê escolheu Fugir...")
       escreva ("\nVocê Teve que achar outra forma de entrar no castelo fazendo com que a princesa esperar mais por Você")
       pare
       }
        escreva("\n\n--- CAMINHO DO CASTELO ---\n")
        escreva("Após derrotar o Goomba, você avista um caminho dividido:\n")
        escreva("1 - Floresta dos Lakitus (perigosa, mas rápida)\n")
        escreva("2 - Caverna dos Bob-ombs (escura, mas pode ter itens)\n")
        escreva("Escolha uma rota (1 ou 2): ")
        leia(opcao)

      se (opcao == 1) {
            escreva("\nVocê entrou na Floresta dos Lakitus!\n")
            escreva("Lakitu lança um Spinny! Tome cuidado!\n")
            escreva("Vida atual: ", vida, "\n")
            escreva("1 - Pular para desviar (50% de chance)\n")
            escreva("2 - Usar Cogumelo para recuperar vida (+2)\n")
            escreva("3 - Atacar com Flor de Fogo (certo)\n")
            escreva("Escolha: ")
            leia(opcao)
      }

         escolha (opcao) {
                caso 1:
                    numero = sorteia(1, 2)
                    se (numero == 1) {
                        escreva("\nVocê desviou e derrotou o Lakitu! Ganhou 1 moeda!\n")
                    } senao {
                        escreva("\nO Spinny te acertou! -1 de vida.\n")
                        vida--
                    }
         
         pare
                caso 2:
                    se (Cogumelos > 0) {
                        vida += 2
                        Cogumelos--
                        escreva("\nVocê recuperou +2 de vida! Vida atual: ", vida, "\n")
                    } senao {
                        escreva("\nVocê não tem Cogumelos!\n")
                    }
         pare
                caso 3:
                    se (usosFlorFogo > 0) {
                        escreva("\nFLOR DE FOGO! Lakitu foi derrotado. Usos restantes: ", usosFlorFogo - 1, "\n")
                        usosFlorFogo--
                    } senao {
                        escreva("\nSua Flor de Fogo acabou!\n")
                    }
                pare
        
            }se (opcao == 2) {
            escreva("\nVocê entrou na Caverna dos Bob-ombs!\n")
            escreva("Um Bob-omb está dormindo...\n")
            escreva("1 - Passar silenciosamente\n")
            escreva("2 - Roubar moeda dele (arriscado)\n")
            escreva("Escolha: ")
            leia(opcao)
            }
  se (opcao == 1) {
                escreva("\nVocê passou e encontrou 1 Cogumelo escondido!\n")
                Cogumelos++
            } senao {
                numero = sorteia(1, 3)
                se (numero == 1) {
                    escreva("\nO Bob-omb acordou e explodiu! -2 de vida.\n")
                    vida -= 2
                } senao {
                    escreva("\nVocê roubou 2 moedas e escapou!\n")
                }
            }
   
        escreva("\n\n--- PORTÃO DO CASTELO ---\n")
        escreva("Você chegou ao castelo, mas há um MASSIVO Koopa Troopa guardando!\n")
        escreva("Vida atual: ", vida, "\n")

     
        enquanto (vida > 0 e casteloBloqueado) {
            escreva("\n1 - Atacar (dano base)\n")
            escreva("2 - Usar item\n")
            escreva("3 - Tentar passar correndo\n")
            escreva("Escolha: ")
            leia(opcao)
            pare
        }
         escolha (opcao) {
                caso 1:
                    numero = sorteia(1, 3) // Dano aleatório
                    escreva("\nVocê atacou e causou ", numero, " de dano!\n")
                    se (numero == 3) {
                        escreva("KOOPA TROOPA DERROTADO! O portão está aberto!\n")
                        casteloBloqueado = falso
                    }
              
         caso 2:
                    escreva("\nItens disponíveis:\n")
                    escreva("1 - Cogumelo (", Cogumelos, ") | 2 - Flor de Fogo (", usosFlorFogo, ")\n")
                    leia(opcao)
                    se (opcao == 1 e Cogumelos > 0) {
                        vida += 2
                        Cogumelos--
                        escreva("+2 de vida! Vida: ", vida, "\n")
                    } senao se (opcao == 2 e usosFlorFogo > 0) {
                        escreva("ATAQUE DE FOGO! Koopa Troopa enfraquecido!\n")
                        usosFlorFogo--
                    } senao {
                        escreva("Item inválido ou acabou!\n")
                    }
                pare
          caso 3:
                    escreva("\nVocê correu e levou um casco na cabeça! -1 vida\n")
                    vida--
                pare
         }
        escreva("\n\n=== BATALHA FINAL ===\n")
        escreva("Bowser está furioso! \n")
        inteiro vidaBowser = 10
        
        enquanto (vida > 0 e vidaBowser > 0) {
            escreva("\nSua vida: ", vida, " | Bowser: ", vidaBowser, "\n")
            escreva("1 - Atacar (Dano: 2)\n")
            escreva("2 - Flor de Fogo (Dano: 3)\n")
            escreva("3 - Curar (Cogumelo: +2 vida)\n")
            escreva("Escolha: ")
            leia(opcao)

            escolha (opcao) {
                caso 1:
                    escreva("\nVocê atacou Bowser! -2 de vida.\n")
                    vidaBowser -= 2
                pare

                caso 2:
                    se (usosFlorFogo > 0) {
                        escreva("\nFOGO! -3 de vida no Bowser!\n")
                        vidaBowser -= 3
                        usosFlorFogo--
                    } senao {
                        escreva("\nSem Flor de Fogo!\n")
                    }
                pare

                caso 3:
                    se (Cogumelos > 0) {
                        escreva("\nVocê usou um Cogumelo! +2 vida.\n")
                        vida += 2
                        Cogumelos--
                    } senao {
                        escreva("\nSem Cogumelos!\n")
                    }
                pare
                }

           
            se (vidaBowser > 0) {
                numero = sorteia(1, 3) 
                escreva("\nBowser ataca! -", numero, " de vida.\n")
                vida -= numero

                // Final do jogo
        se (vida <= 0) {
            escreva("\nGAME OVER... Bowser venceu!\n")
        } senao {
            escreva("\nPARABÉNS! Você derrotou Bowser e salvou a Peach!\n")
            escreva("FIM DA JORNADA!\n")
        }
    
            }
        }
    }
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 7186; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */