;Todas las notebooks para Trabajo/Escuela tienen más de 10 horas de bateria

(defrule Microsoft_Surface_Laptop_Go_2_ ""
    (and
        (Laptop (Uso "Trabajo/Escuela"))
        (Laptop (Tamanio "Pequeño"))
        ;(Laptop (Costo ""))
        ;(Laptop (Bateria ""))
    )
    =>
    (printout t "La laptop sugerida es: Microsoft Surface Laptop Go 2" crlf)
)


; No hay una laptop para Trabajo/Escuela con una pantalla pequeñas







(defrule Microsoft_Surface_Laptop_4_(13.5_inch)_ ""
    (and
        (or (Laptop (Uso "Trabajo/Escuela")) (Laptop (Uso "Crear/Diseñar")) )
        (Laptop (Tamanio "Mediano"))
        ;(Laptop (Costo ""))
        ;(Laptop (Bateria ""))
    )
    =>
    (printout t "La laptop sugerida es: Microsoft Surface Laptop 4 (13.5 inch)" crlf)
)


(defrule Microsoft_Surface_Laptop_5_(15_inch)_ ""
    (and
        (Laptop (Uso "Trabajo/Escuela"))
        (Laptop (Tamanio "Mediano"))
        ;(Laptop (Costo ""))
        ;(Laptop (Bateria ""))
    )
    =>
    (printout t "La laptop sugerida es: Microsoft Surface Laptop 5 (15 inch)" crlf)
)


(defrule Lenovo_IdeaPad_Flex_5_(15_inch)_ ""
    (and
        (Laptop (Uso "Trabajo/Escuela"))
        (Laptop (Tamanio "Grande"))
        ;(Laptop (Costo ""))
        ;(Laptop (Bateria ""))
    )
    =>
    (printout t "La laptop sugerida es: Lenovo IdeaPad Flex 5 (15 inch)" crlf)
)


(defrule LG_Gram_16_ ""
    (and
        (Laptop (Uso "Trabajo/Escuela"))
        (Laptop (Tamanio "Grande"))
        ;(Laptop (Costo ""))
        ;(Laptop (Bateria ""))
    )
    =>
    (printout t "La laptop sugerida es: LG Gram 16" crlf)
)