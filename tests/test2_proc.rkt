#lang racket/base

(require rackunit "../taller1-listas.rkt" "graphs.rkt")

(define graphs (load-graphs non-empty-graph empty-graph node-int node-symbol))
(define g1 (car graphs))
(define g2 (cadr graphs))
(define g3 (caddr graphs))


#|
Funcion sumar pesos
|#

(define sumar-pesos
  (lambda (g [acc 0])
    (cond
      [(empty-graph? g) acc]
      [(non-empty-graph? g)
        (let
          (
            (w (non-empty-graph->w g))
          )
          (sumar-pesos (non-empty-graph->g g) (+ acc w))
        )
      ]
      [else (check-eq? #T #F)]
    )
  )
)

(check-equal? 50 (sumar-pesos g1))
(check-equal? 60 (sumar-pesos g2))
(check-equal? 139 (sumar-pesos g3))
