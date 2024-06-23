(defun c:tdk_izoluj_warstwy_dk()
  (command "_.layer"
           "U" "0" "WY" "*" "T"
           "_ON" "DK-ING_Achse,DK-ING_Anker,DK-ING_Ansichtsfenster,DK-ING_Ansichtslinie,DK-ING_Arbeiten,DK-ING_Arbeitsfuge,DK-ING_Aufgehende,DK-ING_Beschreibung 25mm,DK-ING_Beschreibung 35mm,DK-ING_Beschreibung 50mm,DK-ING_Beschreibung 70mm,DK-ING_Bewehrung,DK-ING_Bohrpfahl,DK-ING_Decke,DK-ING_Detail,DK-ING_Fugen,DK-ING_Fundament,DK-ING_Hatch,DK-ING_Nord,DK-ING_Plankopf,DK-ING_Rand,DK-ING_Schnitte,DK-ING_Spann,DK-ING_Stempel,DK-ING_Wand" ""
  )
  (princ)
)