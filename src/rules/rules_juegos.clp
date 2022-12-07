(defrule ASUS_ROG_Flow_Z13 ""
    (Laptop 
        (Uso "Juegos") 
        (Tamanio "Mediano") 
        (Costo "Mas de $300.000") 
        (Bateria "10hs o menos")
    )
    =>
    (printout t "La laptop sugerida es: ASUS ROG Flow Z13" crlf)
)

(defrule Razer_Blade_15 ""
    (Laptop 
        (Uso "Juegos") 
        (Tamanio "Grande") 
        (Costo "Mas de $300.000") 
        (Bateria "10hs o menos")
    )
    =>
    (printout t "La laptop sugerida es: Razer Blade 15" crlf)
)

(defrule HP_Victus_Gaming_15 ""
    (Laptop 
        (Uso "Juegos") 
        (Tamanio "Grande") 
        (Costo "$300.000 o menos") 
        (Bateria "10hs o menos")
    )
    =>
    (printout t "La laptop sugerida es: HP Victus Gaming 15" crlf)
)

(defrule ASUS_ROG_Zephyrus_Advantage_Edition_14 ""
    (Laptop 
        (Uso "Juegos") 
        (Tamanio "Grande") 
        (Costo "Mas de $300.000") 
        (Bateria "Mas de 10hs")
    )
    =>
    (printout t "La laptop sugerida es: ASUS ROG Zephyrus Advantage Edition 14" crlf)
)
