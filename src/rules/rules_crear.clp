(defrule Microsoft_Surface_Go_3 ""
    (EleccionUso "Crear/Diseniar")
    (EleccionTamanio "Pequenio")
    =>
    (assert (Laptop 
                (Marca_modelo "Microsoft Surface Go 3")  
                (Uso "Crear/Diseniar") 
                (Tamanio "10,5") 
                (Costo "148.800")
                (Bateria "Menos de 10hs")
            )
    )
)

(defrule Microsoft_Surface_Laptop_Studio ""
    (EleccionUso "Crear/Diseniar")
    (EleccionTamanio "Mediano")
    =>
    (assert (Laptop 
                (Marca_modelo "Microsoft Surface Laptop Studio")  
                (Uso "Crear/Diseniar") 
                (Tamanio "14,4")
                (Costo "558.000")
                (Bateria "Mas de 10hs")
            )
    )
)


(defrule HP_ENVY_x360_15 ""
    (EleccionUso "Crear/Diseniar")
    (EleccionTamanio "Grande")
    (EleccionCosto "$300.000 o menos")
    =>
    (assert (Laptop 
                (Marca_modelo "HP ENVY x360 15")  
                (Uso "Crear/Diseniar") 
                (Tamanio "15,6")
                (Costo "201.500")
                (Bateria "Menos de 10hs")
            )
    )
)

(defrule Dell_XPS_17_9700 ""
    (EleccionUso "Crear/Diseniar")
    (EleccionTamanio "Grande")
    (EleccionCosto "Mas de $300.000")
    =>
    (assert (Laptop 
                (Marca_modelo "Dell XPS 17 9700")  
                (Uso "Crear/Diseniar") 
                (Tamanio "17")
                (Costo "914.500")
                (Bateria "Menos de 10hs")
            )
    )
)


(defrule Dell_Inspiron_7506_2_in_1 ""
    (EleccionUso "Crear/Diseniar")
    (EleccionTamanio "Grande")
    (EleccionCosto "$300.000 o menos")
    =>
    (assert (Laptop 
                (Marca_modelo "Dell Inspiron 7506 2 in 1")  
                (Uso "Crear/Diseniar") 
                (Tamanio "15,6")
                (Costo "279.000")
                (Bateria "Menos de 10hs")
            )
    )
)