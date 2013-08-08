;;;; frereth-communicator.lisp

(in-package #:frereth-communicator)

(defun build-repl-y-client (port)
  "The functions that come out may very well be something very similar to nrepl,
but they'll be built on top of 0mq, and the LGPL pretty explicitly isn't
compatible with LGPL.

Actually, it would probably be much better to have something here that's usable
as a transport layer, then clients can use this API to do nrepl-style
communication."
  (error 'obsolete))

(defun send-to-repl-y-client (client form)
  (error 'obsolete))

;;; Realistically, I also want the option to use this as a pass-through
;;; to connect to remote servers, with a C library for dealing with the CODEC.
;;; For now, that's premature optimization, and I have my doubts about
;;; any potential gains.
;;; Just keep it in mind.

;;; This makes me think of Stuart Sierra's "Workflow Revisited" in clojure.
;;; The clojure.namespace tools shouldn't be that difficult to implement
;;; on common lisp packages. I don't think. It's an interesting thought
;;; experiment

;; 4 is totally arbitrary and almost definitely overkill. Then again,
;; anything less really qualifies as premature optimization at this point.
;; And it totally does not belong here.
;;(defvar *context* (zmq:context 4))

