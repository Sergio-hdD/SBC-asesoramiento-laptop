;Todas las notebooks para Trabajo/Escuela tienen más de 10 horas de bateria por lo que no es posible elegir duración de la bateria

(defrule Acer_Chromebook_Spin_311 ""
    (Laptop 
        (Uso "Trabajo/Escuela")
        (Tamanio "Pequenio")
    )
    =>
    (printout t "La laptop sugerida es: Acer Chromebook Spin 311" crlf)
)


; No hay una laptop para Trabajo/Escuela con una pantalla pequeña y con un costo mayor a 300.000
; Osea que si se elige UsoLaptop 3 y TamanioLaptop 1 debería terminar ahi


(defrule Microsoft_Surface_Laptop_4_13.5_inch ""
    (Laptop 
        (Uso "Trabajo/Escuela")
        (Tamanio "Mediano")
        (Costo "$300.000 o menos")
    )
    =>
    (printout t "La laptop sugerida es: Microsoft Surface Laptop 4 (13.5 inch)" crlf)
)


(defrule Microsoft_Surface_Laptop_5_15_inch ""
    (Laptop 
            (Uso "Trabajo/Escuela")
            (Tamanio "Mediano")
            (Costo "Mas de $300.000")
    )
    =>
    (printout t "La laptop sugerida es: Microsoft Surface Laptop 5 (15 inch)" crlf)
)


(defrule ASUS_Chromebook_CX1 ""
    (Laptop 
        (Uso "Trabajo/Escuela")
        (Tamanio "Grande")
        (Costo "$300.000 o menos")
    )
    =>
    (printout t "La laptop sugerida es: ASUS Chromebook CX1" crlf)
)


(defrule LG_Gram_16 ""
    (Laptop 
        (Uso "Trabajo/Escuela")
        (Tamanio "Grande")
        (Costo "Mas de $300.000")
    )
    =>
    (printout t "La laptop sugerida es: LG Gram 16" crlf)
)