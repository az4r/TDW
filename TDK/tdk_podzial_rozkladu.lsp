(defun c:tdk_podzial_rozkladu( / *error* )
  (defun *error* ( tdk_przyczyna_bledu )
    (command)(command)
    (command "_layer" "_S" tdk_aktualna_warstwa "")
    (princ)
  )
  (setq tdk_podzial_rozkladu_odleglosc1 0)
  (setq tdk_podzial_rozkladu_odleglosc2 0)
  (setq tdk_podzial_rozkladu_rozklad nil)
  (setq tdk_aktualna_warstwa (getvar "CLAYER"))
  (command "_layer" "_S" "0" "")
  (while (equal tdk_podzial_rozkladu_rozklad nil)
    (command)
    (setq tdk_podzial_rozkladu_rozklad (car (entsel "Wskaz rozklad: ")))
  )
  (setq tdk_podzial_rozkladu_rozklad (entget tdk_podzial_rozkladu_rozklad))
  (setq tdk_podzial_rozkladu_skala_rozkladu (vlax-get-property (vlax-ename->vla-object (cdr (assoc -1 tdk_podzial_rozkladu_rozklad))) 'StyleName))
  (setq tdk_podzial_rozkladu_rozstaw_pretow (/ (getreal "Podaj rozstaw pretow (mm): ") 1000))
  (setq tdk_podzial_rozkladu_p1 (list (cadr (assoc 13 tdk_podzial_rozkladu_rozklad)) (caddr (assoc 13 tdk_podzial_rozkladu_rozklad)) (cadddr (assoc 13 tdk_podzial_rozkladu_rozklad))))
  (setq tdk_podzial_rozkladu_p2 (list (cadr (assoc 14 tdk_podzial_rozkladu_rozklad)) (caddr (assoc 14 tdk_podzial_rozkladu_rozklad)) (cadddr (assoc 14 tdk_podzial_rozkladu_rozklad))))
  (setq tdk_podzial_rozkladu_p3 (getpoint "Wskaz punkt przeciecia rozkladu: "))
  (command "_ZOOM" "_SCALE" "1000X")
  (setq tdk_podzial_rozkladu_a1 (angle tdk_podzial_rozkladu_p1 tdk_podzial_rozkladu_p2))
  (setq tdk_podzial_rozkladu_a2 (angle tdk_podzial_rozkladu_p2 tdk_podzial_rozkladu_p1))
  (setq tdk_podzial_rozkladu_p4 (polar tdk_podzial_rozkladu_p1 tdk_podzial_rozkladu_a1 (/ (distance tdk_podzial_rozkladu_p1 tdk_podzial_rozkladu_p2) 2)))
  (command "_ZOOM" "_SCALE" "0.001X")
  (command "_pline" tdk_podzial_rozkladu_p3 (osnap tdk_podzial_rozkladu_p4 "_per") "")
  (setq tdk_podzial_rozkladu_p5 (list (cadr (assoc 10 (reverse (entget (entlast))))) (caddr (assoc 10 (reverse (entget (entlast))))) (caddr tdk_podzial_rozkladu_p3)))
  (command "_erase" (entlast) "")
  (command "_erase" (cdr (assoc -1 tdk_podzial_rozkladu_rozklad)) "")
  (while (<= tdk_podzial_rozkladu_odleglosc1 (distance tdk_podzial_rozkladu_p1 tdk_podzial_rozkladu_p5))
    (setq tdk_podzial_rozkladu_odleglosc1 (+ tdk_podzial_rozkladu_odleglosc1 tdk_podzial_rozkladu_rozstaw_pretow))
  )
  (setq tdk_podzial_rozkladu_odleglosc1 (- tdk_podzial_rozkladu_odleglosc1 tdk_podzial_rozkladu_rozstaw_pretow))
  (while (<= tdk_podzial_rozkladu_odleglosc2 (distance tdk_podzial_rozkladu_p2 tdk_podzial_rozkladu_p5))
    (setq tdk_podzial_rozkladu_odleglosc2 (+ tdk_podzial_rozkladu_odleglosc2 tdk_podzial_rozkladu_rozstaw_pretow))
  )
  (setq tdk_podzial_rozkladu_odleglosc2 (- tdk_podzial_rozkladu_odleglosc2 tdk_podzial_rozkladu_rozstaw_pretow))
  (setq tdk_podzial_rozkladu_p6 (polar tdk_podzial_rozkladu_p1 tdk_podzial_rozkladu_a1 tdk_podzial_rozkladu_odleglosc1))
  (setq tdk_podzial_rozkladu_p7 (polar tdk_podzial_rozkladu_p2 tdk_podzial_rozkladu_a2 tdk_podzial_rozkladu_odleglosc2))
  (command "_ZOOM" "_SCALE" "1000X")
  (command "_dimaligned" tdk_podzial_rozkladu_p1 tdk_podzial_rozkladu_p6 "_T" " " tdk_podzial_rozkladu_p6)
  (command "_ZOOM" "_SCALE" "0.001X")
  ;(vlax-put-property (vlax-ename->vla-object (entlast)) 'StyleName tdk_podzial_rozkladu_skala_rozkladu)
  ;(vlax-put-property (vlax-ename->vla-object (entlast)) 'Arrowhead1Type 0)
  ;(vlax-put-property (vlax-ename->vla-object (entlast)) 'Arrowhead2Type 0)
  ;(vlax-put-property (vlax-ename->vla-object (entlast)) 'ExtLine1Suppress -1)
  ;(vlax-put-property (vlax-ename->vla-object (entlast)) 'ExtLine2Suppress -1)
  ;(vlax-put-property (vlax-ename->vla-object (entlast)) 'ExtLine2Suppress -1)
  (command "_ZOOM" "_SCALE" "1000X")
  (command "_dimaligned" tdk_podzial_rozkladu_p2 tdk_podzial_rozkladu_p7 "_T" " " tdk_podzial_rozkladu_p7)
  (command "_ZOOM" "_SCALE" "0.001X")
  ;(vlax-put-property (vlax-ename->vla-object (entlast)) 'StyleName tdk_podzial_rozkladu_skala_rozkladu)
  ;(vlax-put-property (vlax-ename->vla-object (entlast)) 'Arrowhead1Type 0)
  ;(vlax-put-property (vlax-ename->vla-object (entlast)) 'Arrowhead2Type 0)
  ;(vlax-put-property (vlax-ename->vla-object (entlast)) 'ExtLine1Suppress -1)
  ;(vlax-put-property (vlax-ename->vla-object (entlast)) 'ExtLine2Suppress -1)
  (command "_layer" "_S" tdk_aktualna_warstwa "")
  (princ)
)