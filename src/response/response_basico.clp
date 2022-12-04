(defrule Lenovo_IdealPad_Duet_3i ""
    (exists (Laptop (Marca_modelo "Lenovo IdealPad Duet 3i")))
    =>
    (printout t "La laptop sugerida es: Lenovo IdealPad Duet 3i" crlf)
)

(defrule ASUS_VivoBook_13_Slate ""
    (exists (Laptop (Marca_modelo "ASUS VivoBook 13 Slate")))
    =>
    (printout t "La laptop sugerida es: ASUS VivoBook 13 Slate" crlf)
)

(defrule Lenovo_IdealPad_Flex_5_15_inch ""
    (exists (Laptop (Marca_modelo "Lenovo IdealPad Flex 5 (15 inch)")))
    =>
    (printout t "La laptop sugerida es: Lenovo IdealPad Flex 5 (15 inch)" crlf)
)