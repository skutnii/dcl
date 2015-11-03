(require "com.dcl.d-modules" "./packages.lisp")

(:in-package :com.dcl.d-modules)

(defclass d-module (module)
  ((url :initarg :url)))

(defgeneric proxify (mod)
  (:documentation "Returns proxy creation code for the module"))

(defmethod proxify (mod d-module)
  (let ((proxy-decl '()))
    (dolist (method-name (methods d-module) proxy-decl)
      ;; write this code
      )))
