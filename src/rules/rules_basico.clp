;Todas las notebooks para Básico no es posible elegir costo ni la duración de la bateria 

(defrule Lenovo_IdealPad_Duet_3i_ ""
    (EleccionUso "Basico") 
    (EleccionTamanio "Pequenio")
    =>
    (assert (Laptop 
                (Marca_modelo "Lenovo IdealPad Duet 3i")  
                (Uso "Basico") 
                (Tamanio "10,3") 
                (Costo "46.500")
                (Bateria " ")
            )
    )
)

(defrule ASUS_VivoBook_13_Slate_ ""
    (EleccionUso "Basico") 
    (EleccionTamanio "Mediano")
    =>
    (assert (Laptop 
                (Marca_modelo "ASUS VivoBook 13 Slate")
                (Uso "Basico")
                (Tamanio "13,3")
                (Costo "93.000")
                (Bateria " ")
            )
    )
)

(defrule Lenovo_IdealPad_Flex_5_15_inch_ ""
    (EleccionUso "Basico")
    (EleccionTamanio "Grande")
    =>
    (assert (Laptop
                (Marca_modelo "Lenovo IdealPad Flex 5 (15 inch)")
                (Uso "Basico")
                (Tamanio "15,6")
                (Costo "173.290")
                (Bateria " ")
            )
    )
)