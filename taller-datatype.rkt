#lang eopl
#|
- No insertar comentarios con caja
- No insertar imágenes
- Asegurarse que el archivo se almacena como texto plano

Adquiriendo el poder de la abstracción
El estudiante aprenderá a representar TADs con procedimientos 
|#


(define-datatype graph graph?
  (variantGraph)
)

(define-datatype node node?
(variantNode)
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

(define get-incidents
  (lambda (g u)
    0
  )
)

(define get-minimum-tree
  (lambda (g)
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

