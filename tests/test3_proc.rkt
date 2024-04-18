#lang racket/base

(require rackunit "../taller1-proc.rkt" "graphs.rkt")

(define graphs (load-graphs non-empty-graph empty-graph node-int node-symbol))
(define g1 (car graphs))
(define g2 (cadr graphs))
(define g3 (caddr graphs))


(define member
  (lambda (x l)
    (cond
      [(null? l) #F]
      [(comparar? x (car l)) #T]
      [else (member x (cdr l))]
    )
  )
)

(define remove-first
  (lambda (x l)
    (cond
      [(null? l) l]
      [(comparar? (car l) x) (cdr l)]
      [else (cons (car l) (remove-first (x (cdr l))))]
    )
  )
)

(define comparar?
  (lambda (x y)
    (cond
      [(and (list? x) (list? y))
       (and
        (comparar? (car x) (car y))
        (comparar? (cadr x) (cadr y))
        (equal? (caddr x) (caddr y)))]
      [(and (node-int? x)(node-int? y)) (equal? (node-int->datum x) (node-int->datum y))]
      [(and (node-symbol? x)(node-symbol? y)) (equal? (node-symbol->datum x) (node-symbol->datum y))]
      [else #F]
    )
  )
)

(define verify
  (lambda (l1 l2)
    (cond
      [(null? l1) #T]
      [(member (car l1) l2) (verify (cdr l1) l2)]
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
  (list (node-symbol 'b) (node-int 1)  (node-int 2)))

(define expected-nodes-g2
  (list (node-int 1) (node-int 2) (node-int 3))
)

(define expected-nodes-g3
  (list (node-int 1) (node-int 2) (node-int 3) (node-int 4) (node-int 5) (node-int 6) (node-int 7) (node-int 8) (node-int 9) (node-int 10))
)


(check-equal? #T (verify expected-nodes-g1 (get-nodes g1)))
(check-equal? #T (verify expected-nodes-g2 (get-nodes g2))) 
(check-equal? #T (verify expected-nodes-g3 (get-nodes g3)))


(define expected-edges-g1 
  (list
    (list (node-symbol 'b)  (node-int 1) 5 )
    (list (node-symbol 'b)  (node-int 2) 10)
    (list (node-int 1) (node-int 2) 15)
    (list (node-int 2) (node-symbol 'b) 20)
   )
)

(define expected-edges-g2
  (list
    (list (node-int 1) (node-int 2) 10)
    (list (node-int 2) (node-int 3) 20)
    (list (node-int 1) (node-int 3) 30)
  )
)

(define expected-edges-g3
  (list
    (list
      (node-int 1)
      (node-int 2)
      3
    )
    (list
      (node-int 1)
      (node-int 4)
      9
    )
    (list
      (node-int 1)
      (node-int 3)
      6
    )
    (list
      (node-int 2)
      (node-int 5)
      2
    )
    (list
      (node-int 2)
      (node-int 3)
      4
    )
    (list
      (node-int 2)
      (node-int 4)
      9
    )
    (list
      (node-int 2)
      (node-int 6)
      9
    )
    (list
      (node-int 3)
      (node-int 5)
      2
    )
    (list
      (node-int 3)
      (node-int 7)
      9
    )
    (list
      (node-int 4)
      (node-int 6)
      8
    )
    (list
      (node-int 4)
      (node-int 10)
      18
    )
    (list
      (node-int 5)
      (node-int 6)
      8
    )
    (list
      (node-int 5)
      (node-int 7)
      9
    )
    (list
      (node-int 6)
      (node-int 7)
      7
    )
    (list
      (node-int 6)
      (node-int 9)
      9
    )
    (list
      (node-int 6)
      (node-int 10)
      10
    )
    (list
      (node-int 7)
      (node-int 8)
      4
    )
    (list
      (node-int 7)
      (node-int 9)
      5
    )
    (list
      (node-int 8)
      (node-int 9)
      1
    )
    (list
      (node-int 8)
      (node-int 10)
      4
    )
    (list
      (node-int 9)
      (node-int 10)
      3
    )

  )
)
(check-equal? #T (verify expected-edges-g1 (get-edges g1)))
(check-equal? #T (verify expected-edges-g2 (get-edges g2))) 
(check-equal? #T (verify expected-edges-g3 (get-edges g3)))
