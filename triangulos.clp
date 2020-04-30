(defrule tipo-robot-regla
(initial-fact)
=>
(printout t "Porque quieres clasificar los triangulos (lados/angulos)? " crlf)
(assert (tipo-triangulo (read)))
)

(defrule tipo-triangulo
(tipo-triangulo lados)
=>
(printout t "Ingrese lados iguales: 3/2/ninguno " crlf)
(assert (numero-lados (read)))
)

(defrule tipo-triangulo-angulos
(tipo-triangulo angulos)
=>
(printout t "Ingrese un angulo: 90 / 1 hasta 89 / 91 hasta 180" crlf)
(assert (numero-angulo (read)))
)

(defrule triangulo-equilatero
(tipo-triangulo lados)
(numero-lados 3)
=>
(printout t "El triangulo es Equilatero" crlf)
)

(defrule triangulo-isoceles
(tipo-triangulo lados)
(numero-lados 2)
=>
(printout t "El triangulo es Isoceles" crlf)
)

(defrule triangulo-escaleno
(tipo-triangulo lados)
(numero-lados ninguno)
=>
(printout t "El triangulo es Escaleno" crlf)
)


(defrule triangulo-rectangulo
(tipo-triangulo angulos)
(numero-angulo 90)
=>
(printout t "El triangulo es Rectangulo" crlf)
)


(defrule triangulo-acutangulo
(tipo-triangulo angulos)
(numero-angulo ?x)
(test (and (< ?x 89) (> ?x 1)))
=>
(printout t "El triangulo es Acutangulo" crlf)
)

(defrule triangulo-obtusangulo
(tipo-triangulo angulos)
(numero-angulo ?x)
(test (and (< ?x 180) (> ?x 91)))
=>
(printout t "El triangulo es Obtusangulo" crlf)
)

