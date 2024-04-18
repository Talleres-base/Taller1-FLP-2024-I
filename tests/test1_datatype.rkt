#lang racket/base

(require rackunit "../taller1-datatype.rkt" "graphs.rkt")

(define graphs (load-graphs non-empty-graph empty-graph node-int node-symbol))
(define g1 (car graphs))
(define g2 (cadr graphs))
(define g3 (caddr graphs))


#|
Son AST Constructores
|#

(check-eq? #T (and (graph? g1) (graph? g2) (graph? g3)))


