(defun c:tdk_wczytaj_warstwy()
  (setq tdk_aktualna_warstwa (getvar "CLAYER"))
  
  (if (tblsearch "LAYER" "DK-ING_Achse")
  (princ)
  (progn
    (if (tblsearch "LTYPE" "SOF_Strichpunkt")
      (princ)
      (command "_linetype" "_L" "SOF_Strichpunkt" "C:\\Program Files\\SOFiSTiK\\2018\\SOFiCAD 2018 (AutoCAD 2018)\\support\\soficad.lin" "")
    )
    (command "_layer" "_M" "DK-ING_Achse" "_LW" "0.18" "" "_C" "7" "" "_L" "SOF_Strichpunkt" "" "")
  )
  )
  
  (if (tblsearch "LAYER" "DK-ING_Anker")
    (princ)
    (command "_layer" "_M" "DK-ING_Anker" "_C" "1" "" "")
  )
  
  (if (tblsearch "LAYER" "DK-ING_Ansichtsfenster")
    (princ)
    (command "_layer" "_M" "DK-ING_Ansichtsfenster" "_C" "9" "" "_P" "_N" "" "")
  )
  
  (if (tblsearch "LAYER" "DK-ING_Ansichtslinie")
  (princ)
  (progn
    (if (tblsearch "LTYPE" "KRESKOWA")
      (princ)
      (command "_linetype" "_L" "KRESKOWA" "acadiso.lin" "")
    )
    (command "_layer" "_M" "DK-ING_Ansichtslinie" "_C" "1" "" "_L" "KRESKOWA" "" "")
  )
  )
  
  (if (tblsearch "LAYER" "DK-ING_Arbeiten")
    (princ)
    (command "_layer" "_M" "DK-ING_Arbeiten" "_C" "6" "" "")
  )

  (if (tblsearch "LAYER" "DK-ING_Arbeitsfuge")
  (princ)
  (progn
    (if (tblsearch "LTYPE" "SOF_ARBEITSFUGE")
      (princ)
      (command "_linetype" "_L" "SOF_ARBEITSFUGE" "C:\\Program Files\\SOFiSTiK\\2018\\SOFiCAD 2018 (AutoCAD 2018)\\support\\soficad.lin" "")
    )
    (command "_layer" "_M" "DK-ING_Arbeitsfuge" "_C" "1" "" "_L" "SOF_ARBEITSFUGE" "" "")
  )
  )
  
  (if (tblsearch "LAYER" "DK-ING_Aufgehende")
    (princ)
    (command "_layer" "_M" "DK-ING_Aufgehende" "_C" "3" "" "")
  )
  
  (if (tblsearch "LAYER" "DK-ING_Beschreibung 25mm")
    (princ)
    (command "_layer" "_M" "DK-ING_Beschreibung 25mm" "_C" "1" "" "")
  )
  
  (if (tblsearch "LAYER" "DK-ING_Beschreibung 35mm")
    (princ)
    (command "_layer" "_M" "DK-ING_Beschreibung 35mm" "_C" "2" "" "")
  )
  
  (if (tblsearch "LAYER" "DK-ING_Beschreibung 50mm")
    (princ)
    (command "_layer" "_M" "DK-ING_Beschreibung 50mm" "_C" "3" "" "")
  )
  
  (if (tblsearch "LAYER" "DK-ING_Beschreibung 70mm")
    (princ)
    (command "_layer" "_M" "DK-ING_Beschreibung 70mm" "_C" "4" "" "")
  )
  
  (if (tblsearch "LAYER" "DK-ING_Bewehrung")
    (princ)
    (command "_layer" "_M" "DK-ING_Bewehrung" "_C" "2" "" "")
  )
  
  (if (tblsearch "LAYER" "DK-ING_Bohrpfahl")
    (princ)
    (command "_layer" "_M" "DK-ING_Bohrpfahl" "_C" "1" "" "")
  )
  
  (if (tblsearch "LAYER" "DK-ING_Decke")
    (princ)
    (command "_layer" "_M" "DK-ING_Decke" "_C" "3" "" "")
  )
  
  (if (tblsearch "LAYER" "DK-ING_Detail")
    (princ)
    (command "_layer" "_M" "DK-ING_Detail" "_C" "1" "" "")
  )
  
  (if (tblsearch "LAYER" "DK-ING_Fugen")
    (princ)
    (command "_layer" "_M" "DK-ING_Fugen" "_C" "1" "" "")
  )
  
  (if (tblsearch "LAYER" "DK-ING_Fundament")
    (princ)
    (command "_layer" "_M" "DK-ING_Fundament" "_C" "3" "" "")
  )
  
  (if (tblsearch "LAYER" "DK-ING_Hatch")
    (princ)
    (command "_layer" "_M" "DK-ING_Hatch" "_C" "253" "" "")
  )
  
  (if (tblsearch "LAYER" "DK-ING_Nord")
    (princ)
    (command "_layer" "_M" "DK-ING_Nord" "_C" "1" "" "")
  )
  
  (if (tblsearch "LAYER" "DK-ING_Plankopf")
    (princ)
    (command "_layer" "_M" "DK-ING_Plankopf" "_C" "7" "" "")
  )
  
  (if (tblsearch "LAYER" "DK-ING_Rand")
    (princ)
    (command "_layer" "_M" "DK-ING_Rand" "_C" "250" "" "")
  )
  
  (if (tblsearch "LAYER" "DK-ING_Schnitte")
    (princ)
    (command "_layer" "_M" "DK-ING_Schnitte" "_C" "3" "" "")
  )
  
  (if (tblsearch "LAYER" "DK-ING_Spann")
    (princ)
    (command "_layer" "_M" "DK-ING_Spann" "_C" "1" "" "")
  )
  
  (if (tblsearch "LAYER" "DK-ING_Stempel")
    (princ)
    (command "_layer" "_M" "DK-ING_Stempel" "_C" "250" "" "")
  )
  
  (if (tblsearch "LAYER" "DK-ING_Wand")
    (princ)
    (command "_layer" "_M" "DK-ING_Wand" "_C" "3" "" "")
  )
  
  (command "_layer" "_S" tdk_aktualna_warstwa "")
  (princ)  
)