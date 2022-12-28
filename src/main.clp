(deffunction menu_elegir_uso (?Nada)
        (printout t "Seleccione el uso de que le va dar a la laptop:" crlf) 
        (printout t "   1 - Crear/Diseniar " crlf)
        (printout t "   2 - Juegos " crlf)
        (printout t "   3 - Trabajo/Escuela " crlf)
        (printout t "   4 - Basico " crlf)
        (bind ?UsoLaptop 0)
        
        (while (= ?UsoLaptop 0)
                (bind ?UsoLaptop (read))
                (switch ?UsoLaptop
                        (case 1 then (bind ?UsoEnLetras "Crear/Diseniar"))
                        (case 2 then (bind ?UsoEnLetras "Juegos"))
                        (case 3 then (bind ?UsoEnLetras "Trabajo/Escuela"))
                        (case 4 then (bind ?UsoEnLetras "Basico"))
                        (default (printout t "Opcion incorrecta, elija de nuevo" crlf) (bind ?UsoLaptop 0))
                )
        )

        (return ?UsoEnLetras)
)

(deffunction menu_elegir_tamanio (?UsoEnLetras)
        (printout t "Seleccione el tamanio de pantalla que desea:" crlf) 
        (if (not (eq ?UsoEnLetras "Juegos") ) then (printout t "   1 - Pequenio " crlf))  ;No hay laptops con pantalla pequeña para juegos
        (printout t "   2 - Mediano " crlf)
        (printout t "   3 - Grande " crlf)
        (bind ?TamanioLaptop 0)

        (while (= ?TamanioLaptop 0)
                (bind ?TamanioLaptop (read))

                (switch ?TamanioLaptop
                        (case 1 then 
                                (bind ?TamanioEnLetras "Pequenio") 
                                (if (eq ?UsoEnLetras "Juegos") then (bind ?TamanioLaptop 0) (printout t "Opcion incorrecta, elija de nuevo" crlf) )
                        )
                        (case 2 then (bind ?TamanioEnLetras "Mediano"))
                        (case 3 then (bind ?TamanioEnLetras "Grande"))
                        (default (printout t "Opcion incorrecta, elija de nuevo" crlf) (bind ?TamanioLaptop 0))
                )
        )

        (return ?TamanioEnLetras)
)

(deffunction menu_elegir_rango_costo (?Nada)
        (printout t "Seleccione el presupuesto con el que cuenta:" crlf) 
        (printout t "   1 - $300.000 o menos " crlf)
        (printout t "   2 - Mas de $300.000 " crlf)
        (bind ?CostoLaptop 0)

        (while (= ?CostoLaptop 0)
                (bind ?CostoLaptop (read))
                (switch ?CostoLaptop
                        (case 1 then (bind ?CostoEnLetras "$300.000 o menos"))
                        (case 2 then (bind ?CostoEnLetras "Mas de $300.000"))
                        (default (printout t "Opcion incorrecta, elija de nuevo" crlf) (bind ?CostoLaptop 0))
                )
        )

        (return ?CostoEnLetras)
)

(deffunction menu_elegir_rango_tamanio_bateria (?Nada)
        (printout t "Seleccione la duracion de bateria que desea:" crlf) 
        (printout t "   1 - 10hs o menos " crlf)
        (printout t "   2 - Mas de 10hs " crlf)
        (bind ?BateriaLaptop 0)
        
        (while (= ?BateriaLaptop 0)
                (bind ?BateriaLaptop (read))
                (switch ?BateriaLaptop
                        (case 1 then (bind ?BateriaEnLetras "10hs o menos") )
                        (case 2 then (bind ?BateriaEnLetras "Mas de 10hs") )
                        (default (printout t "Opcion incorrecta, elija de nuevo" crlf) (bind ?BateriaLaptop 0))
                )
        )

        (return ?BateriaEnLetras)
)

