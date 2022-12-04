(defrule definir_laptop ""
        =>
        ;Elección de uso
        (printout t "Seleccione el uso de que le va dar a la laptop:" crlf) 
                (printout t "   1 - Crear/Diseñar " crlf)
                (printout t "   2 - Juegos " crlf)
                (printout t "   3 - Trabajo/Escuela " crlf)
                (printout t "   4 - Lo básico " crlf)
                (bind ?UsoLaptop (read))
                (printout t "Ingresaste:") (printout t ?UsoLaptop crlf)

        (if (= ?UsoLaptop 1) then (assert (Laptop (Uso "Crear/Diseñar"))))
        (if (= ?UsoLaptop 2) then (assert (Laptop (Uso "Juegos"))))
        (if (= ?UsoLaptop 3) then (assert (Laptop (Uso "Trabajo/Escuela"))))
        (if (= ?UsoLaptop 4) then (assert (Laptop (Uso "Lo básico"))))

        ;Elección de tamaño de pantalla
        (printout t "Seleccione el tamaño de pantalla que desea:" crlf) 
        (printout t "   1 - Pequeño " crlf)
        (printout t "   2 - Mediano " crlf)
        (printout t "   3 - Grande " crlf)
        (bind ?TamanioLaptop (read))
        (printout t "Ingresaste:") (printout t ?TamanioLaptop crlf)
                
        (if (= ?TamanioLaptop 1) then (assert (Laptop (Tamanio "Pequeño"))))
        (if (= ?TamanioLaptop 2) then (assert (Laptop (Tamanio "Mediano"))))
        (if (= ?TamanioLaptop 3) then (assert (Laptop (Tamanio "Grande"))))
        
)