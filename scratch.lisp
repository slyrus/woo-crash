
(pushnew #p"~/projects/woo-crash/" asdf:*central-registry* :test 'equalp)
(asdf:load-system "woo-crash")

(woo-crash::start :server :woo :port 8080)

;;;
;;; this causes things to go haywire:
;;;
;;; ab -c 50 -n 20000 127.0.0.1:8080/
;;;



