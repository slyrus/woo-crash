
(pushnew #p"~/projects/woo-test/" asdf:*central-registry* :test 'equalp)
(asdf:load-system "woo-test")

(woo-test::start :server :woo :port 8080)

;;;
;;; this causes things to go haywire:
;;;
;;; ab -c 50 -n 20000 127.0.0.1:8080/
;;;



