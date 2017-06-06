(ql:quickload :woo-test)

(defpackage woo-test.app
  (:use :cl)
  (:import-from :lack.builder
                :builder)
  (:import-from :ppcre
                :scan
                :regex-replace)
  (:import-from :woo-test
                :*static-directory*
                :*web*))
(in-package :woo-test.app)

(builder
 (:static
  :path (lambda (path)
          (if (ppcre:scan "^(?:/images/|/css/|/js/|/robot\\.txt$|/favicon\\.ico$)" path)
              path
              nil))
  :root *static-directory*)
 :accesslog
 nil
 :session
 nil
 *web*)
