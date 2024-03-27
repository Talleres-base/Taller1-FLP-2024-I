#lang eopl

#|
- No insertar comentarios con caja
- No insertar imágenes
- Asegurarse que el archivo se almacena como texto plano

Adquiriendo el poder de la abstracción
El estudiante aprenderá a representar TADs con listas
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
  (lambda (g)
    #T
  )
)

(define non-empty-graph?
  (lambda (g)
    #T
  )
)

(define node-int?
  (lambda (n)
    #T
  )
)

(define node-symbol?
  (lambda (n)
    #T
  )
)

;;Extractores

(define non-empty-graph->u
  (lambda (g)
    0
  )
)

(define non-empty-graph->v
  (lambda (g)
    0
  )
)

(define non-empty-graph->g
  (lambda (g)
    0
  )
)

(define non-empty-graph->w
  (lambda (g)
    0
  )
)


(define node-int->datum
  (lambda (n)
    0
  )
)

(define node-sym->datum
  (lambda (n)
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
  (lambda (g)
    0
  )
)

(define get-edges
  (lambda (g)
    0
  )
)

(define get-adjacent
  (lambda (g u)
    0
  )
)
(define get-distance
  (lambda (g u v)
    0
  )
)


#|
No tocar
Exporar funciones
|#
(provide (all-defined-out))         

