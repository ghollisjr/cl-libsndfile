;;;; cl-libsndfile is a Common Lisp data analysis library.
;;;; Copyright 2017 Gary Hollis
;;;;
;;;; cl-libsndfile is in the public domain; use it for whatever.

(in-package :cl-libsndfile)

(define-foreign-library libsndfile
  (t (:default "libsndfile")))

(use-foreign-library libsndfile)

;; ADD CFFI-GROVEL INFO LATER
