(defun c:tdk_szare_linie_na_spod()
  (setq tdk_szare_linie_na_spod_selekcja nil)
  
  (setq tdk_szare_linie_na_spod_selekcja (ssget "X" (list (cons 62 251))))
  (if (equal tdk_szare_linie_na_spod_selekcja nil)
    (princ)
    (progn
      (command "_draworder" tdk_szare_linie_na_spod_selekcja "" "S")
      (setq tdk_szare_linie_na_spod_selekcja nil)
    )
  )

  (setq tdk_szare_linie_na_spod_selekcja (ssget "X" (list (cons 62 252))))
  (if (equal tdk_szare_linie_na_spod_selekcja nil)
    (princ)
    (progn
      (command "_draworder" tdk_szare_linie_na_spod_selekcja "" "S")
      (setq tdk_szare_linie_na_spod_selekcja nil)
    )
  )
  
  (setq tdk_szare_linie_na_spod_selekcja (ssget "X" (list (cons 62 253))))
  (if (equal tdk_szare_linie_na_spod_selekcja nil)
    (princ)
    (progn
      (command "_draworder" tdk_szare_linie_na_spod_selekcja "" "S")
      (setq tdk_szare_linie_na_spod_selekcja nil)
    )
  )
  
  (setq tdk_szare_linie_na_spod_selekcja (ssget "X" (list (cons 62 254))))
  (if (equal tdk_szare_linie_na_spod_selekcja nil)
    (princ)
    (progn
      (command "_draworder" tdk_szare_linie_na_spod_selekcja "" "S")
      (setq tdk_szare_linie_na_spod_selekcja nil)
    )
  )
  (princ)
)