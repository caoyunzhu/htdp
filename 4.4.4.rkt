;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname 4.4.4) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
(define (discriminant a b c)
  (- (* b b) (* 4 a c)))

(define (how-many a b c)
  (cond
    [(> (discriminant a b c) 0) 2]
    [(= (discriminant a b c) 0) 1]
    [(< (discriminant a b c) 0) 0]))