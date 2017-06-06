
(asdf:defsystem woo-test
  :version "0.1"
  :author "Cyrus Harmon"
  :license ""
  :depends-on (:clack
               :lack
               :caveman2
               :envy
               :cl-ppcre
               :uiop
               :mito

               ;; for @route annotation
               :cl-syntax-annot

               ;; HTML Template
               :djula


               :cl-who)
  :serial t
  :components ((:module "src"
                :components
                ((:file "woo-test"))))
  :description "")
