(defrule Lenovo_IdealPad_Duet_3i_ ""
    (and
        (Laptop (Uso "Básico"))
        (Laptop (Tamanio "Pequeño"))
    )
    =>
    (assert (Laptop (Marca_modelo "Lenovo IdealPad Duet 3i")))
)

(defrule ASUS_VivoBook_13_Slate_ ""
    (and
        (Laptop (Uso "Básico"))
        (Laptop (Tamanio "Mediano"))
    )
    =>
    (assert (Laptop (Marca_modelo "ASUS VivoBook 13 Slate")))
)

(defrule Lenovo_IdealPad_Flex_5_15_inch_ ""
    (and
        (Laptop (Uso "Básico"))
        (Laptop (Tamanio "Grande"))
    )
    =>
    (assert (Laptop (Marca_modelo "Lenovo IdealPad Flex 5 (15 inch)")))
)