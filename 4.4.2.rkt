;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname 4.4.2) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
(define (grosspay h)
  (* 12 h))

(define (tax h)
  (cond
    [(<= (grosspay h) 240) 0]
    [(and (> (grosspay h) 240) (<= (grosspay h) 480)) (* (grosspay h) 0.15)]
    [(> (grosspay h) 480) (* (grosspay h) 0.28)]))


(define (netpay h)
  (- (grosspay h) (tax h)))
