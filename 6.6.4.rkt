;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname 6.6.4) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
(define-struct circle (center radius color))

(define (translate-circle c delta)
  (make-circle (make-posn (+ (posn-x (circle-center c)) delta) (posn-y (circle-center c)))
          (circle-radius c)
          (circle-color  c)))

(translate-circle (make-circle (make-posn 50 50) 50 'red) 50)



