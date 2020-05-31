(define-record-type <doller>
  (make-doller _amount _currency)
  doller?
  (_amount doller-amount)
  (_currency doller-currency)
  )

(define-record-type <franc>
  (make-franc _amount _currency)
  franc?
  (_amount franc-amount)
  (_currency franc-currency)
  )

(define (money-doller x) (make-doller x "USD"))
(define (money-franc x) (make-franc x "CHF"))

(define (times money x)
  (cond
   ((doller? money) (money-doller (* (doller-amount money) x)))
   ((franc? money) (money-franc (* (franc-amount money) x)))))

(define (currency money)
  (cond
   ((doller? money) (doller-currency money))
   ((franc? money) (franc-currency money))))
