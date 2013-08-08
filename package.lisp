;;;; package.lisp

(defpackage #:frereth-communicator
  (:use #:cl)
  (:export #:get))

(defpackage #:frereth-communicator-system
  (:use #:cl #:zeromq)
  (:export #:init #:start #:stop))
