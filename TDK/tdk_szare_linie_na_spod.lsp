(defun c:tdk_szare_linie_na_spod()
  (setq tdk_szare_linie_na_spod_selekcja (ssget "X" (list (cons 62 251))))
  (command "_draworder" tdk_szare_linie_na_spod_selekcja "" "S")
  (setq tdk_szare_linie_na_spod_selekcja "")

  (setq tdk_szare_linie_na_spod_selekcja (ssget "X" (list (cons 62 252))))
  (command "_draworder" tdk_szare_linie_na_spod_selekcja "" "S")
  (setq tdk_szare_linie_na_spod_selekcja "")
  
  (setq tdk_szare_linie_na_spod_selekcja (ssget "X" (list (cons 62 253))))
  (command "_draworder" tdk_szare_linie_na_spod_selekcja "" "S")
  (setq tdk_szare_linie_na_spod_selekcja "")
  
  (setq tdk_szare_linie_na_spod_selekcja (ssget "X" (list (cons 62 254))))
  (command "_draworder" tdk_szare_linie_na_spod_selekcja "" "S")
  (setq tdk_szare_linie_na_spod_selekcja "")
  (princ)
)