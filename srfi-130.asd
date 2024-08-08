(defsystem :srfi-130
  :version
  "20240808"
  :description
  "SRFI 130 for CL: Cursor-based string library"
  :long-description
  "SRFI 130 for CL: Cursor-based string library
https://srfi.schemers.org/srfi-19"
  :author
  "CHIBA Masaomi"
  :maintainer
  "CHIBA Masaomi"
  :license
  "Unlicense"
  :serial t
  :depends-on (:r7rs-compat :srfi-5)
  :components ((:file "package")
               (:file "srfi-130")))

(defmethod perform :after ((o load-op) (c (eql (find-system :srfi-130))))
  (let ((name "https://github.com/g000001/srfi-130")
        (nickname :srfi-130))
    (if (and (find-package nickname)
             (not (eq (find-package nickname) (find-package name))))
        (warn "~A: A package with name ~A already exists." name nickname)
        (rename-package name name `(,nickname)))))


;;; *EOF*
