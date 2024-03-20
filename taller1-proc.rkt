#lang eopl

#|
- No insertar comentarios con caja
- No insertar imágenes
- Asegurarse que el archivo se almacena como texto plano

Adquiriendo el poder de la abstracción
El estudiante aprenderá a representar TADs con procedimientos
|#

;Constructores
(define empty-graph
  (lambda () 0)
)

(define non-empty-graph
  (lambda (u v w g)
    0
  )
)

(define node-int
  (lambda (datum)
    0
  )
)

(define node-symbol
  (lambda (datum)
    0
  )
)
;Observadores

;Predicados

(define empty-graph?
  (lambda ()
    #T
  )
)

(define non-empty-graph?
  (lambda ()
    #T
  )
)

(define node-int?
  (lambda ()
    #T
  )
)

(define node-symbol?
  (lambda ()
    #T
  )
)

;;Extractores

(define non-empty-graph->u
  (lambda ()
    0
  )
)

(define non-empty-graph->v
  (lambda ()
    0
  )
)

(define non-empty-graph->g
  (lambda ()
    0
  )
)


(define node-int->datum
  (lambda ()
    0
  )
)

(define node-sym->datum
  (lambda ()
    0
  )
)

;; Ejemplo

(define grafo1
  (non-empty-graph
    (node-symbol 'b)
    (node-int 1)
    5
    (non-empty-graph
      (node-symbol 'b)
      (node-int 2)
      10
      (non-empty-graph
        (node-int 1)
        (node-int 2)
        15
        (empty-graph)
        )
      )
    )
  )

;;Funciones

(define get-nodes
  (lambda ()
    0
  )
)

(define get-edges
  (lambda ()
    0
  )
)

(define get-adjacent
  (lambda (u)
    0
  )
)

(define get-incidents
  (lambda (u)
    0
  )
)

(define get-minimum-tree
  (lambda (u)
    0
  )
)

(define get-distance
  (lambda (u v)
    0
  )
)


#|
No tocar
Exporar funciones
|#
(provide (all-defined-out))         

