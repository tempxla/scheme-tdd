(define-record-type <doller>
  (make-doller _amount)
  doller?
  (_amount amount set-amount!))

(define (times doller x)
  (make-doller (* (amount doller) x)))
