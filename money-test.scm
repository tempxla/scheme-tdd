(import (srfi 64)
        (money))

(test-begin "money-test")

;; test-multiplication
(define five (make-doller 5))
(test-equal "test-multiplication" (make-doller 10) (times! five 2))
(test-equal "test-multiplication" (make-doller 15) (times! five 3))

;; test-equality
(test-assert "test-equality" (equal? (make-doller 5) (make-doller 5)))
(test-eq "test-equality" #f (equal? (make-doller 5) (make-doller 6)))


(test-end "money-test")
