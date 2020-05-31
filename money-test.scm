(import (srfi 64)
        (money))

(test-begin "money-test")

;; test-multiplication
(let ((test-name "test-multiplication"))
  (define five (money-doller 5))
  (test-equal test-name (money-doller 10) (times five 2))
  (test-equal test-name (money-doller 15) (times five 3)))

;; test-equality
(let ((test-name "test-equality"))
  (test-assert test-name (equal? (money-doller 5) (money-doller 5)))
  (test-eq test-name #f (equal? (money-doller 5) (money-doller 6)))
  (test-eq test-name #f (equal? (money-franc 5) (money-doller 5))))

;; test-currency
(let ((test-name "test-currency"))
  (test-equal test-name "USD" (currency (money-doller 1)))
  (test-equal test-name "CHF" (currency (money-franc 1))))

(test-end "money-test")
