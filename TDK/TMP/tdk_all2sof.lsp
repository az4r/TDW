(defun c:tdk_all2sof()
  
  (setq tdk_all2sof_selekcja nil)
  (command "-scalelistedit" "D" "1:50_SOFI" "1000:50" "Z")
  (setvar "CANNOSCALE" "1:50_SOFI")
  
  ;########## WZOR ##########
  ;(setq tdk_all2sof_selekcja (ssget "X" (list (cons 62 253) (cons 8 "XR$6$Fahrbahn") (cons 6 "AUSGEZOGEN") (cons 370 13))))
  ;(if (equal tdk_all2sof_selekcja nil)
    ;(princ)
    ;(progn  
      ;(command "_erase" tdk_all2sof_selekcja "")
      ;(setq tdk_all2sof_selekcja nil)
    ;)
  ;)
  
  ;(setq tdk_all2sof_selekcja (ssget "X" (list (cons 62 7) (cons 8 "XR$6$Decke") (cons 6 "VERDECKT2_S2") (cons 370 18))))
  ;(if (equal tdk_all2sof_selekcja nil)
    ;(princ)
    ;(progn  
      ;(command "_chprop" tdk_all2sof_selekcja "" "_C" "252" "_LT" "ByLayer" "_S" "1.0000" "_LW" "ByLayer" "_TR" "0" "_LA" "DK-ING_Decke" "")
      ;(setq tdk_all2sof_selekcja nil)
    ;)
  ;)
  
  ;"_C" "_LT" "_S" "_LW" "_TR" "_LA"
  
  (setq tdk_all2sof_selekcja (ssget "X" (list (cons 62 8) (cons 8 "XR$6$Allgemein07") (cons 6 "AUSGEZOGEN") (cons 370 18))))
  (if (equal tdk_all2sof_selekcja nil)
    (princ)
    (progn  
      (command "_chprop" tdk_all2sof_selekcja "" "_C" "252" "_LT" "AUSGEZOGEN" "_S" "1.0000" "_LW" "0.18" "_TR" "0" "_LA" "DK-ING_Decke" "")
      (setq tdk_all2sof_selekcja nil)
    )
  )
  
  (setq tdk_all2sof_selekcja (ssget "X" (list (cons 62 7) (cons 8 "XR$6$Achsen") (cons 6 "GETRENNT2_S10") (cons 370 18))))
  (if (equal tdk_all2sof_selekcja nil)
    (princ)
    (progn  
      (command "_chprop" tdk_all2sof_selekcja "" "_C" "ByLayer" "_LT" "ByLayer" "_S" "10" "_LW" "ByLayer" "_TR" "JakWarstwa" "_LA" "DK-ING_Achse" "")
      (setq tdk_all2sof_selekcja nil)
    )
  )  
  
  (setq tdk_all2sof_selekcja (ssget "X" (list (cons 62 8) (cons 8 "XR$6$Decke") (cons 6 "AUSGEZOGEN") (cons 370 18))))
  (if (equal tdk_all2sof_selekcja nil)
    (princ)
    (progn
      (command "_chprop" tdk_all2sof_selekcja "" "_C" "252" "_LA" "DK-ING_Decke" "")
      (setq tdk_all2sof_selekcja nil)
    )
  )

  (setq tdk_all2sof_selekcja (ssget "X" (list (cons 62 8) (cons 8 "XR$6$Decke") (cons 6 "AUSGEZOGEN") (cons 370 13))))
  (if (equal tdk_all2sof_selekcja nil)
    (princ)
    (progn
      (command "_chprop" tdk_all2sof_selekcja "" "_C" "252" "_LA" "DK-ING_Decke" "")
      (setq tdk_all2sof_selekcja nil)
    )
  ) 
  
  (setq tdk_all2sof_selekcja (ssget "X" (list (cons 62 8) (cons 8 "XR$6$Gruendung") (cons 6 "AUSGEZOGEN") (cons 370 18))))
  (if (equal tdk_all2sof_selekcja nil)
    (princ)
    (progn  
      (command "_chprop" tdk_all2sof_selekcja "" "_C" "252" "_LA" "DK-ING_Fundament" "")
      (setq tdk_all2sof_selekcja nil)
    )
  )

  (setq tdk_all2sof_selekcja (ssget "X" (list (cons 62 7) (cons 8 "XR$6$Fugen") (cons 6 "ALL_S23") (cons 370 18))))
  (if (equal tdk_all2sof_selekcja nil)
    (princ)
    (progn  
      (command "_chprop" tdk_all2sof_selekcja "" "_C" "ByLayer" "_LT" "DASHED" "_S" "0.2500" "_LW" "ByLayer" "_LA" "DK-ING_Detail" "")
      (setq tdk_all2sof_selekcja nil)
    )
  )
  
  (setq tdk_all2sof_selekcja (ssget "X" (list (cons 62 8) (cons 8 "XR$6$Pfahlkopfbalken") (cons 6 "AUSGEZOGEN") (cons 370 18))))
  (if (equal tdk_all2sof_selekcja nil)
    (princ)
    (progn  
      (command "_chprop" tdk_all2sof_selekcja "" "_C" "252" "_LA" "DK-ING_Fundament" "")
      (setq tdk_all2sof_selekcja nil)
    )
  )
  
  (setq tdk_all2sof_selekcja (ssget "X" (list (cons 62 7) (cons 8 "XR$6$Leerrohre") (cons 6 "ALL_S23") (cons 370 18))))
  (if (equal tdk_all2sof_selekcja nil)
    (princ)
    (progn  
      (command "_chprop" tdk_all2sof_selekcja "" "_C" "252" "_LT" "DASHED" "_S" "0.1000" "_LW" "0.13" "_TR" "JakWarstwa" "_LA" "DK-ING_Detail" "")
      (setq tdk_all2sof_selekcja nil)
    )
  )
  
  (setq tdk_all2sof_selekcja (ssget "X" (list (cons 62 7) (cons 8 "XR$6$Leerrohre") (cons 6 "AUSGEZOGEN") (cons 370 18))))
  (if (equal tdk_all2sof_selekcja nil)
    (princ)
    (progn  
      (command "_chprop" tdk_all2sof_selekcja "" "_C" "2" "_LW" "ByLayer" "_TR" "JakWarstwa" "_LA" "DK-ING_Detail" "")
      (setq tdk_all2sof_selekcja nil)
    )
  )
  
  (setq tdk_all2sof_selekcja (ssget "X" (list (cons 62 7) (cons 8 "XR$6$Wand") (cons 6 "AUSGEZOGEN") (cons 370 18))))
  (if (equal tdk_all2sof_selekcja nil)
    (princ)
    (progn  
      (command "_chprop" tdk_all2sof_selekcja "" "_C" "ByLayer" "_LT" "ByLayer" "_S" "0.2500" "_LW" "ByLayer" "_TR" "JakWarstwa" "_LA" "DK-ING_Wand" "")
      (setq tdk_all2sof_selekcja nil)
    )
  )
  
  (setq tdk_all2sof_selekcja (ssget "X" (list (cons 62 7) (cons 8 "XR$6$Wand") (cons 6 "AUSGEZOGEN") (cons 370 25))))
  (if (equal tdk_all2sof_selekcja nil)
    (princ)
    (progn  
      (command "_chprop" tdk_all2sof_selekcja "" "_C" "ByLayer" "_LT" "ByLayer" "_S" "0.2500" "_LW" "0.25" "_TR" "JakWarstwa" "_LA" "DK-ING_Wand" "")
      (setq tdk_all2sof_selekcja nil)
    )
  )
  
  (setq tdk_all2sof_selekcja (ssget "X" (list (cons 62 7) (cons 8 "XR$6$Pfahlkopfbalken") (cons 6 "AUSGEZOGEN") (cons 370 25))))
  (if (equal tdk_all2sof_selekcja nil)
    (princ)
    (progn  
      (command "_chprop" tdk_all2sof_selekcja "" "_C" "ByLayer" "_LT" "ByLayer" "_S" "0.2500" "_LW" "0.25" "_TR" "JakWarstwa" "_LA" "DK-ING_Wand" "")
      (setq tdk_all2sof_selekcja nil)
    )
  )
  
  (setq tdk_all2sof_selekcja (ssget "X" (list (cons 62 7) (cons 8 "XR$6$Wand") (cons 6 "ALL_S23") (cons 370 25))))
  (if (equal tdk_all2sof_selekcja nil)
    (princ)
    (progn  
      (command "_chprop" tdk_all2sof_selekcja "" "_C" "ByLayer" "_LT" "ByLayer" "_S" "0.2500" "_LW" "0.25" "_TR" "JakWarstwa" "_LA" "DK-ING_Wand" "")
      (setq tdk_all2sof_selekcja nil)
    )
  )
  
  (setq tdk_all2sof_selekcja (ssget "X" (list (cons 62 7) (cons 8 "XR$6$Decke") (cons 6 "VERDECKT2_S2") (cons 370 18))))
  (if (equal tdk_all2sof_selekcja nil)
    (princ)
    (progn  
      (command "_chprop" tdk_all2sof_selekcja "" "_C" "252" "_LT" "ByLayer" "_S" "1.0000" "_LW" "ByLayer" "_TR" "0" "_LA" "DK-ING_Decke" "")
      (setq tdk_all2sof_selekcja nil)
    )
  )

  ;########## ROZBICIE BLOKOW ##########
  (setq tdk_all2sof_selekcja (ssget "X" (list (cons 0 "INSERT"))))
  (if (equal tdk_all2sof_selekcja nil)
    (princ)
    (progn
      (setq tdk_aktualna_wartosc_qaflags (getvar "QAFLAGS"))
      (setvar "QAFLAGS" 5)
      (command "_explode" tdk_all2sof_selekcja "")
      (setvar "QAFLAGS" tdk_aktualna_wartosc_qaflags)
      (setq tdk_all2sof_selekcja nil)
    )
  )
  
  (setq tdk_all2sof_selekcja (ssget "X" (list (cons 62 7) (cons 8 "XR$6$Wand") (cons 6 "AUSGEZOGEN") (cons 370 25))))
  (if (equal tdk_all2sof_selekcja nil)
    (princ)
    (progn  
      (command "_chprop" tdk_all2sof_selekcja "" "_C" "1" "_LT" "SOF_ARBEITSFUGE" "_S" "0.0500" "_LW" "ByLayer" "_TR" "JakWarstwa" "_LA" "DK-ING_Arbeitsfuge" "")
      (setq tdk_all2sof_selekcja nil)
    )
  )
  
  (setq tdk_all2sof_selekcja (ssget "X" (list (cons 62 7) (cons 8 "XR$6$Wand") (cons 6 "AUSGEZOGEN") (cons 370 18))))
  (if (equal tdk_all2sof_selekcja nil)
    (princ)
    (progn  
      (command "_chprop" tdk_all2sof_selekcja "" "_C" "1" "_LT" "SOF_ARBEITSFUGE" "_S" "0.0500" "_LW" "ByLayer" "_TR" "JakWarstwa" "_LA" "DK-ING_Arbeitsfuge" "")
      (setq tdk_all2sof_selekcja nil)
    )
  )
  
  (setq tdk_all2sof_selekcja (ssget "X" (list (cons 62 8) (cons 8 "XR$6$Pfahlkopfbalken") (cons 6 "AUSGEZOGEN") (cons 370 18))))
  (if (equal tdk_all2sof_selekcja nil)
    (princ)
    (progn  
      (command "_chprop" tdk_all2sof_selekcja "" "_C" "1" "_LT" "SOF_ARBEITSFUGE" "_S" "0.0500" "_LW" "ByLayer" "_TR" "JakWarstwa" "_LA" "DK-ING_Arbeitsfuge" "")
      (setq tdk_all2sof_selekcja nil)
    )
  )

  (setq tdk_all2sof_selekcja (ssget "X" (list (cons 62 117) (cons 8 "XR$6$Fugen") (cons 6 "AUSGEZOGEN") (cons 370 18))))
    (if (equal tdk_all2sof_selekcja nil)
    (princ)
    (progn  
      (command "_chprop" tdk_all2sof_selekcja "" "_C" "252" "_LT" "ByLayer" "_LW" "ByLayer" "_LA" "DK-ING_Fugen" "")
      (setq tdk_all2sof_selekcja nil)
    )
  )

  (setq tdk_all2sof_selekcja (ssget "X" (list (cons 62 8) (cons 8 "XR$6$Fugen") (cons 6 "AUSGEZOGEN") (cons 370 18))))
    (if (equal tdk_all2sof_selekcja nil)
    (princ)
    (progn  
      (command "_chprop" tdk_all2sof_selekcja "" "_C" "252" "_LT" "ByLayer" "_LW" "ByLayer" "_LA" "DK-ING_Fugen" "")
      (setq tdk_all2sof_selekcja nil)
    )
  )
  
  (setq tdk_all2sof_selekcja (ssget "X" (list (cons 62 117) (cons 8 "XR$6$Füllfläche") (cons 6 "AUSGEZOGEN") (cons 370 13))))
    (if (equal tdk_all2sof_selekcja nil)
    (princ)
    (progn  
      (command "_chprop" tdk_all2sof_selekcja "" "_C" "ByLayer" "_LT" "ByLayer" "_LW" "ByLayer" "_LA" "DK-ING_Fugen" "")
      (setq tdk_all2sof_selekcja nil)
    )
  )
  
  (setq tdk_all2sof_selekcja (ssget "X" (list (cons 62 7) (cons 8 "XR$6$Allgemein06") (cons 6 "AUSGEZOGEN") (cons 370 18))))
    (if (equal tdk_all2sof_selekcja nil)
    (princ)
    (progn  
      (command "_chprop" tdk_all2sof_selekcja "" "_C" "ByLayer" "_LT" "ByLayer" "_LW" "ByLayer" "_LA" "DK-ING_Fugen" "")
      (setq tdk_all2sof_selekcja nil)
    )
  )
  
  (setq tdk_all2sof_selekcja (ssget "X" (list (cons 62 8) (cons 8 "XR$6$Bohrpfahl") (cons 6 "ALL_S23") (cons 370 18))))
  (if (equal tdk_all2sof_selekcja nil)
    (princ)
    (progn  
      (command "_chprop" tdk_all2sof_selekcja "" "_C" "252" "_LT" "ByLayer" "_LW" "0.18" "_TR" "JakWarstwa" "_LA" "DK-ING_Bohrpfahl" "")
      (setq tdk_all2sof_selekcja nil)
    )
  )
  
  (setq tdk_all2sof_selekcja (ssget "X" (list (cons 62 7) (cons 8 "XR$6$Bohrpfahl") (cons 6 "ALL_S23") (cons 370 18))))
  (if (equal tdk_all2sof_selekcja nil)
    (princ)
    (progn  
      (command "_chprop" tdk_all2sof_selekcja "" "_C" "252" "_LT" "ByLayer" "_LW" "0.18" "_TR" "JakWarstwa" "_LA" "DK-ING_Bohrpfahl" "")
      (setq tdk_all2sof_selekcja nil)
    )
  )
  
  (setq tdk_all2sof_selekcja (ssget "X" (list (cons 62 8) (cons 8 "XR$6$Achsen") (cons 6 "GETRENNT2_S10") (cons 370 13))))
  (if (equal tdk_all2sof_selekcja nil)
    (princ)
    (progn  
      (command "_chprop" tdk_all2sof_selekcja "" "_C" "252" "_LT" "ByLayer" "_S" "10" "_LW" "0.18" "_TR" "JakWarstwa" "_LA" "DK-ING_Achse" "")
      (setq tdk_all2sof_selekcja nil)
    )
  )
  
  (setq tdk_all2sof_selekcja (ssget "X" (list (cons 62 8) (cons 8 "XR$6$Bohrpfahl") (cons 6 "GETRENNT2_S10") (cons 370 13))))
  (if (equal tdk_all2sof_selekcja nil)
    (princ)
    (progn  
      (command "_chprop" tdk_all2sof_selekcja "" "_C" "252" "_LT" "ByLayer" "_S" "10.0000" "_LW" "0.18" "_TR" "JakWarstwa" "_LA" "DK-ING_Achse" "")
      (setq tdk_all2sof_selekcja nil)
    )
  )
  
  (princ)
)