;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname 6.6.3) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
(define-struct circle (center raduis color))

(define (in-circle c pixel)
  (<= (sqrt(+ (sqr (- (posn-x (circle-center c)) (posn-x pixel)))
              (sqr (- (posn-y (circle-center c)) (posn-y pixel)))))
      (circle-raduis c)))

(in-circle (make-circle (make-posn 50 50) 50 'red) (make-posn 60 60))
 
