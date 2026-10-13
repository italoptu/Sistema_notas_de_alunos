Algoritmo "Exercício1—Cadastro_de_notas"
// 
//  
// Descrição   :Exercício 1 — Cadastro de notas
// Objetivo: criar um vetor para guardar as notas de 5 alunos.
// Requisitos do desafio:
// 1. Crie um vetor chamado notas com 5 posições.
// 2. Utilize uma estrutura para para pedir as 5 notas ao usuário.
// 3. Guarde cada nota na posição correspondente do vetor.
// 4. Depois, mostre todas as notas armazenadas.
// 5. No final, calcule e mostre a média das 5 notas.
// Autor(a)    : Italo
// Data atual  : 13/10/2026

Var
  notas: vetor[1..5] de real
  nomes: vetor[1..5] de caractere
  soma, resultado: real
  i, apr, rpr, rec: inteiro
Inicio
       soma <- 0
       apr <- 0
       rpr <- 0
       rec <- 0

       para i de 1 ate 5 faca
            escreval("Nome do Aluno: ")
            leia(nomes[i])
            escreval("Notas: ")
            leia(notas[i])
            soma <- soma + notas[i]
       fimpara

       para i de 1 ate 5 faca

            se notas[i] >= 7 entao
               escreval("Nome: ", nomes[i])
               escreval("Nota: ", notas[i])
               escreval("APROVADO")
               apr <- apr + 1
            senao

               se (notas[i] >= 5) e (notas[i] < 7) entao
                    escreval("Nome: ", nomes[i])
                    escreval("Nota: ", notas[i])
                    escreval("RECUPERAÇÃO!!")
                    rec <- rec + 1
               senao
                    escreval("Nome: ", nomes[i])
                    escreval("Nota: ", notas[i])
                    escreval("REPROVADO")
                    rpr <- rpr + 1
               fimse
            fimse
       fimpara
       resultado <- soma / 5
       escreval("Media dos Alunos: ", resultado)
       escreval("Quantidade de Aluno aprovados: ", apr)
       escreval("Quantidade de Aluno reculperação: ", rec)
       escreval("Quantidade de Aluno reprovados: ", rpr)
       
Fimalgoritmo