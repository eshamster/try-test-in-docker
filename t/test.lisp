(defpackage try-test-in-docker/t/test
  (:use :cl :rove))
(in-package :try-test-in-docker/t/test)

(deftest test
  (ok (= 1 1))
  #+sbcl
  (ok (= 2 2))
  #-sbcl
  (ok (= 3 3)))
