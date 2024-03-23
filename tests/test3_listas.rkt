#lang racket/base

(require rackunit "../taller1-listas.rkt" "graphs.rkt")

(define graphs (load-graphs non-empty-graph empty-graph node-int node-symbol))
(define g1 (car graphs))
(define g2 (cadr graphs))
(define g3 (caddr graphs))


(define member
  (lambda (x l)
    (cond
      [(null? l) #F]
      [(eq? x (car l)) #T]
      [else (member x (cdr l))]
    )
  )
)

(define remove-first
  (lambda (x l)
    (cond
      [(null? l) l]
      [(eq? (car l) x) (cdr l)]
      [else (cons (car l) (remove-first (x (cdr l))))]
    )
  )
)


(define verify-nodes
  (lambda (l1 l2)
    (cond
      [(and (null? l1) (null? l2)) #T]
      [(or (null? l1) (null? l2)) #F]
      [(member (car l1) l2) (verify-nodes (cdr l1) (remove-first (car l1) l2))]
      [else #F]
    )
  )
)
#|
Funciones get-nodes, get-edges
|#

(define nodes-g1 (get-nodes g1))
(define nodes-g2 (get-nodes g2))
(define nodes-g3 (get-nodes g3))

(define expected-nodes-g1
  (list (node-symbol 'b) (node-int 1) (node-symbol 'b) (node-int 2) (node-symbol 'b)))

(define expected-nodes-g2
  (list (node-int 1) (node-int 2) (node-int 3))
)

(define expected-nodes-g3
  (list (node-int 1) (node-int 2) (node-int 3) (node-int 4) (node-int 5) (node-int 6) (node-int 7) (node-int 8) (node-int 9) (node-int 10))
)


(check-equal? #T (verify-nodes expected-nodes-g1 (get-nodes g1)))
(check-equal? #T (verify-nodes expected-nodes-g2 (get-nodes g2))) 
(check-equal? #T (verify-nodes expected-nodes-g3 (get-nodes g3)))


