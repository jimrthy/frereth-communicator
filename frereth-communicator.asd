;;;; frereth-communicator.asd

(asdf:defsystem #:frereth-communicator
  :serial t
  :description "Basic communications from a frereth-client through frereth-render to frereth-server instances"
  :author "James Ashley <jamesashley@gmail.com>"
  :license "LGPL"
  :depends-on (#:alexandria
	       #:zeromq)
  :components ((:file "package")
	       (:file "system")
               (:file "frereth-communicator")))

