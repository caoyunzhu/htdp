;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname 11.2.2) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
(define (f x)
  (+ (* 3 (* x x))
     (+ (* -6 x) -1)))

(define (p n)
  (cond
    ((zero? n) empty)
    (else (cons (make-posn n (f n))(p (sub1 n)))))) 