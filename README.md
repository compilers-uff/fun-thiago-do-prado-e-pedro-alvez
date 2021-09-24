# Trabalho de conclusão do curso de Compiladores 2021.1

Christiano Braga  
Instituto de Computação  
Universidade Federal Fluminense

- Data de entrega: 24/09/2021

## Alunos:  
Pedro Alves Valentim, 217031096  
Thiago do Prado Silva, 117031024

## Objetivo

Estender a linguagem Fun e seu interpretador com suporte a definição
de uma função com um número indefinido de parâmetros e sua chamada.

## Etapas

1. Modifique a gramática de Fun para dar suporte a declaração de
   funções com vários paraâmetros.
2. Modifique o compilador de Fun para Π IR de forma que declarações e
   expressões apropriadas sejam geradas a partir do código Fun.
3. Teste sua estensão implementando versões que utilizem recursão de
   cauda (_tail recursion_) das funções ```fat``` e ```fib```. Modifique também o
   exemplo da função ```apply```.
   
## Relatório

Implementamos recursão de cauda nos arquivos, previamente disponibilizados, `fat.fun` e `fib.fun`. Para isso, foi necessário alterar o código disponibilizado no arquivo `fun2.maude`, implementando a estrutura `FUN-LIST`. Também atualizamos a implementação de `fat()` e de `apply()` no arquivo `apply.fun`.

## Execução

### fat.fun

```
🎉 Fun Interpreter
Beta version, Sep. 2021
Fun > fload "fat.fun"
File fat.fun loaded!
Fun > run "fat(23)"
25852016738884976640000
```

### fib.fun

```
🎉 Fun Interpreter
Beta version, Sep. 2021
Fun > fload "fib.fun"
File fib.fun loaded!
Fun > run "fib(23)"
28657
```

### apply.fun

```
🎉 Fun Interpreter
Beta version, Sep. 2021
Fun > fload "apply.fun"
File apply.fun loaded!
Fun > run "apply(fat | 23)"
25852016738884976640000
```

## Referências

- http://maude.cs.illinois.edu/w/index.php/Maude_download_and_installation
- http://maude.cs.illinois.edu/w/images/e/e0/Maude-2.7.1-manual.pdf
- https://xlinux.nist.gov/dads/HTML/tailRecursion.html
- http://www.ic.uff.br/~cbraga/vas/rt-maude-tutorial/rio-maude-tutorial.pdf
