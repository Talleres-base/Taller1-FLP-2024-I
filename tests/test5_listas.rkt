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
Distancia
|#

(check-equal? (get-distance g1 (node-int 1) (node-int 2)) 1)
(check-equal? (get-distance g1 (node-symbol 'a) (node-int 1)) 1)
(check-equal? (get-distance g1 (node-int 1) (node-int 3)) 2)
(check-equal? (get-distance g2 (node-int 1) (node-int 4)) 6)
(check-equal? (get-distance g2 (node-int 4) (node-int 9)) 3)
(check-equal? (get-distance g2 (node-int 9) (node-int 5)) 7)
(check-equal? (get-distance g2 (node-int 5) (node-int 1)) 9)
(check-equal? (get-distance g3 (node-int 1) (node-int 4)) 3)
(check-equal? (get-distance g3 (node-int 4) (node-int 9)) 3)
(check-equal? (get-distance g3 (node-int 9) (node-int 5)) 7)
(check-equal? (get-distance g3 (node-int 5) (node-int 1)) 9)
(check-equal? (get-distance g3 (node-int 1) (node-int 5)) 7)
(check-equal? (get-distance g3 (node-int 3) (node-int 9)) 7)
(check-equal? (get-distance g3 (node-int 3) (node-int 5)) 5)
