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
      [(equal? x (car l)) #T]
      [else (member x (cdr l))]
    )
  )
)

(define remove-first
  (lambda (x l)
    (cond
      [(null? l) l]
      [(equal? (car l) x) (cdr l)]
      [else (cons (car l) (remove-first x (cdr l)))]
    )
  )
)


(define verify
  (lambda (l1 l2)
    (cond
      [(and (null? l1) (null? l2)) #T]
      [(or (null? l1) (null? l2)) #F]
      [(member (car l1) l2) (verify (cdr l1) (remove-first (car l1) l2))]
      [else #F]
    )
  )
)
#|
Adjacencia
|#

(define adj-g1-b
  (list (node-int 1) (node-int 2))
)

(define adj-g2-3
  (list (node-int 1) (node-int 2))
)

(define adj-g3-10
  (list (node-int 8) (node-int 9) (node-int 6) (node-int 4))
)

(define adj-g3-6
  (list (node-int 4) (node-int 10) (node-int 9) (node-int 7) (node-int 5) (node-int 2))
)

(check-equal? #T (verify adj-g1-b (get-adjacent g1 (node-symbol 'b))))
(check-equal? #T (verify adj-g2-3 (get-adjacent g2 (node-int 3))))
(check-equal? #T (verify adj-g3-10 (get-adjacent g3 (node-int 10))))
(check-equal? #T (verify adj-g3-6 (get-adjacent g3 (node-int 6))))





