
;Define rules for the decision of the monkey approach to banana

(defrule approach-monkey
	(isOn (theObject Monkey) (onObject Floor))
	(isOn (theObject Table) (onObject Floor))
	=>
	(approach(Object Monkey) (Object Table))
	(areNear(Object Monkey) (Object Table)))

(defrule get-on-table
	(areNear (Object Monkey) (Object Table))
	(not (isOn (theObject *) (onObject Table))
	=>
	(isOn (theObject Monkey) (onObject Table)))



	