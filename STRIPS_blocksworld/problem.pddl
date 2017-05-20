(define (problem block1)
    (:domain blocks-world)
    (:objects A B C table)
    (:init 
        (istable table)
        (ontable A) (ontable B) (ontable C)
        (clear C) (clear B) 
        (on C A) (on A table) (on B table)
        (handempty)
    )
    (:goal
        (and
            (on A B) (on B C) (on C table)
        )
    )
)