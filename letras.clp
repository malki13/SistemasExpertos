(deffacts letras
(H)
(K)
)

(defrule regla1
(A)
(not (D))
=>
(assert (E))
)

(defrule regla2
(B)
(not (D))
=>
(assert (D))
)

(defrule regla3
(H)
(not (D))
=>
(assert (A))
)

(defrule regla4
(E)
(G)
(not (D))
=>
(assert (C))
)

(defrule regla5
(E)
(K)
(not (D))
=>
(assert (B))
)

(defrule regla6
(D)
(E)
(K)
=>
(assert (C))
)

(defrule regla7
(G)
(K)
(F)
(not (D))
=>
(assert (A))
)

(defrule final
(D)
=>
(assert (Se activo "D"))
)

