<h1 align="center">:page_with_curl: Teste Técnico 4 DesenvolvendoMe</h1>

<br>

<div align="center">

![GitHub issues](https://img.shields.io/github/issues-raw/marcoaspeixoto/teste-tecnico-4-desenvolvendo-me?style=for-the-badge)
![GitHub closed issues](https://img.shields.io/github/issues-closed-raw/marcoaspeixoto/teste-tecnico-4-desenvolvendo-me?style=for-the-badge)
![GitHub pull requests](https://img.shields.io/github/issues-pr-raw/marcoaspeixoto/teste-tecnico-4-desenvolvendo-me?style=for-the-badge)
![GitHub closed pull requests](https://img.shields.io/github/issues-pr-closed-raw/marcoaspeixoto/teste-tecnico-4-desenvolvendo-me?style=for-the-badge)
![GitHub milestones](https://img.shields.io/github/milestones/all/marcoaspeixoto/teste-tecnico-4-desenvolvendo-me?style=for-the-badge)
![GitHub release (latest by date)](https://img.shields.io/github/v/release/marcoaspeixoto/teste-tecnico-4-desenvolvendo-me?style=for-the-badge)
![GitHub tag (latest SemVer)](https://img.shields.io/github/v/tag/marcoaspeixoto/teste-tecnico-4-desenvolvendo-me?style=for-the-badge)
![GitHub Repo stars](https://img.shields.io/github/stars/marcoaspeixoto/teste-tecnico-4-desenvolvendo-me?style=for-the-badge)
![GitHub forks](https://img.shields.io/github/forks/marcoaspeixoto/teste-tecnico-4-desenvolvendo-me?style=for-the-badge)

</div>

<br>

## :pencil: Descrição do Projeto

Teste técnico 4 da mentoria DesenvolvendoMe contendo 2 questões, sendo 1 com um desafio de API e 1 com desafio de lógica de programação

<br>

## :computer: Tecnologias Utilizadas

Este projeto foi desenvolvido com as seguintes tecnologias:

* Ruby 3.1.2
* Rails 6.1.7

<br>

## Questões:

1 - Desafio API: Criar um endpoint que faça a leitura de um arquivo .csv, popule o banco de dados com essas informações e com isso será necessário exibir todos os registros em json.

Requisitos:
- O desafio deve ser desenvolvido utilizando Ruby e tendo o Rails como framework;
- Seguindo o padrão API RESTful;
- Seguir o Rubocop style-guide;
- A leitura do arquivo .csv deve ser através de um endpoint diferente da listagem de títulos;
- Ordenar pelo ano de lançamento;
- Filtrar os registros por ano de lançamento, gênero, país*;
- Garantir que não haja duplicidade de registros.

A response do endpoint deve obedecer o padrão abaixo:

```json
{
   {
    "show_id":"s64"
    "type":"TV Show"
    "title":"13 Reasons Why"
    "director":"Daniel Stamm"
    "cast":"Mark Webber, Rutina Wesley, Devon Graye, Tom Bower, Ron Perlman, Pruitt Taylor Vince"
    "country" :"United States"
    "date_added":"June 5, 2020"
    "release_year":"2020"
    "rating":"TV-MA"
    "duration":"4 Seasons"
    "listed_in":"Crime TV Shows, TV Dramas, TV Mysteries"
    "description":"A classmate receives a series of tapes that unravel the mystery of her tragic choice."
    }
}
```
Dicas:
- Testes são bem-vindos;;
- Tipo de banco de dados em aberto, pode escolher tanto relacional quanto não relacional;
- O filtro pode ser aplicado por 1 ou mais itens, mas devem atender aos requisitos;
- O arquivo .csv, entitulado `TT4 - netflix_titles.csv`, poderá ser encontrado na pasta raíz deste projeto.

[Solução](https://github.com/marcoaspeixoto/teste-tecnico-4-desenvolvendo-me/issues/1)

<br>

2 - Desafio Lógica de Programação: Dado um conjunto de caracteres, você precisará extrair os "diamantes" ( <>) e as "areias" ( . ) da expressão e no
final exibir a quantidade de diamantes extraídos

Expressão: <<.<<..>><>><.>.>.<<.>.<.>>>><>><>>

Requisitos:
- Extrair os diamantes e areias da expressão até que não haja mais o que ser extraído;
- Exibir a quantidade de diamantes extraídos;
- O projeto deve ser disponibilizado em um repositório aberto no GitHub. Envie a URL assim que possível.

Dicas:
- O diamante é a junção dos sinais de menor e maior sem que haja entre eles;
- Areia é o ponto final.

[Solução](https://github.com/marcoaspeixoto/teste-tecnico-4-desenvolvendo-me/issues/2)

<br>

## :page_facing_up: Documentação da API
Acesse a documentação da API através do link:  
https://documenter.getpostman.com/view/23703927/2s9YkrcLFz

<br>

## :heavy_check_mark: Conclusão

* **Student / Developer:** Marco Peixoto (https://github.com/marcoaspeixoto)
* **Mentor / Leader:** Marco Castro (https://github.com/marcodotcastro)