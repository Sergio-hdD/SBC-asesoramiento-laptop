(defrule definir_laptop ""
        =>
        ;Elección de uso
        (printout t "Seleccione el uso de que le va dar a la laptop:" crlf) 
        (printout t "   1 - Crear/Diseñar " crlf)
        (printout t "   2 - Juegos " crlf)
        (printout t "   3 - Trabajo/Escuela " crlf)
        (printout t "   4 - Lo básico " crlf)
        (bind ?UsoLaptop (read))

        (if (= ?UsoLaptop 1) then (bind ?UsoEnLetras "Crear/Diseñar") )
        (if (= ?UsoLaptop 2) then (bind ?UsoEnLetras "Juegos") )
        (if (= ?UsoLaptop 3) then (bind ?UsoEnLetras "Trabajo/Escuela") )
        (if (= ?UsoLaptop 4) then (bind ?UsoEnLetras "Lo básico") )

        (assert (Laptop (Uso ?UsoEnLetras)))

        ;Elección de tamaño de pantalla
        (printout t "Seleccione el tamaño de pantalla que desea:" crlf) 
        (printout t "   1 - Pequeño " crlf)
        (printout t "   2 - Mediano " crlf)
        (printout t "   3 - Grande " crlf)
        (bind ?TamanioLaptop (read))

        (if (= ?TamanioLaptop 1) then (bind ?TamanioEnLetras "Pequeño") )
        (if (= ?TamanioLaptop 2) then (bind ?TamanioEnLetras "Mediano") )
        (if (= ?TamanioLaptop 3) then (bind ?TamanioEnLetras "Grande") )

        (assert (Laptop (Tamanio ?TamanioEnLetras)))

        (if (= ?UsoLaptop 4) then ;Si va por el uso "Lo básico" solo tendrá 2 elecciones
                ;Mensaje/s de lo que ha elegido
                (printout t "   Sus elecciones fueron " crlf)
                (printout t "           Ha elegido uso:") (printout t ?UsoEnLetras crlf)
                (printout t "           Ha elegido tamaño:") (printout t ?TamanioEnLetras crlf)
        )

        (if (!= ?UsoLaptop 4) then ;Si NO va por el uso "Lo básico"
                (printout t " TODO: contemplar tamanio para uso != Lo básico " crlf)
                (printout t " TODO: seleccionar costo y bateria para uso != Lo básico " crlf)
        )

)