(defrule inicial
(val $?x)
=>
(assert (vector-aux ?x))
)

(defrule ordena
?aux <- (vector-aux $?in ?num1 ?num2&:(< ?num2 ?num1) $?fn)
=>
(retract ?aux)
(assert (vector-aux $?in ?num2 ?num1 $?fn))
)

(defrule final
(not (vector-aux $?in ?num1 ?num2&:(< ?num2 ?num1) $?fn))
(val $?x)
(vector-aux $?y)
=>
(printout t "la lista es" ?y crlf)
)

(deffacts maximo
(val 13 50 30 15 70 5)
)

