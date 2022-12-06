;Todas las notebooks para Trabajo/Escuela tienen más de 10 horas de bateria por lo que no es posible elegir duración de la bateria

(defrule Microsoft_Surface_Laptop_Go_2_ ""
    (and
        (Laptop (Uso "Trabajo/Escuela"))
        (Laptop (Tamanio "Pequeño"))
        ;(Laptop (Costo ""))
    )
    =>
    (printout t "La laptop sugerida es: Microsoft Surface Laptop Go 2" crlf)
)


; No hay una laptop para Trabajo/Escuela con una pantalla pequeña y con un costo mayor a 300.000
; Osea que si se elige UsoLaptop 3 y TamanioLaptop 1 debería terminar ahi


(defrule Microsoft_Surface_Laptop_4_(13.5_inch)_ ""
    (and
        (Laptop (Uso "Trabajo/Escuela"))
        (Laptop (Tamanio "Mediano"))
        ;(Laptop (Costo ""))
    )
    =>
    (printout t "La laptop sugerida es: Microsoft Surface Laptop 4 (13.5 inch)" crlf)
)


(defrule Microsoft_Surface_Laptop_5_(15_inch)_ ""
    (and
        (Laptop (Uso "Trabajo/Escuela"))
        (Laptop (Tamanio "Mediano"))
        ;(Laptop (Costo ""))
    )
    =>
    (printout t "La laptop sugerida es: Microsoft Surface Laptop 5 (15 inch)" crlf)
)


(defrule Lenovo_IdeaPad_Flex_5_(15_inch)_ ""
    (and
        (Laptop (Uso "Trabajo/Escuela"))
        (Laptop (Tamanio "Grande"))
        ;(Laptop (Costo ""))
    )
    =>
    (printout t "La laptop sugerida es: Lenovo IdeaPad Flex 5 (15 inch)" crlf)
)


(defrule LG_Gram_16_ ""
    (and
        (Laptop (Uso "Trabajo/Escuela"))
        (Laptop (Tamanio "Grande"))
        ;(Laptop (Costo ""))
    )
    =>
    (printout t "La laptop sugerida es: LG Gram 16" crlf)
)