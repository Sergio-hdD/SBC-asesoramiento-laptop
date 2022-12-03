(defrule Microsoft_Surface_Go_3_ ""
    (exists (UsoLaptop (Nombre "Crear/Diseñar")))
    =>
    (assert (Laptop (Marca "Microsoft") (Modelo "Surface Go 3")))
)