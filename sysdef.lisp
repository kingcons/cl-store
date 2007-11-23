(in-package :sysdef-user)

(define-system :CL-STORE (cl-store-system )
  (:author "Sean Ross <sross@common-lisp.net>")
  (:version 0 8 3)
  (:documentation "Portable CL Package to serialize data")
  (:licence "MIT")
  (:components  "package" "utils"
                #+(or abcl (and clisp (not mop))) "mop"
                "backends" "plumbing" "circularities" "default-backend"
                ("custom" non-required-file))
  (:pathname #.(directory-namestring *compile-file-truename*))
  (:needs (sysdef::test-action :rt)))
