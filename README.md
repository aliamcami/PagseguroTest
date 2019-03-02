# PagSeguroTest
Projeto de caráter eliminatório para posição de iOS developer na UOL PagSeguro.  

### Video

Video demonstrando o resultado final:


[![Video demonstrativo](https://img.youtube.com/vi/cA9_RKbLRkY/0.jpg)](https://www.youtube.com/watch?v=cA9_RKbLRkY)

### Justificativas: 

Devido à simplicidade do aplicativo requisitado optei por não fazer uso de bibliotecas comuns como Alamofire, RxSwift  e SwiftyJSON e fazer toda a tratativa de resultados e requisições manualmente. 

Também optei por manter um “cache” das imagens já visualizadas para melhorar a o flow do layout já que eram poucas imagens e o uso de memória não seria seriamente afetado. 

A biblioteca de transição customizada utilizada neste projeto foi ‘Hero’, optei por utilizar transições customizadas de view já que, mesmo em um aplicativo simples o design, usabilidade, visualização e capacidade de engajamento contam muito. 

Tomei a liberdade de adicionar um ícone temporário no aplicativo apenas por questões estéticas. 

## Instruções do teste: 
Descrição do teste recebido: 

### OBJETIVO: 
Desenvolva um app que consuma uma API, exiba os dados da mesma e publique-o no GitHub/Bitbucket. 

### DESCRIÇÃO: 

Crie um aplicativo que contenha APENAS 2 telas. 

A primeira tela deverá conter uma lista de cervejas utilizando a Punk API (https://punkapi.com/documentation/v2) e a segunda tela deverá exibir os detalhes do item selecionado. 

Primeira tela (Lista): 
* Imagem da cerveja (image_url). 
* Exibir nome (name) 
* Teor alcoólico (abv) 

Segunda tela (Detalhe): 
* Imagem da cerveja (image_url). 
* Exibir nome (name) 
* Tagline (tagline) 
* Teor alcoólico (abv) 
* Escala de amargor (ibu) 
* Descrição (description) 

### CONSIDERAÇÕES: 

O projeto deve ser feito em Swiff - preferencialmente usando Swift 4 - e deverá utilizar os recursos de serialização, deserialização e consumo de rede oferecidos por ela. 

Fique a vontade de exibir as informações como quiser mas atente-se à funcionalidade do app. 

É permitido o uso de bibliotecas de terceiros, mas lembre-se de utilizá-las com inteligência e parcimônia. 

Terminado o projeto, publique-o utilizando o GitHub/Bitbucket e nos envie a URL através do Hacker Rank. 

