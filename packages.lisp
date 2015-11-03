(provide "com.dcl.modules")
(defpackage :com.dcl.modules
  (:use :common-lisp)
  (:export :module
	   :methods
	   :add-method
	   :in-module))

(provide "com.dcl.d-modules")
(defpackage :com.dcl.d-modules
  (:use :common-lisp
	:com.skutnii.modules))

(provide "com.dcl.main")
(defpackage :com.dcl.main
  (:use :common-lisp
	:com.skutnii.modules
	:com-skutnii-d-modules))
