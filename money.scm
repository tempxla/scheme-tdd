(define-syntax make-money
  (syntax-rules ()
    ((make-money kind amount)
     (make-doller amount))))

(define-record-type <doller>
  (make-doller _amount)
  doller?
  (_amount doller-amount))

(define-record-type <franc>
  (make-franc _amount)
  franc?
  (_amount franc-amount))

(define (times money x)
  (cond
   ((doller? money) (make-doller (* (doller-amount money) x)))
   ((franc? money) (make-franc (* (franc-amount money) x)))))
