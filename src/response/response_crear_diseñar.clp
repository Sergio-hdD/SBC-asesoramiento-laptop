(defrule Microsoft_Surface_Go_3 ""
    (exists (Laptop (Marca_modelo "Microsoft Surface Go 3")))
    =>
    (printout t "La laptop sugerida es: Microsoft Surface Go 3" crlf)
)
