(defrule motrar_recomendacion ""
    (Laptop 
            (Marca_modelo ?marca_modelo)
            (Uso ?uso)
            (Tamanio ?tamanio)
            (Costo ?costo)
            (Bateria ?bateria)
    )
    =>
    (printout t ">>> La laptop sugerida es: " crlf)
    (printout t "       Marca-modelo: "?marca_modelo crlf)
    (printout t "       Tamanio de pantalla: " ?tamanio crlf)
    (printout t "       Su costo es: $ " ?costo crlf)
    (if (not (eq ?bateria " ")) then (printout t "      Duracion: " ?bateria crlf))
)