(deffunction mostrar_opciones_seleccionadas (?UsoEnLetras ?TamanioEnLetras ?CostoEnLetras ?BateriaEnLetras)
        (printout t ">>> Sus elecciones fueron " crlf)
        (printout t "           Ha elegido uso:") (printout t ?UsoEnLetras crlf)
        (printout t "           Ha elegido tamanio:") (printout t ?TamanioEnLetras crlf)
        (if (not (eq ?CostoEnLetras " "))  then 
                (printout t "           Ha elegido costo:") (printout t ?CostoEnLetras crlf)
        )
        (if (not (eq ?BateriaEnLetras " ")) then
                (printout t "           Ha elegido duracion de bateria:") (printout t ?BateriaEnLetras crlf)
        )
)

(defrule definir_laptop ""
        =>

        (bind ?CostoEnLetras " ")
        (bind ?BateriaEnLetras " ")
        (bind ?Termina 0)

        ;Elección de uso
        (bind ?UsoEnLetras (menu_elegir_uso " "))

        ;Elección de tamaño de pantalla
        (bind ?TamanioEnLetras (menu_elegir_tamanio ?UsoEnLetras))

        ;Si el uso es "Básico", o si el uso es "TrabajoEscuela" y tamaño "Pequeño",  o  Si el uso es 
        ;"Crear/Diseñar" y el tamaño de la pantalla es "Pequeño" o "Mediano", o 
        ;Si el uso es "Juegos" y el tamaño de la pantalla es "Mediano", solo tendrá 2 elecciones (uso y tamanio)
        (if     ( or
                        (or (eq ?UsoEnLetras "Basico") (and (eq ?UsoEnLetras "Trabajo/Escuela") (eq ?TamanioEnLetras "Pequenio") ) )
                        (and (eq ?UsoEnLetras "Crear/Diseniar") (or (eq ?TamanioEnLetras "Pequenio") (eq ?TamanioEnLetras "Mediano") ) )
                        (and (eq ?UsoEnLetras "Juegos") (eq ?TamanioEnLetras "Mediano") )
                ) then 
                (assert (EleccionUso ?UsoEnLetras) (EleccionTamanio ?TamanioEnLetras))
                (bind ?Termina 1)
        )

        ;Si se puede elegir costo y duración de batería, no termina
        (if (= ?Termina 0) then 
                ;Elección de costo
                (bind ?CostoEnLetras (menu_elegir_rango_costo " "))

                ;Si el uso es "Crear/Diseñar" y el tamaño de la pantalla es "Grande" y el costo "Más de 300.000", no existen laptops para más de 10 horas o
                ;Si el uso es "Juegos" y el tamaño de la pantalla es "Grande" y el costo "$300.000 o menos", no existen laptops para más de 10 horas.
                (if     (or 
                                ( and (eq ?UsoEnLetras "Crear/Diseniar") (eq ?TamanioEnLetras "Grande") (or (eq ?CostoEnLetras "Mas de $300.000") (eq ?CostoEnLetras "$300.000 o menos") ) ) 
                                ( and (eq ?UsoEnLetras "Juegos") (eq ?TamanioEnLetras "Grande") (eq ?CostoEnLetras "$300.000 o menos") )
                        ) then 
                        (assert (EleccionUso ?UsoEnLetras) (EleccionTamanio ?TamanioEnLetras) (EleccionCosto ?CostoEnLetras))
                        (bind ?Termina 1)
                )

                ;Si el uso NO es "Trabajo/Escuela" se puede elegir rango de duración de batería
                (if (and (not (eq ?UsoEnLetras "Trabajo/Escuela")) (= ?Termina 0) ) then 
                        ;Elección de bateria
                        (bind ?BateriaEnLetras (menu_elegir_rango_tamanio_bateria " "))

                        (assert (EleccionUso ?UsoEnLetras) (EleccionTamanio ?TamanioEnLetras) (EleccionCosto ?CostoEnLetras) (EleccionBateria ?BateriaEnLetras))
                )

                ;Si el uso es "Trabajo/Escuela"
                (if (eq ?UsoEnLetras "Trabajo/Escuela") then
                        (assert (EleccionUso ?UsoEnLetras) (EleccionTamanio ?TamanioEnLetras) (EleccionCosto ?CostoEnLetras))
                )
        )

        ;Motramos lo que ha elegido
        (mostrar_opciones_seleccionadas ?UsoEnLetras ?TamanioEnLetras ?CostoEnLetras ?BateriaEnLetras)
        
)