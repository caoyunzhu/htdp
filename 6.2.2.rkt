;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname 6.2.2) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
(require htdp/draw)

;; dimensions of traffic light 
(define WIDTH 50)
(define HEIGHT 160)
(define BULB-RADIUS 20)
(define BULB-DISTANCE 10)

;; the positions of the bulbs 
(define X-BULBS (quotient WIDTH 2))
(define Y-RED (+ BULB-DISTANCE BULB-RADIUS))
(define Y-YELLOW (+ Y-RED BULB-DISTANCE (* 2 BULB-RADIUS)))
(define Y-GREEN (+ Y-YELLOW BULB-DISTANCE (* 2 BULB-RADIUS)))

;; draw the light with the red bulb turned on
(start WIDTH HEIGHT)
(draw-solid-disk (make-posn X-BULBS Y-RED) BULB-RADIUS 'red)
(draw-solid-disk (make-posn X-BULBS Y-YELLOW) BULB-RADIUS 'yellow)
(draw-solid-disk (make-posn X-BULBS Y-GREEN) BULB-RADIUS 'green)

(define (clear-blub color)
  (cond
    [(symbol=? color 'red) (and (draw-solid-disk (make-posn X-BULBS Y-RED) BULB-RADIUS 'white)
                                (draw-circle (make-posn X-BULBS Y-RED) BULB-RADIUS 'red))]
    [(symbol=? color 'yellow) (and (draw-solid-disk (make-posn X-BULBS Y-YELLOW) BULB-RADIUS 'white)
                                    (draw-circle (make-posn X-BULBS Y-YELLOW) BULB-RADIUS 'yellow))]
    [(symbol=? color 'green) (and (draw-solid-disk (make-posn X-BULBS Y-GREEN) BULB-RADIUS 'white)
                                  (draw-circle (make-posn X-BULBS Y-GREEN) BULB-RADIUS 'green))]))