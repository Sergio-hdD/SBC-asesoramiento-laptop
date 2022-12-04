(defrule Microsoft_Surface_Go_3_ ""
    (exists (Laptop (Uso "Crear/Diseñar")))
    =>
    (assert (Laptop (Nombre "Microsoft Surface Go 3")))
)

(defrule Lenovo_IdealPad_Duet_3i_ ""
    (and
        (Laptop (Uso "Lo básico"))
        (Laptop (Tamanio "Pequeño"))
    )
    =>
    (assert (Laptop (Nombre "Lenovo IdealPad Duet 3i")))
)

(defrule ASUS_VivoBook_13_Slate_ ""
    (and
        (Laptop (Uso "Lo básico"))
        (Laptop (Tamanio "Mediano"))
    )
    =>
    (assert (Laptop (Nombre "ASUS VivoBook 13 Slate")))
)

(defrule Lenovo_IdealPad_Flex_5_15_inch_ ""
    (and
        (Laptop (Uso "Lo básico"))
        (Laptop (Tamanio "Grande"))
    )
    =>
    (assert (Laptop (Nombre "Lenovo IdealPad Flex 5 (15 inch)")))
)