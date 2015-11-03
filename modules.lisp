(require "com.dcl.modules" "./packages.lisp")

(:in-package :com.dcl.modules)

(defvar *module*)

(defclass module ()
  (method-list
   (name :initarg :name)))

(defgeneric methods (mod)
  (:documentation "Get method list for the mod"))

(defmethod methods (mod module)
  (slot-value mod 'method-list))

(defgeneric add-method (mod symbol)
  (:documentation "Add a symbol to a module object"))

(defmethod add-method ((mod module) symbol)
  (let ((m-list (methods mod)))
    (if (eql nil m-list)
	(setf m-list (list symbol))
	(append m-list symbol))))

(defun in-module (mod)
  (setf *module* mod))
