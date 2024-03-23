#lang racket/base

(define load-graphs
  (lambda (non-empty-graph empty-graph node-int node-symbol)
    (let
      (
        (g1
          (non-empty-graph
          (node-symbol 'b)
          (node-int 1)
          5
          (non-empty-graph ;;Esta arista reemplaza la de valor 20
            (node-symbol 'b)
            (node-int 2)
            10
            (non-empty-graph
              (node-int 1)
              (node-int 2)
              15
              (non-empty-graph
                (node-int 2)
                (node-symbol 'b)
                20
                (empty-graph))
              )
            )
          )
        )

        (g2
          (non-empty-graph
          (node-int 1)
          (node-int 2)
          10
          (non-empty-graph
            (node-int 2)
            (node-int 3)
            20
            (non-empty-graph
              (node-int 1)
              (node-int 3)
              30
              (empty-graph))
            )
          )
        )

        (g3
          (non-empty-graph
          (node-int 1)
          (node-int 2)
          3
          (non-empty-graph
            (node-int 1)
            (node-int 4)
            9
            (non-empty-graph
              (node-int 1)
              (node-int 3)
              6
              (non-empty-graph
                (node-int 2)
                (node-int 5)
                2
                (non-empty-graph
                  (node-int 2)
                  (node-int 3)
                  4
                  (non-empty-graph
                    (node-int 2)
                    (node-int 4)
                    9
                    (non-empty-graph
                      (node-int 2)
                      (node-int 6)
                      9
                      (non-empty-graph
                        (node-int 3)
                        (node-int 5)
                        2
                        (non-empty-graph
                          (node-int 3)
                          (node-int 7)
                          9
                          (non-empty-graph
                            (node-int 4)
                            (node-int 6)
                            8
                            (non-empty-graph
                              (node-int 4)
                              (node-int 10)
                              18
                              (non-empty-graph
                                (node-int 5)
                                (node-int 6)
                                8
                                (non-empty-graph
                                  (node-int 5)
                                  (node-int 7)
                                  9
                                  (non-empty-graph
                                    (node-int 6)
                                    (node-int 7)
                                    7
                                    (non-empty-graph
                                      (node-int 6)
                                      (node-int 9)
                                      9
                                      (non-empty-graph
                                        (node-int 6)
                                        (node-int 10)
                                        10
                                        (non-empty-graph
                                          (node-int 7)
                                          (node-int 8)
                                          4
                                          (non-empty-graph
                                            (node-int 7)
                                            (node-int 9)
                                            5
                                            (non-empty-graph
                                              (node-int 8)
                                              (node-int 9)
                                              1
                                              (non-empty-graph
                                                (node-int 8)
                                                (node-int 10)
                                                4
                                                (non-empty-graph
                                                  (node-int 9)
                                                  (node-int 10)
                                                  3
                                                  (empty-graph)
                                                )
                                              )
                                            )
                                          )
                                        )
                                      )
                                    )
                                  )
                                )
                              )
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )
        )
      )
    )
    (list g1 g2 g3)
    )
  )
)


(provide (all-defined-out))         
