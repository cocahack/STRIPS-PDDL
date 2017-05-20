(define (problem hard1)
  (:domain daily)
  (:objects home school)
  (:init
   (at home)
   )
  (:goal
   (and (at home) (allclear))
  )
)