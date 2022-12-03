(defrule definir_laptop ""
        =>
        (printout t "Seleccione el uso de que le va dar a la laptop:" crlf) 
                (printout t "   1 - Crear/Diseñar " crlf)
                (printout t "   2 - Juegos " crlf)
                (printout t "   3 - Trabajo/Escuela " crlf)
                (printout t "   4 - Básico " crlf)
                (bind ?UsoLaptop (read))
                (printout t "Ingresaste:") (printout t ?UsoLaptop crlf)

        (if (= ?UsoLaptop 1) then (assert (UsoLaptop (Nombre "Crear/Diseñar"))))
        (if (= ?UsoLaptop 2) then (assert (UsoLaptop (Nombre "Juegos"))))
        (if (= ?UsoLaptop 3) then (assert (UsoLaptop (Nombre "Trabajo/Escuela"))))
        (if (= ?UsoLaptop 4) then (assert (UsoLaptop (Nombre "Básico"))))
        
)