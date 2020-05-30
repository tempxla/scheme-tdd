(import (srfi 64))

(test-begin "money-test")

;; test-multiplication
(define five (make-doller 5))
(times! five 2)
(test-eqv "test-multiplication" 10 (amount five))


(test-end "money-test")
