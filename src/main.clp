(defrule open-valves
   (valves-open-through ?v)
   =>
   (while (> ?v 0)
      (printout t "Valve " ?v " is open" crlf)
      (bind ?v (- ?v 1)))
) 

(defrule definir_laptop ""
        =>
        ;Elección de uso
        (printout t "Seleccione el uso de que le va dar a la laptop:" crlf) 
        (printout t "   1 - Crear/Diseñar " crlf)
        (printout t "   2 - Juegos " crlf)
        (printout t "   3 - Trabajo/Escuela " crlf)
        (printout t "   4 - Básico " crlf)
        (bind ?UsoLaptop (read))

        (if (= ?UsoLaptop 1) then (bind ?UsoEnLetras "Crear/Diseñar") )
        (if (= ?UsoLaptop 2) then (bind ?UsoEnLetras "Juegos") )
        (if (= ?UsoLaptop 3) then (bind ?UsoEnLetras "Trabajo/Escuela") )
        (if (= ?UsoLaptop 4) then (bind ?UsoEnLetras "Básico") )

        ;Elección de tamaño de pantalla
        (printout t "Seleccione el tamaño de pantalla que desea:" crlf) 
        (if (!= ?UsoLaptop 2) then (printout t "   1 - Pequeño " crlf)) 
        (printout t "   2 - Mediano " crlf)
        (printout t "   3 - Grande " crlf)
        (bind ?TamanioLaptop (read))

        (if (= ?TamanioLaptop 1) then (bind ?TamanioEnLetras "Pequeño") )
        (if (= ?TamanioLaptop 2) then (bind ?TamanioEnLetras "Mediano") )
        (if (= ?TamanioLaptop 3) then (bind ?TamanioEnLetras "Grande") )

        (if (= ?UsoLaptop 4) then ;Si va por el uso "Básico" solo tendrá 2 elecciones
                (assert (Laptop (Uso ?UsoEnLetras) (Tamanio ?TamanioEnLetras)))
                ;Mensaje/s de lo que ha elegido
                (printout t "   Sus elecciones fueron " crlf)
                (printout t "           Ha elegido uso:") (printout t ?UsoEnLetras crlf)
                (printout t "           Ha elegido tamaño:") (printout t ?TamanioEnLetras crlf)
        )

        (if (!= ?UsoLaptop 4) then ;Si NO va por el uso "Básico"
                ;Elección de costo
                (printout t "Seleccione el presupuesto con el que cuenta:" crlf) 
                (printout t "   1 - $300.000 o menos " crlf)
                (printout t "   2 - Más de $300.000 " crlf)
                (bind ?CostoLaptop (read))

                (if (= ?CostoLaptop 1) then (bind ?CostoEnLetras "$300.000 o menos") )
                (if (= ?CostoLaptop 2) then (bind ?CostoEnLetras "Más de $300.000") )

                ;Elección de bateria
                (printout t "Seleccione la duracion de bateria que desea:" crlf) 
                (printout t "   1 - 10hs o menos " crlf)
                (printout t "   2 - Más de 10hs " crlf)
                (bind ?BateriaLaptop (read))

                (if (= ?BateriaLaptop 1) then (bind ?BateriaEnLetras "10hs o menos") )
                (if (= ?BateriaLaptop 2) then (bind ?BateriaEnLetras "Más de 10hs") )

                (assert (Laptop (Uso ?UsoEnLetras) (Tamanio ?TamanioEnLetras) (Costo ?CostoEnLetras) (Bateria ?BateriaEnLetras) ))
                ;Mensaje/s de lo que ha elegido
                (printout t "   Sus elecciones fueron " crlf)
                (printout t "           Ha elegido uso:") (printout t ?UsoEnLetras crlf)
                (printout t "           Ha elegido tamaño:") (printout t ?TamanioEnLetras crlf)
                (printout t "           Ha elegido costo:") (printout t ?CostoEnLetras crlf)
                (printout t "           Ha elegido duración de bateria:") (printout t ?BateriaEnLetras crlf)

        )

)