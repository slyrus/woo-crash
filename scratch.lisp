
(pushnew #p"~/projects/woo-test/" asdf:*central-registry* :test 'equalp)
(asdf:load-system "woo-test")

(woo-test::start :server :woo :port 8080)

