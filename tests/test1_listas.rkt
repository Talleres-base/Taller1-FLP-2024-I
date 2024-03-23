#lang racket/base

(require rackunit "../taller1-listas.rkt" "graphs.rkt")

(define graphs (load-graphs non-empty-graph empty-graph node-int node-symbol))
(define g1 (car graphs))
(define g2 (cadr graphs))
(define g3 (caddr graphs))


#|
Son listas Constructores
|#

(check-eq? #T (and (pair? g1) (pair? g2) (pair? g3)))

#|
No hay repetidos
|#

(define non-repeat-graph
  (lambda (g)
    (cond
      [(empty-graph? g) #T]
      [(non-empty-graph? g)
        (let
          (
            (u (non-empty-graph->u g))
            (v (non-empty-graph->v g))
            (w (non-empty-graph->w g))
           )
          (let
            (
              (n (verify-edges g (list u v)))   ;;Verificar hacia adelante
            )
            (if
              (= n 1) ;Solo puede haber una arista repetida
              (non-repeat-graph (non-empty-graph->g g))
              #F
            )
          )
        )
      ]
      [else (check-eq? #T #F)]
    )
  )
)


(define verify-edges
  (lambda (g ed [acc 0])
    (cond
      [(empty-graph? g) acc]
      [(non-empty-graph? g)
        (let
          (
            (u (non-empty-graph->u g))
            (v (non-empty-graph->v g))
            (w (non-empty-graph->w g))
           )
          (verify-edges
            (non-empty-graph->g g)
            ed
            (if
              (or 
                (and (eq? u (car ed)) (eq? v (cadr ed)) )
                (and (eq? v (car ed)) (eq? u (cadr ed)) )
              )
              (+ 1 acc)
              acc
            )
          )
        )
      ]
      [else (check-eq? #T #F)]
    )
  )
)

(check-eq? #T (non-repeat-graph g1))
(check-eq? #T (non-repeat-graph g2))
(check-eq? #T (non-repeat-graph g3))
(check-eq? #T (non-repeat-graph (non-empty-graph (node-symbol 'b) (node-int 2) 30 g1)))
(check-eq? #T (non-repeat-graph (non-empty-graph (node-int 3) (node-int 1) 23 g2)))
(check-eq? #T (non-repeat-graph (non-empty-graph (node-int 10) (node-int 8) 2 g3)))
