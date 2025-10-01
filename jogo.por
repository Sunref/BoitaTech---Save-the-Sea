programa
{
  funcao inicio()
  {
    
    escreva("=================================================\n")
    escreva("           SAVE THE SEA - TELA INICIAL           \n")
    escreva("=================================================\n")

    escreva("\nBem-vindo ao projeto Save the Sea!\n")
    escreva("Aqui você vai aprender lógica de programação")
    escreva(" enquanto cria um jogo educativo sobre o oceano.\n\n")

    cadeia animal
    inteiro saude = 50 // saúde inicial do animal
    inteiro pontos = 0
    inteiro opcao

    // ETAPA 1: ESCOLHA DO ANIMAL
    escreva("Escolha o animal marinho:\n")
    escreva("1 - Golfinho\n")
    escreva("2 - Baleia\n")
    escreva("3 - Tartaruga\n")
    escreva("4 - Tubarão\n")
    escreva("0 - Sair\n")
    leia(opcao)

    se (opcao == 0){
      escreva("Saindo... Obrigado por jogar!")
      retorne
    }
    
    escolha (opcao)
    {
      caso 1:
        animal = "Golfinho"
        pare
      caso 2:
        animal = "Baleia"
        pare
      caso 3:
        animal = "Tartaruga"
        pare
      caso 4:
        animal = "Tubarão"
        pare
      caso contrario: 
        animal = "Animal Desconhecido"
    }

    escreva("Você escolheu: " + animal + "\n")
    escreva("Saúde inicial: " + saude + "\n\n")

    // ETAPA 2 E 3: QUIZ E SIMULAÇÃO (5 perguntas)
    para (inteiro i = 1; i <= 5; i++)
    {
      escreva("--- Rodada " + i + " de 5 ---\n")
      
      // Lógica para a PERGUNTA 1
      se (i == 1) {
        escreva("As mudanças climáticas são um dos principais problemas ambientais do mundo, afetando pessoas, animais e plantas. Elas trazem diversas consequências negativas, como:\n")
        escreva("1- aumento da temperatura do globo terrestre.\n")
        escreva("2- diminuição dos níveis dos oceanos.\n")
        escreva("3- aumento da urbanização.\n")
        escreva("4- crescimento da industrialização.\n")
        escreva("5- diminuição dos gases de efeito estufa.\n")
        leia(opcao)

        se (opcao == 1){
          saude = saude + 25
          pontos = pontos + 30
          escreva("Resposta correta! Sua ação ajudou o animal.\n")
        } senao {
          saude = saude - 10
          escreva("Resposta incorreta! Isso prejudicou o animal.\n")
        }
      }
      
      // Lógica para a PERGUNTA 2
      senao se (i == 2) {
        escreva("A respeito da vida marinha, assinale a correta:\n")
        escreva("1- Jogar lixo nos oceanos não prejudica os animais marinhos, pois eles se adaptam.\n")
        escreva("2- A preservação da vida marinha depende apenas de pescadores e cientistas.\n")
        escreva("3- O uso excessivo de plástico ameaça a vida marinha, pois muitos animais o confundem com alimento.\n")
        escreva("4- A pesca predatória é importante para o equilíbrio ecológico dos oceanos.\n")
        leia(opcao)

        se (opcao == 3){
          saude = saude + 25
          pontos = pontos + 30
          escreva("Resposta correta! Sua ação ajudou o animal.\n")
        } senao {
          saude = saude - 10
          escreva("Resposta incorreta! Isso prejudicou o animal.\n")
        }
      }

      // Lógica para a PERGUNTA 3
      senao se (i == 3) {
        escreva("A acidificação dos oceanos, causada pelo excesso de gás carbônico, pode prejudicar a formação de conchas e esqueletos de animais marinhos?\n")
        escreva("1- Sim\n")
        escreva("2- Não\n")
        leia(opcao)
        
        se (opcao == 1){
          saude = saude + 25
          pontos = pontos + 30
          escreva("Resposta correta! Sua ação ajudou o animal.\n")
        } senao {
          saude = saude - 10
          escreva("Resposta incorreta! Isso prejudicou o animal.\n")
        }
      }
      
      // Lógica para a PERGUNTA 4
      senao se (i == 4) {
        escreva("A introdução de espécies exóticas nos oceanos, resultado do transporte marítimo, não gera desequilíbrios nos ecossistemas marinhos nativos?\n")
        escreva("1- Sim\n")
        escreva("2- Não\n")
        leia(opcao)
        
        se (opcao == 2){
          saude = saude + 25
          pontos = pontos + 30
          escreva("Resposta correta! Sua ação ajudou o animal.\n")
        } senao {
          saude = saude - 10
          escreva("Resposta incorreta! Isso prejudicou o animal.\n")
        }
      }
      
      // Lógica para a PERGUNTA 5
      senao { // ou senao se (i == 5)
        escreva("A poluição sonora causada por embarcações pode interferir na comunicação, navegação e reprodução de animais marinhos como golfinhos e baleias?\n")
        escreva("1- Sim\n")
        escreva("2- Não\n")
        leia(opcao)
        
        se (opcao == 1){
          saude = saude + 25
          pontos = pontos + 30
          escreva("Resposta correta! Sua ação ajudou o animal.\n")
        } senao {
          saude = saude - 10
          escreva("Resposta incorreta! Isso prejudicou o animal.\n")
        }
      }
      
      // Limite máximo de saúde
      se (saude > 100){
        saude = 100
      }
      escreva("Saúde atual: " + saude + " | Pontos: " + pontos + "\n\n")
    }

    // ETAPA 4: RESULTADO FINAL
    escreva("=== RESULTADO FINAL ===\n")
    escreva("Animal escolhido: " + animal + "\n")
    escreva("Saúde final: " + saude + "\n")
    escreva("Pontos totais: " + pontos + "\n")

    se (saude >= 80){
      escreva("O animal foi salvo e pode voltar ao mar!\n")
    }
    senao se (saude >= 50){
      escreva("O animal está em recuperação, precisa de mais cuidados!\n")
    }
    senao{
      escreva("O animal está em risco! Foram necessárias mais ações.\n")
    }
    
    escreva("Obrigado por jogar e aprender sobre conservação!\n")
    retorne
  }
}