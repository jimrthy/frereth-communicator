;;;; frereth-communicator.asd

(asdf:defsystem #:frereth-communicator
  :serial t
  :description "Describe frereth-communicator here"
  :author "James Gatannah <jamesgatannah@gmail.com>"
  :license "LGPL"
  :depends-on (#:alexandria)
  :components ((:file "package")
               (:file "frereth-communicator")))

