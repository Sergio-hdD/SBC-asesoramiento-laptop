(defrule Microsoft_Surface_Go_3 ""
    (and
        (Laptop (Uso "Crear/Diseniar"))
        (Laptop (Tamanio "Pequenio"))
        ;(Laptop (Costo "$300.000 o menos"))
        ;(Laptop (Bateria "10hs o menos"))
    )
    =>
    (printout t "La laptop sugerida es: Microsoft Surface Go 3" crlf)
)

(defrule Microsoft_Surface_Laptop_Studio ""
    (and
        (Laptop (Uso "Crear/Diseniar"))
        (Laptop (Tamanio "Mediano"))
        ;(Laptop (Costo "Mas de $300.000"))
        ;(Laptop (Bateria "Mas de 10hs"))
    )
    =>
    (printout t "La laptop sugerida es: Microsoft Surface Laptop Studio" crlf)
)

(defrule HP_ENVY_x360_15 ""
    (and
        (Laptop (Uso "Crear/Diseniar"))
        (Laptop (Tamanio "Grande"))
        (Laptop (Costo "$300.000 o menos"))
        (Laptop (Bateria "10hs o menos"))
    )
    =>
    (printout t "La laptop sugerida es: HP ENVY x360 15" crlf)
)

(defrule Dell_XPS_17_9700 ""
    (and
        (Laptop (Uso "Crear/Diseniar"))
        (Laptop (Tamanio "Grande"))
        (Laptop (Costo "Más de $300.000"))
        ;(Laptop (Bateria "10hs o menos"))
    )
    =>
    (printout t "La laptop sugerida es: Dell XPS 17 9700" crlf)
)

(defrule Dell_Inspiron_7506_2_in_1 ""
    (and
        (Laptop (Uso "Crear/Diseniar"))
        (Laptop (Tamanio "Grande"))
        (Laptop (Costo "$300.000 o menos"))
        (Laptop (Bateria "10hs o menos"))
    )
    =>
    (printout t "La laptop sugerida es: Dell Inspiron 7506 2-in-1" crlf)
)