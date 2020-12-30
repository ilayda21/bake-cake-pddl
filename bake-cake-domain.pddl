(define (domain bake-cake)
    (:requirements :strips)
    (:predicates (added ?f ?ingredient)
            (isBowl ?b)
            (isFlour ?f)
            (isSugar ?s)
            (isVanillia ?v)
            (isMilk ?m)
            (isBakingPowder ?bp)
            (isEgg ?e)
            (isOil ?o)
            (hasEnough ?ingredient)
            (free ?b))
    (:action add-base-ingredients
        :parameters (?bowl ?flour ?sugar ?vanillia ?milk ?bakingPowder ?egg ?oil)
        :precondition (and (isBowl ?bowl) (free ?bowl) 
            (isFlour ?flour) (hasEnough ?flour)
            (isSugar ?sugar) (hasEnough ?sugar)
            (isVanillia ?vanillia) (hasEnough ?vanillia)
            (isMilk ?milk) (hasEnough ?milk)
            (isBakingPowder ?bakingPowder) (hasEnough ?bakingPowder)
            (isEgg ?egg) (hasEnough ?egg)
            (isOil ?oil) (hasEnough ?oil))
        :effect (and (not (free ?bowl))
            (not (hasEnough ?flour)) (added ?flour ?bowl)
            (not (hasEnough ?sugar)) (added ?sugar ?bowl)
            (not (hasEnough ?vanillia)) (added ?vanillia ?bowl)
            (not (hasEnough ?milk)) (added ?milk ?bowl)
            (not (hasEnough ?bakingPowder)) (added ?bakingPowder ?bowl)
            (not (hasEnough ?egg)) (added ?egg ?bowl)
            (not (hasEnough ?oil)) (added ?oil ?bowl)
        )
    )
)
