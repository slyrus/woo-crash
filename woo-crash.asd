
(asdf:defsystem woo-crash
  :version "0.1"
  :author "Cyrus Harmon"
  :license ""
  :depends-on (:clack
               :lack
               :caveman2
               :cl-ppcre)
  :serial t
  :components ((:module "src"
                :components
                ((:file "woo-crash"))))
  :description "")
