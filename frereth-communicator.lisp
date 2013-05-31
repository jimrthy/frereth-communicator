;;;; frereth-communicator.lisp

(in-package #:frereth-communicator)

(defun build-repl-y-client (port)
  (error 'not-implemented))

(defun send-to-repl-y-client (client form)
  (error 'not-implemented))

;;; Realistically, I also want the option to use this as a pass-through
;;; to connect to remote servers, with a C library for dealing with the CODEC.
;;; For now, that's premature optimization, and I have my doubts about
;;; any potential gains.
;;; Just keep it in mind.


