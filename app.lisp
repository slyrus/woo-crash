(ql:quickload :woo-crash)

(defpackage woo-crash.app
  (:use :cl)
  (:import-from :lack.builder
                :builder)
  (:import-from :woo-crash
                :*web*))
(in-package :woo-crash.app)

(builder nil :accesslog nil :session nil *web*)
