(defun c:tdk_podmiana_blokow()
  (prompt "\nSelect the blocks to replace.")
  (setq ss (ssget '((0 . "INSERT"))))  ; wybierz wszystkie bloki w rysunku
  (if ss
    (progn
      (setq oldBlockName (cdr (assoc 2 (entget (ssname ss 0))))) ; nazwa bloku do zamiany
      (prompt (strcat "\nSelected block to replace: " oldBlockName))
      (setq newBlockName (getstring "\nEnter the name of the block to replace with: ")) ; nazwa nowego bloku
      (setq ssCount (sslength ss))
      (setq i 0)
      (while (< i ssCount)
        (setq en (ssname ss i))
        (setq elist (entget en))
        (setq insertPoint (cdr (assoc 10 elist)))
        (setq rotation (cdr (assoc 50 elist)))
        (setq scale (cdr (assoc 41 elist)))
        (command "_.INSERT" newBlockName insertPoint scale scale rotation)
        (entdel en) ; usuń stary blok
        (setq i (1+ i))
      )
      (prompt (strcat "\nAll instances of block " oldBlockName " have been replaced with " newBlockName "."))
    )
    (prompt "\nNo blocks selected.")
  )
  (princ)
)
