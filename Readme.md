# Taller de ejemplo

## Ejercicios

### Ejercicio 1

(list-set lista n x) que retorna una lista similar a lista, reemplazando el n-simo elemento
(indexado desde cero) con x.
```racket
(list-set '(a b c d) 2 '(1 2))
;Retorna '(a b (1 2) d)

(list-set '(a b c d) 3 '(1 5 10))
;Retorna '(a b c (1 5 10))
```

### Ejercicio 2

(list-tails lista) que recibe como parámetro una lista y retorna una lista de todas las sublistas
de elementos consecutivos en lista.

```racket
(list-tails '(1 2 3 4 5))
;Retorna ((1 2 3 4 5) (2 3 4 5) (3 4 5) (4 5) (5))
(list-tails '(1 a (e 4) 5 v))
;Retorna '((1 a (e 4) 5 v) (a (e 4) 5 v) ((e 4) 5 v) (5 v) (v))
```
### Ejercicio 3

(repeat-list lista n) recibe una lista y retorna una lista con todos los elementos repetidos n veces en listas internas

```racket
(repeat-list '(1 2 3) 3)
;Retorna '((1 1 1) (2 2 2) (3 3 3))
(repeat-list '(1 (2 3) 3 4 (1 2)) 2)
;Retorna '((1 1) ((2 3) (2 3)) (3 3) (4 4) ((1 2) (1 2)) )
```

### Ejercicio 4
(list-facts n) recibe un número entero positivo n y retorna los factoriales desde 0! hasta n!

```racket
(list-facts 5)
;Retorna '(1 1 2 6 24 120)
```



