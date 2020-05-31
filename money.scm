(define-record-type <money>
  (make-money _amount _currency)
  money?
  (_amount money-amount)
  (_currency money-currency)
  )

(define (money-doller x) (make-money x "USD"))
(define (money-franc x) (make-money x "CHF"))

(define (times money x)
  (make-money (* (money-amount money) x)
              (money-currency money)))

(define currency money-currency)
