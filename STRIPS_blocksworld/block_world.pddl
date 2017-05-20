(define (domain blocks-world)

    (:requirements :strips )

    (:predicates
        (clear ?x) (on ?x ?y) (ontable ?x) (holding ?x) (handempty) (istable ?x)
    )

    (:action stack
        :parameters (?x ?y)
        :precondition (and (not (= ?x ?y)) (not (istable ?x)) (clear ?y) (holding ?x))
        :effect (and (handempty) (on ?x ?y) (clear ?x) (not (clear ?y)) (not (holding ?x)))
    )
    
    (:action unstack
        :parameters (?x ?y)
        :precondition (and (not (= ?x ?y)) (not (istable ?x)) (on ?x ?y) (clear ?x) (handempty))
        :effect (and (not (handempty)) (not (on ?x ?y)) (not (clear ?x)) (clear ?y) (holding ?x))
    )
    
    (:action pickup
        :parameters (?x)
        :precondition(and (ontable ?x) (clear ?x) (handempty) (not (istable ?x)))
        :effect(and (holding ?x) (not (ontable ?x)) (not (clear ?x)) (not (handempty)))
    )
 
    (:action putdown
        :parameters (?x)
        :precondition(and (holding ?x) (not (istable ?x)))
        :effect(and (ontable ?x) (clear ?x) (handempty) (not (holding ?x)))
    ) 
)