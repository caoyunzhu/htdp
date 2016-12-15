;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname 6.6.2) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
(require htdp/draw)

(start 300 300)

(define-struct circle (center raduis color))

(define (draw-a-circle a-circle)
  (draw-circle (circle-center a-circle) (circle-raduis a-circle) (circle-color a-circle)))

(draw-a-circle (make-circle (make-posn 100 50) 50 'red))


