(require 'cl-libsndfile)
(in-package :cl-libsndfile)

(defun wav->alist (path)
  (let* (file)
    (with-foreign-object (sfinfo '(:struct SF_INFO))
      ;; must be set to 0 before opening file
      (setf (foreign-slot-value sfinfo '(:struct SF_INFO) 'format)
            0)
      (setf file
            (sf_open (namestring path)
                     SFM_READ
                     sfinfo))
      ;; do stuff
      (print (foreign-slot-value sfinfo '(:struct SF_INFO)
                                 'samplerate))
      (print (foreign-slot-value sfinfo '(:struct SF_INFO)
                                 'frames))
      
      ;; end do stuff

      ;; close
      (sf_close file))))
