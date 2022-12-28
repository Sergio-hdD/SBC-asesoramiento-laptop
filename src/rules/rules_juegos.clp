;Juegos (Todas las notebooks para Gaming/Juegos no cuentan con pantalla pequeña.)

(defrule ASUS_ROG_Flow_Z13 ""
    (EleccionUso "Juegos") 
    (EleccionTamanio "Mediano") 
    =>
    (assert (Laptop 
                (Marca_modelo "ASUS ROG Flow Z13")  
                (Uso "Juegos") 
                (Tamanio "13,4") 
                (Costo "558.000")
                (Bateria "Menos de 10hs")
            )
    )
)

(defrule Razer_Blade_15 ""
    (EleccionUso "Juegos") 
    (EleccionTamanio "Grande") 
    (EleccionCosto "Mas de $300.000") 
    (EleccionBateria "10hs o menos")
    =>
    (assert (Laptop 
                (Marca_modelo "Razer Blade 15")  
                (Uso "Juegos") 
                (Tamanio "15,6") 
                (Costo "930.000")
                (Bateria "Menos de 10hs")
            )
    )
)

(defrule HP_Victus_Gaming_15 ""
    (EleccionUso "Juegos") 
    (EleccionTamanio "Grande") 
    (EleccionCosto "$300.000 o menos") 
    =>
    (assert (Laptop 
                (Marca_modelo "HP Victus Gaming 15")  
                (Uso "Juegos") 
                (Tamanio "15,6") 
                (Costo "248.000")
                (Bateria "Menos de 10hs")
            )
    )
)

(defrule ASUS_ROG_Zephyrus_Advantage_Edition_14 ""
    (EleccionUso "Juegos") 
    (EleccionTamanio "Grande") 
    (EleccionCosto "Mas de $300.000") 
    (EleccionBateria "Mas de 10hs")
    =>
    (assert (Laptop 
            (Marca_modelo "ASUS ROG Zephyrus Advantage Edition 14")  
            (Uso "Juegos") 
            (Tamanio "14") 
            (Costo "511.500")
            (Bateria "Mas de 10hs")
        )
    )
)
