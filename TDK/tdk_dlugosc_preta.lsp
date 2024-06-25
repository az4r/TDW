(defun c:tdk_dlugosc_preta ()
  (setq tdk_aktualna_dlugosc_preta_otulina1 "0")
  (setq tdk_aktualna_dlugosc_preta_otulina2 "0")
  (setq tdk_dlugosc_preta_p1 (getpoint "\nWskaz poczatek preta: "))
  (setq tdk_dlugosc_preta_p2 (getpoint tdk_dlugosc_preta_p1 "\nWskaz koniec preta"))
  
  (setq tdk_dlugosc_preta_otulina1 (getstring (strcat "\nPodaj odsuniecie poczatku preta (mm): <" tdk_aktualna_dlugosc_preta_otulina1 ">")))
  (if (equal tdk_dlugosc_preta_otulina1 "")
      (setq tdk_dlugosc_preta_otulina1 tdk_aktualna_dlugosc_preta_otulina1)
      (princ)
  )
  (setq tdk_aktualna_dlugosc_preta_otulina1 tdk_dlugosc_preta_otulina1)
  
  (setq tdk_dlugosc_preta_otulina2 (getstring (strcat "\nPodaj odsuniecie konca preta (mm): <" tdk_aktualna_dlugosc_preta_otulina2 ">")))
  (if (equal tdk_dlugosc_preta_otulina2 "")
      (setq tdk_dlugosc_preta_otulina2 tdk_aktualna_dlugosc_preta_otulina2)
      (princ)
  )
  (setq tdk_aktualna_dlugosc_preta_otulina2 tdk_dlugosc_preta_otulina2)
  
  (setq tdk_dlugosc_preta_rzeczywista_dl_preta (* 5 (fix (+ (/ (-(-(* (distance tdk_dlugosc_preta_p1 tdk_dlugosc_preta_p2) 1000) (atoi tdk_dlugosc_preta_otulina1))(atoi tdk_dlugosc_preta_otulina2)) 5) 0.0001))))
  
  (if (> tdk_dlugosc_preta_rzeczywista_dl_preta 12000)
     (setq tdk_dlugosc_preta_zbrojeniowego "12.0000")
     (progn
     (setq tdk_dlugosc_preta_zbrojeniowego (rtos (* 50 (fix (+ (/ (-(-(* (distance tdk_dlugosc_preta_p1 tdk_dlugosc_preta_p2) 1000) (atoi tdk_dlugosc_preta_otulina1))(atoi tdk_dlugosc_preta_otulina2)) 50) 0.0001))) 2 0))
     (setq tdk_dlugosc_preta_zbrojeniowego (/ (atof tdk_dlugosc_preta_zbrojeniowego) 1000))
     (setq tdk_dlugosc_preta_zbrojeniowego (rtos tdk_dlugosc_preta_zbrojeniowego 2 4))
     )
  )
  
  (setq tdk_dlugosc_preta_zbrojeniowego_komunikat (strcat "Maksymalna dlugosc preta wynosi: " tdk_dlugosc_preta_zbrojeniowego "m"))
  
  (princ tdk_dlugosc_preta_zbrojeniowego_komunikat)
  (alert tdk_dlugosc_preta_zbrojeniowego_komunikat)
  (princ)
)