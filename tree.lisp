(load "source-dir:extensions;cando;src;lisp;start-cando.lisp")
(ql:quickload :design)
(setf *default-pathname-defaults* #P"/Users/meister/Dropbox/Development/atom-tree/")
(:= *be* (multiple-value-list (design.load::load-cdxml "foo.cdxml")))
(:= *o* (design:make-oligomer '(:leub.origin (:origin :ccap-origin) :default :leub 
                                :default :thrb
                                :default :leub
                                :default :ncap)))
(:= *aggs* (design::build-all-molecules *o*))
(core:getpid)


(kin:make-conformation (list *o*))
