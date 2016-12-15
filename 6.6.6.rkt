;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname 6.6.6) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
(require htdp/draw)

(start 300 300)

(define-struct circle (center radius color))

(define (draw-a-circle a-circle)
  (draw-circle (circle-center a-circle)
               (circle-radius a-circle)
               (circle-color a-circle)))


(define (translate-circle a-circle delta)
  (make-circle (make-posn
                (+ delta (posn-x (circle-center a-circle)))
                (posn-y (circle-center a-circle)))
               (circle-radius a-circle)
               (circle-color a-circle)))

(define (clear-a-circle a-circle)
  (clear-circle
   (circle-center a-circle)
   (circle-radius a-circle)))


(define (draw-and-clear-circle a-circle)
  (and (draw-a-circle a-circle)
       (sleep-for-a-while 1)
       (clear-a-circle a-circle)))

(define (move-circle delta a-circle) 
  (cond 
    [(draw-and-clear-circle a-circle) (translate-circle a-circle delta)] 
    [else a-circle]))

(draw-a-circle 
 (move-circle 
  10 
  (move-circle
   10 
   (move-circle
    10 
    (move-circle
     10 
     (make-circle (make-posn 10 50) 10 'green))))))
