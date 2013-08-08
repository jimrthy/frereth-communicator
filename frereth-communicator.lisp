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

(defclass -communicator ()
  (
   ;; slots go in here...don't forget to export the interesting ones.
   ;; Or not...there really should *not* be anything interesting in
   ;; here from a client's perspective.
   )
  :documentation "This is really supposed to be a wrapper around two
zeromq sockets.

But that should be version-dependent and totally hidden.

Right now, I'm thinking that we need a Subscriber for drawing events
from the server and a REQ (lazy pirate!) for event notification.

That should be completely and totally transparent to callers.
They call get, it returns a black box they can either use or
hack on as they see fit...like sensible adults.

Or whatever the alternatives there are.
")

;; It's tempting to make this a generic
(defun get (version)
  "Which communicator do you want?"
  (declare (ignore version))
  (make-instance '-communicator))

;;; What else should be exported here?

;;; Send UI events to a communicator
;;; Of course, it's a waste of bandwidth to do that if the
;;; client doesn't care about those events.
;;; And it makes life more complicated if we force them
;;; to register for interesting events.
;;; Especially since that interest may be extremely
;;; transitory (is that true in practice?)

;;; Render events from communicator.
;;; Client sends a notice that something needs to be
;;; redrawn.
;;; For that matter, so does the windowing system (is
;;; there a reasonable way to make that happen in here?
;;; Does that approach make sense?)
;;; There are also internal timer events.

;;; None of those belong in here...but creating a
;;; socket pair might.

;;; Whatever. What does make sense?
