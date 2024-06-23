(defun c:tdk_szrafura_na_spod()
  (setq tdk_szrafura_na_spod (ssget "X" (list (cons 0 "HATCH"))))
  (command "_draworder" tdk_szrafura_na_spod "" "S")
)