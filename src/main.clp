;(defrule open-valves
;   (valves-open-through ?v)
;   =>
;   (while (> ?v 0)
;      (printout t "Valve " ?v " is open" crlf)
;      (bind ?v (- ?v 1)))
;) 

(defrule definir_laptop ""
        =>

        (bind ?CostoEnLetras " ")
        (bind ?BateriaEnLetras " ")
        (bind ?Termina 0)

        ;#################################################################################################################
        ;Elección de uso
        (printout t "Seleccione el uso de que le va dar a la laptop:" crlf) 
        (printout t "   1 - Crear/Diseñar " crlf)
        (printout t "   2 - Juegos " crlf)
        (printout t "   3 - Trabajo/Escuela " crlf)
        (printout t "   4 - Básico " crlf)
        (bind ?UsoLaptop (read))

        (switch ?UsoLaptop
                (case 1 then (bind ?UsoEnLetras "Crear/Diseñar"))
                (case 2 then (bind ?UsoEnLetras "Juegos"))
                (case 3 then (bind ?UsoEnLetras "Trabajo/Escuela"))
                (case 4 then (bind ?UsoEnLetras "Básico"))
                ;(default (bind ?UsoEnLetras 0))
        )

        ;#################################################################################################################
        ;Elección de tamaño de pantalla
        (printout t "Seleccione el tamaño de pantalla que desea:" crlf) 
        (if (!= ?UsoLaptop 2) then (printout t "   1 - Pequeño " crlf))  ;No hay laptops con pantalla pequeña para juegos
        (printout t "   2 - Mediano " crlf)
        (printout t "   3 - Grande " crlf)
        (bind ?TamanioLaptop (read))

        (switch ?TamanioLaptop
                (case 1 then (bind ?TamanioEnLetras "Pequeño"))
                (case 2 then (bind ?TamanioEnLetras "Mediano"))
                (case 3 then (bind ?TamanioEnLetras "Grande"))
                ;(default (bind ?TamanioEnLetras 0))
        )

        ;#################################################################################################################
        (if ( or (= ?UsoLaptop 4) (and (= ?UsoLaptop 3) (= ?TamanioLaptop 1) ) ) then 
        ;Si el uso es "Básico", o si el uso es "TrabajoEscuela" y tamaño "Pequeño", solo tendrá 2 elecciones
                (assert (Laptop (Uso ?UsoEnLetras) (Tamanio ?TamanioEnLetras)))
                (bind ?Termina 1)
        )


        (if (= ?Termina 0) then ;Si se puede elegir costo y duración de batería
                ;Elección de costo
                (printout t "Seleccione el presupuesto con el que cuenta:" crlf) 
                (printout t "   1 - $300.000 o menos " crlf)
                (printout t "   2 - Más de $300.000 " crlf)
                (bind ?CostoLaptop (read))

                (if (= ?CostoLaptop 1) then (bind ?CostoEnLetras "$300.000 o menos") )
                (if (= ?CostoLaptop 2) then (bind ?CostoEnLetras "Más de $300.000") )

                ;Elección de bateria
                (if (!= ?UsoLaptop 3) then ;Si el uso NO es "Trabajo/Escuela"
                        (printout t "Seleccione la duracion de bateria que desea:" crlf) 
                        (printout t "   1 - 10hs o menos " crlf)
                        (printout t "   2 - Más de 10hs " crlf)
                        (bind ?BateriaLaptop (read))

                        (if (= ?BateriaLaptop 1) then (bind ?BateriaEnLetras "10hs o menos") )
                        (if (= ?BateriaLaptop 2) then (bind ?BateriaEnLetras "Más de 10hs") )

                        (assert (Laptop (Uso ?UsoEnLetras) (Tamanio ?TamanioEnLetras) (Costo ?CostoEnLetras) (Bateria ?BateriaEnLetras) ))
                )

                (if (= ?UsoLaptop 3) then ;Si el uso SI es "Trabajo/Escuela"
                        (assert (Laptop (Uso ?UsoEnLetras) (Tamanio ?TamanioEnLetras) (Costo ?CostoEnLetras) ))
                )
        )

        ;#################################################################################################################
        ;Mensaje/s de lo que ha elegido
        (printout t "   Sus elecciones fueron " crlf)
        (printout t "           Ha elegido uso:") (printout t ?UsoEnLetras crlf)
        (printout t "           Ha elegido tamaño:") (printout t ?TamanioEnLetras crlf)
        (if (not (eq ?CostoEnLetras " "))  then 
                (printout t "           Ha elegido costo:") (printout t ?CostoEnLetras crlf)
        )
        (if (not (eq ?BateriaEnLetras " ")) then
                (printout t "           Ha elegido duración de bateria:") (printout t ?BateriaEnLetras crlf)
        )
)