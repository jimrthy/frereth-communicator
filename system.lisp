(in-package #:frereth-communicator-system)

;;; It's tempting to make the sequence of meaningful world symbols
;;; into a special var. That goes against the spirit of what I'm
;;; trying to accomplish here, but it would probably simplify
;;; the code in the long-term.

;;; For now, shelve the idea under YAGNI

(defvar *world-keys* (list 'ctx))

(defun init ()
  "Return an empty world"
  (let ((barren (make-hash-table)))
    (dolist (key *world-keys*)
      (setf (gethash key barren) nil))
    barren))

(defun verify-dead (world)
  (dolist (key *world-keys*)
    (assert (not (gethash key world)))))

(defun start (world)
  "Run side-effects to make empty world into an interesting place"
  (verify-dead world)

  ;; 4 is totally arbitrary and deserves its own extremely special
  ;; treatment.
  ;; The only redeeming quality of having anything at all like this
  ;; here is that (by a context's nature) if you want to change
  ;; something this fundamental, you really have to restart the
  ;; entire networking subsystem anyway.
  (setf (gethash 'ctx (zmq:context 4))))

(defun stop (world)
  "Run side-effects to turn interesting world into a desolate wasteland"
  (let ((ctx (gethash 'ctx world)))
    (if ctx
	)))
