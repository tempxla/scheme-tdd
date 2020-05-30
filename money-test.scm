(import (srfi 64)
        (money))

(test-begin "money-test")

;; test-multiplication
(let ((test-name "test-multiplication"))
  (define five (make-doller 5))
  (test-equal test-name (make-doller 10) (times five 2))
  (test-equal test-name (make-doller 15) (times five 3)))

;; test-equality
(let ((test-name "test-equality"))
  (test-assert test-name (equal? (make-doller 5) (make-doller 5)))
  (test-eq test-name #f (equal? (make-doller 5) (make-doller 6))))

;; test-franc-multiplication
(let ((test-name "test-franc-multiplication"))
  (define five (make-franc 5))
  (test-equal test-name (make-franc 10) (times five 2))
  (test-equal test-name (make-franc 15) (times five 3)))

(test-end "money-test")
