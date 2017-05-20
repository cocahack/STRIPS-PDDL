(define (domain daily)

    (:requirements
        :strips
    )

    (:predicates
        (at ?x) (isattend) (allclear)
    )

    (:action leave-at
        :parameters (?x)
        :precondition (and (at ?x) (not (at school)) (not (isattend)))
        :effect (and (not (at ?x)) (at school))
    )
    
    (:action attend
        :parameters ()
        :precondition (and (at school) (not (isattend)))
        :effect (and (isattend))
    )
    
    (:action listen-to-lecture
        :parameters ()
        :precondition (and (at school) (isattend) (not (allclear)))
        :effect (and (allclear))
    )
    
    (:action return-home-from
        :parameters (?x)
        :precondition (and (not (at home)) (isattend) (allclear))
        :effect (and (at home) (not (at ?x)))
    )
)