(ql:quickload :woo-test)

(defpackage woo-test.app
  (:use :cl)
  (:import-from :lack.builder
                :builder)
  (:import-from :woo-test
                :*web*))
(in-package :woo-test.app)

(builder nil :accesslog nil :session nil *web*)
