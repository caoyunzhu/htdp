;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-abbr-reader.ss" "lang")((modname 18.2.1) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define (p1 x y)
  (+(* x y)
    (+ (* 2 x)
       (+ (* 2 y) 22))))

(define (p2 x)
  (+ (* 55 x) (+ x 11)))

(define (p3 x)
  (+ (p1 x 0)
     (+ (p1 x 1) (p2 x))))

(define (p4 a y)
  (+(* a y)
    (+ (* 2 a)
       (+ (* 2 y) 22))))

(define (p6 b)
  (+ (p4 b 0)
     (+ (p4 b 1) (p2 b))))