;Todas las notebooks para Trabajo/Escuela tienen más de 10 horas de bateria por lo que no es posible elegir duración de la bateria

(defrule Acer_Chromebook_Spin_311 ""
    (EleccionUso "Trabajo/Escuela")
    (EleccionTamanio "Pequenio")
    =>
    (assert (Laptop 
            (Marca_modelo "Acer Chromebook Spin 311")  
            (Uso "Trabajo/Escuela") 
            (Tamanio "11,6") 
            (Costo "57.660")
            (Bateria "Mas de 10hs")
        )
    )
)


; No hay una laptop para Trabajo/Escuela con una pantalla pequeña y con un costo mayor a 300.000
; Osea que si se elige UsoLaptop 3 y TamanioLaptop 1 debería terminar ahi


(defrule Microsoft_Surface_Laptop_4_13.5_inch ""
    (EleccionUso "Trabajo/Escuela")
    (EleccionTamanio "Mediano")
    (EleccionCosto "$300.000 o menos")
    =>
    (assert (Laptop 
            (Marca_modelo "Microsoft Surface Laptop 4 (13.5 inch)")  
            (Uso "Trabajo/Escuela") 
            (Tamanio "13,5") 
            (Costo "201.500")
            (Bateria "Mas de 10hs")
        )
    )
)


(defrule Microsoft_Surface_Laptop_5_15_inch ""
    (EleccionUso "Trabajo/Escuela")
    (EleccionTamanio "Mediano")
    (EleccionCosto "Mas de $300.000")
    =>
    (assert (Laptop 
            (Marca_modelo "Microsoft Surface Laptop 5 (15 inch)")  
            (Uso "Trabajo/Escuela") 
            (Tamanio "15,0") 
            (Costo "341.000")
            (Bateria "Mas de 10hs")
        )
    )   
)


(defrule ASUS_Chromebook_CX1 ""
    (EleccionUso "Trabajo/Escuela")
    (EleccionTamanio "Grande")
    (EleccionCosto "$300.000 o menos")
    =>
    (assert (Laptop 
            (Marca_modelo "ASUS Chromebook CX1")  
            (Uso "Trabajo/Escuela") 
            (Tamanio "15,6") 
            (Costo "74.300")
            (Bateria "Mas de 10hs")
        )
    )
)


(defrule LG_Gram_16 ""
    (EleccionUso "Trabajo/Escuela")
    (EleccionTamanio "Grande")
    (EleccionCosto "Mas de $300.000")
    =>
    (assert (Laptop 
            (Marca_modelo "LG Gram 16")  
            (Uso "Trabajo/Escuela") 
            (Tamanio "16,0") 
            (Costo "527.000")
            (Bateria "Mas de 10hs")
        )
    )
)