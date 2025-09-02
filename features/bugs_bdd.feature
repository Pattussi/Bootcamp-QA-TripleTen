Feature: Títulos de áreas não clicáveis

  Scenario: UBUG-3 - Tentar clicar no título de um local
    Given Abra o aplicativo Urban Routes
    And clique no nome de um local presente no mapa (exemplo: "Hollywood")
    Then Nada acontece. Os títulos das áreas não podem ser selecionados
    But Ao clicar no nome do local presente no mapa, uma breve descrição sobre a localização aparece
    # Prioridade: Pequena


Feature: Campo "De" deve ser selecionável

  Scenario: UBUG-5 - Selecionar o campo "De"
    Given Abra o aplicativo Urban Routes
    And clique no campo "De"
    Then O campo "De" é selecionado, o cursor pisca e o campo de pesquisa fica vazio
    But O campo é selecionado e o cursor pisca, mas a caixa de sugestões não aparece
    # Prioridade: Pequena


Feature: Pesquisa de estações de metrô

  Scenario: UBUG-6 - Digitar "Subway" no campo "Para"
    Given Abra o aplicativo Urban Routes
    When o usuário digita "Subway" no campo "Para"
    Then A lista de estações de metrô deve ser exibida
    But Nada acontece, a lista não é exibida
    # Prioridade: Pequena

Feature: O pino de endereço aparece depois do preenchimento do campo "De"

  Scenario: UBUG-7 - Preencher o campo "De" não adiciona o pino no mapa 
    Given Abra o aplicativo Urban Routes
    When o usuário insere um endereço "East 2nd Street, 601" no campo "De"
    Then O mapa recebe zoom no pino de endereço. A visualização corresponde à descrição do projeto
    But O campo "Para" fica vermelho e aparece uma mensagem na parte de baixo insira um endereço
    # Prioridade: Pequena

Feature: O pino de endereço aparece depois do preenchimento do campo "Para"

  Scenario: UBUG-8 - Preencher o campo "Para" não adiciona o pino no mapa 
    Given Abra o aplicativo Urban Routes
    When o usuário insere um endereço "1300 1st St" no campo "De"
    Then O mapa recebe zoom no pino de endereço. A visualização corresponde à descrição do projeto
    But O campo "De" fica vermelho e aparece uma mensagem na parte de baixo insira um endereço
    # Prioridade: Pequena

Feature: Ativação do modo Tela Cheia

  Scenario: UBUG-12 - Ao utilizar modo tela cheia a barra de pesquisa desaparece
    Given Abra o aplicativo Urban Routes
    When Clique no botão de modo de visualização em tela cheia.
    Then O modo de visualização em tela cheia é ativado e as abas do navegador são ocultadas. Todos os objetos da interface do aplicativo estão no lugar. O nível de zoom não muda.
    But O modo de visualização em tela cheia é ativado e as abas do navegador são ocultadas. Os campos de pesquisa "De" e "Para" não aparecem mais. O nivel de zoom não muda.
    # Prioridade: Pequena

Feature: Os parques são exibidos ao ampliá-los

  Scenario: UBUG-19 - Ao aproximar o mapa em um parque da cidade, o ícone "parque" não é exibido
    Given Abra o aplicativo Urban Routes
    When Aumente o zoom em um parque da cidade
    Then O ícone do parque é exibido
    But Ao aproximar com o zoom o parque no mapa, o icone "parque" não é exibido
    # Prioridade: Pequena

Feature: As informações do aplicativo são exibidas ao clicar no logotipo do aplicativo

  Scenario: UBUG-24 - Ao clicar no logotipo do Urban Routes nenhuma informação ou ação acontece
    Given Abra o aplicativo Urban Routes
    When Clique no logotipo do Urban Routes
    Then As informações sobre o aplicativo são exibidas
    But Não é possivel clicar no logotipo do Urban Rutes
    # Prioridade: Pequena