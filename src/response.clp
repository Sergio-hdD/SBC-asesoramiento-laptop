(defrule Microsoft_Surface_Go_3 ""
    (exists (Laptop (Marca "Microsoft") (Modelo "Surface Go 3")))
    =>
    (printout t "La laptop sugerido es: Microsoft Surface Go 3" crlf)
)