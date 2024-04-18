#lang eopl
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





