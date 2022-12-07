;Todas las notebooks para Básico no es posible elegir costo ni la duración de la bateria 

(defrule Lenovo_IdealPad_Duet_3i_ ""
    (Laptop 
            (Uso "Basico") 
            (Tamanio "Pequenio")
    )
    =>
    (printout t "La laptop sugerida es: Lenovo IdealPad Duet 3i" crlf)
)

(defrule ASUS_VivoBook_13_Slate_ ""
    (Laptop 
            (Uso "Basico") 
            (Tamanio "Mediano")
    )
    =>
    (printout t "La laptop sugerida es: ASUS VivoBook 13 Slate" crlf)
)

(defrule Lenovo_IdealPad_Flex_5_15_inch_ ""
    (Laptop 
            (Uso "Basico")
            (Tamanio "Grande")
    )
    =>
    (printout t "La laptop sugerida es: Lenovo IdealPad Flex 5 (15 inch)" crlf)
)