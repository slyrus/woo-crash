
(asdf:defsystem woo-test
  :version "0.1"
  :author "Cyrus Harmon"
  :license ""
  :depends-on (:clack
               :lack
               :caveman2
               :cl-ppcre
               :uiop
               :cl-who)
  :serial t
  :components ((:module "src"
                :components
                ((:file "woo-test"))))
  :description "")
