(define-record-type <doller>
  (make-doller _amount)
  doller?
  (_amount doller-amount))

(define-record-type <franc>
  (make-franc _amount)
  franc?
  (_amount franc-amount))

(define money-doller make-doller)
(define money-franc make-franc)

(define (times money x)
  (cond
   ((doller? money) (make-doller (* (doller-amount money) x)))
   ((franc? money) (make-franc (* (franc-amount money) x)))))

(define (currency money)
  (cond
   ((doller? money) "USD")
   ((franc? money) "CHF")))
