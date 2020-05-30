(import (srfi 64)
        (money))

(test-begin "money-test")

;; test-multiplication
(define five (make-doller 5))
(define product (times! five 2))
(test-eqv "test-multiplication" 10 (amount product))
(set! product (times! five 3))
(test-eqv "test-multiplication" 15 (amount product))

;; test-equality
(test-assert "test-equality" (equal? (make-doller 5) (make-doller 5)))
(test-eq "test-equality" #f (equal? (make-doller 5) (make-doller 6)))


(test-end "money-test")
