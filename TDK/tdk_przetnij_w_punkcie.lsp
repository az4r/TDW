(defun c:tdk_przetnij_w_punkcie( / *error* )
  (defun *error* ( tdk_przyczyna_bledu )
    (command)
    (princ)
  )
  (repeat 100
    (setq tdk_przetnij_w_punkcie_obiekt (entsel "\nWskaz obiekt do przeciecia: "))
    (setq tdk_przetnij_w_punkcie_p1 (getpoint "\nWskaz punkt przeciecia: "))
    (command "_break" tdk_przetnij_w_punkcie_obiekt "_F" tdk_przetnij_w_punkcie_p1 tdk_przetnij_w_punkcie_p1)
  )
  (princ)
)