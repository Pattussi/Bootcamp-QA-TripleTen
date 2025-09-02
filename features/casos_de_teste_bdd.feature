Feature: Rolagem do mapa

  Scenario: Rolagem do mapa
    Given Abra o aplicativo Urban Routes
    When Role o mapa para cima e para baixo.
    Then O mapa se move. Todos os objetos são exibidos conforme o design.


Feature: O endereço é removido após limpar o campo "Para"

  Scenario: O endereço é removido após limpar o campo "Para"
    Given Abra o aplicativo Urban Routes. O campo "Para" está preenchido
    When Clique na cruz no campo "Para".
    Then O campo está vazio. O endereço inserido anteriormente foi removido do campo. O pino correspondente some do mapa.


Feature: Os objetos 3D são exibidos

  Scenario: Os objetos 3D são exibidos
    Given Abra o aplicativo Urban Routes
    When Amplie com o zoom um objeto 3D várias vezes (por exemplo: Los Angeles International Airport LAX).
    Then O objeto é mapeado como um objeto 3D.


Feature: O modo de visualização em tela cheia é ativado ao clicar no botão de modo de visualização em tela cheia

  Scenario: O modo de visualização em tela cheia é ativado ao clicar no botão de modo de visualização em tela cheia
    Given Abra o aplicativo Urban Routes. O modo de visualização em tela cheia não está ativado
    When Clique no botão de modo de visualização em tela cheia.
    Then O modo de visualização em tela cheia é ativado e as abas do navegador são ocultadas. Todos os objetos da interface do aplicativo estão no lugar. O nível de zoom não muda.


Feature: O modo de visualização em tela cheia é desativado ao clicar no botão de modo de visualização em tela cheia novamente

  Scenario: O modo de visualização em tela cheia é desativado ao clicar no botão de modo de visualização em tela cheia novamente
    Given Abra o aplicativo Urban Routes. Ative o modo de visualização em tela cheia
    When Clique no botão de modo de visualização em tela cheia.
    Then O modo de visualização em tela cheia é desativado e as abas do navegador voltam a aparecer. Todos os objetos da interface do mapa estão no lugar. O nível de zoom não muda.


Feature: O modo Relevo é ativado ao clicar no botão de modo Relevo

  Scenario: O modo Relevo é ativado ao clicar no botão de modo Relevo
    Given Abra o aplicativo Urban Routes
    When Aproxime o cursor do botão do modo Mapa.
    Then O campo está preenchido. O mapa é exibido no modo Relevo e corresponde ao design.
    When Aproxime o cursor do botão do modo Relevo.
    When Clique no botão do modo Relevo.


Feature: O modo Satélite é ativado ao clicar no botão de Satélite

  Scenario: O modo Satélite é ativado ao clicar no botão de Satélite
    Given Abra o aplicativo Urban Routes
    When Aproxime o cursor do botão do modo Satélite.
    Then O mapa é exibido em modo satélite. A visualização não apresenta problemas perceptíveis.
    When Clique no botão Satélite.


Feature: Os edifícios são exibidos ao ampliá-los

  Scenario: Os edifícios são exibidos ao ampliá-los
    Given Abra o aplicativo Urban Routes
    When Dê zoom em um prédio.
    Then O prédio é exibido conforme o design.


Feature: As estações de metrô são exibidas ao ampliá-las

  Scenario: As estações de metrô são exibidas ao ampliá-las
    Given Abra o aplicativo Urban Routes
    When Aumente o zoom em uma estação de Metrô, LA (exemplo: Downtown Long Beach Station).
    Then O ícone do metrô é exibido.


Feature: Os pontos de referência são exibidos ao ampliá-los

  Scenario: Os pontos de referência são exibidos ao ampliá-los
    Given Abra o aplicativo Urban Routes
    When Aumente o zoom em um ponto de referência (exemplo: Los Angeles County Museum of Art).
    Then O ícone do ponto de referência é exibido.


Feature: Os parques são exibidos ao ampliá-los

  Scenario: Os parques são exibidos ao ampliá-los
    Given Abra o aplicativo Urban Routes
    When Aumente o zoom em um parque da cidade (exemplo: Vista Hermosa Natural Park).
    Then O ícone do parque é exibido.


Feature: Zoom no mapa

  Scenario: Zoom no mapa
    Given O aplicativo Urban Routes não está aberto
    When Abra o aplicativo Urban Routes
    Then O nível de zoom muda em um valor. Todos os objetos são exibidos conforme o design.
    When Clique no botão de navegação localizado no canto inferior direito do mapa
    When Clique no botão de mais (+).


Feature: As informações de um objeto são exibidas ao clicar em um objeto

  Scenario: As informações de um objeto são exibidas ao clicar em um objeto
    Given Abra o aplicativo Urban Routes
    When Clique em um lugar no mapa (exemplo: Dodger Stadium).
    Then A exibição de informações (com informações do local) é aberta. A janela de visualização corresponde ao design.


