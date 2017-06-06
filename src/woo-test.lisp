
(defpackage #:woo-test
  (:use :cl :caveman2)
  (:import-from :clack
                :clackup)
  (:export #:start))

(in-package #:woo-test)

(defparameter *application-root*   (asdf:system-source-directory :woo-test))
(defparameter *static-directory*   (merge-pathnames #P"static/" *application-root*))

(syntax:use-syntax :annot)

(defclass <web> (<app>) ())
(defvar *web* (make-instance '<web>))
(clear-routing-rules *web*)

(defroute "/" (&key (|name| "Guest"))
  (format nil "Welcome, ~A" |name|))

(defvar *appfile-path*
  (asdf:system-relative-pathname :woo-test #P"app.lisp"))

(defvar *handler* nil)

(defun start (&rest args &key server port debug &allow-other-keys)
  (declare (ignore server port debug))
  (when *handler*
    (restart-case (error "Server is already running.")
      (restart-server ()
        :report "Restart the server"
        (stop))))
  (setf *handler*
        (apply #'clackup *appfile-path* args)))

(defun stop ()
  (prog1
      (clack:stop *handler*)
    (setf *handler* nil)))

