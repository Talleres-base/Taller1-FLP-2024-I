#lang racket/base
(require eopl)
(require rackunit "../taller1-datatype.rkt" "graphs.rkt")

(define graphs (load-graphs non-empty-graph empty-graph node-int node-symbol))
(define g1 (car graphs))
(define g2 (cadr graphs))
(define g3 (caddr graphs))


#|
Funcion sumar pesos
|#

(define sumar-pesos
  (lambda (g [acc 0])
    (cases graph g
      (empty-graph () acc)
      (non-empty-graph (u v w go)
          (sumar-pesos go (+ acc w))
      )
    )
  )
)

(check-equal? 50 (sumar-pesos g1))
(check-equal? 60 (sumar-pesos g2))
(check-equal? 139 (sumar-pesos g3))