Feature: As informações de um objeto são ocultadas ao clicar na cruz na janela de visualização das informações

  Scenario: As informações de um objeto são ocultadas ao clicar na cruz na janela de visualização das informações
    Given Abra o aplicativo Urban Routes. Abra a janela de visualização das informações 
    When Clique em algum lugar do mapa (por exemplo, Dodger Stadium)
    Then A janela de visualização de informações é fechada. Não há artefatos no mapa.
    When Clique no X da janela de informações.


Feature: O modo Street view é ativado quando o ícone correspondente é arrastado para uma rua

  Scenario: O modo Street view é ativado quando o ícone correspondente é arrastado para uma rua
    Given Abra o aplicativo Urban Routes. O modo Street View não está ativado
    When Role o mapa para a área do Estádio Dodger.
    Then A área do Estádio Dodger foi ampliada.
    When Defina o nível máximo de zoom.
    Then O nível de zoom está no máximo.
    When Pressione o botão de navegação na parte inferior direita do mapa e clique 5 vezes no ícone "menos" (-) no canto inferior direito.
    Then O nível de zoom muda.
    When Arraste o ícone do modo Street View e coloque-o em qualquer rua.
    Then O modo Street View é ativado.
    When Role a imagem.
    Then A imagem rola 360 graus.


Feature: O modo Street view é desativado ao clicar em uma seta cinza

  Scenario: O modo Street view é desativado ao clicar em uma seta cinza
    Given Abra o aplicativo Urban Routes. Ative o modo Street view
    When Clique na pequena seta cinza localizada no retângulo preto (no canto superior esquerdo do mapa).
    Then O modo Street View é desativado.


Feature: As informações do aplicativo são exibidas ao clicar no logotipo do aplicativo

  Scenario: As informações do aplicativo são exibidas ao clicar no logotipo do aplicativo
    Given Abra o aplicativo Urban Routes
    When Clique no logotipo do Urban Routes.
    Then As informações sobre o aplicativo são exibidas.


Feature: Os títulos das áreas no mapa não são clicáveis

  Scenario: Os títulos das áreas no mapa não são clicáveis
    Given Abra o aplicativo Urban Routes
    When Clique no nome do local presente no mapa (exemplo: Hollywood).
    Then Nada acontece. Os títulos das áreas não podem ser selecionados.


Feature: Os títulos das cidades no mapa não são clicáveis

  Scenario: Os títulos das cidades no mapa não são clicáveis
    Given Abra o aplicativo Urban Routes
    When Clique no nome do local presente no mapa (exemplo: West Hollywood).
    Then Nada acontece. Os títulos da cidade não podem ser selecionados.


Feature: O campo "De" pode ser selecionado

  Scenario: O campo "De" pode ser selecionado
    Given Abra o aplicativo Urban Routes
    When Clique no campo "De".
    Then O campo "De" é selecionado. O cursor pisca. O campo de pesquisa fica vazio.


Feature: É possível pesquisar os objetos no campo "Para"

  Scenario: É possível pesquisar os objetos no campo "Para"
    Given Abra o aplicativo Urban Routes
    When Clique no campo "Para".
    Then A lista de estações de metrô é exibida.
    When Digite "Subway".


Feature: O pino de endereço aparece depois do preenchimento do campo "De"

  Scenario: O pino de endereço aparece depois do preenchimento do campo "De"
    Given Abra o aplicativo Urban Routes
    When Clique no campo "De".
    Then O mapa recebe zoom no pino de endereço. A visualização corresponde à descrição do projeto.


Feature: O pino de endereço aparece depois do preenchimento do campo "De"

  Scenario: O pino de endereço aparece depois do preenchimento do campo "De"
    Given O campo "De" está vazio
    When Insira um endereço (exemplo: East 2nd Street, 601).


Feature: O pino de endereço aparece depois do preenchimento do campo "Para"

  Scenario: O pino de endereço aparece depois do preenchimento do campo "Para"
    Given Abra o aplicativo Urban Routes
    When Clique no campo "Para".
    Then O mapa recebe zoom no pino de endereço. A visualização corresponde à descrição do projeto.


Feature: O pino de endereço aparece depois do preenchimento do campo "Para"

  Scenario: O pino de endereço aparece depois do preenchimento do campo "Para"
    Given O campo "Para" está vazio
    When Insira um endereço (exemplo: 1300 1st St).


Feature: O endereço é removido após limpar o campo "De"

  Scenario: O endereço é removido após limpar o campo "De"
    Given Abra o aplicativo Urban Routes. O campo "De" está preenchido
    When Clique na cruz no campo "De".
    Then O campo está vazio. O endereço inserido anteriormente foi removido do campo. O pino correspondente some do mapa.
