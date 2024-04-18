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
)

(define non-empty-graph
)

(define node-int
)

(define node-symbol
)
;Observadores

;Predicados

(define empty-graph?
)

(define non-empty-graph?
)

(define node-int?
)

(define node-symbol?
)

;;Extractores

(define non-empty-graph->u
)

(define non-empty-graph->v
)

(define non-empty-graph->w
)


(define non-empty-graph->g
)

(define node-int->datum
)

(define node-symbol->datum
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
)

(define get-edges
)

(define get-adjacent
)


#|
No tocar
Exporar funciones
|#
(provide (all-defined-out))         

