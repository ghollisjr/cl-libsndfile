;;;; cl-libsndfile is a Common Lisp data analysis library.
;;;; Copyright 2017 Gary Hollis
;;;;
;;;; cl-libsndfile is in the public domain; use it for whatever.
(asdf:defsystem #:cl-libsndfile
  :serial t
  :author "Gary Hollis"
  :description "cl-libsndfile is a Common Lisp wrapper for libsndfile"
  :license "public domain"
  :depends-on (#:cffi)
  :components ((:file "package")
               (:file "bindings")
               (:file "wrapper")))
