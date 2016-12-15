;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname 4.4.3) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
(define (payback charges)
  (cond
    [(<= charges 500)  (* .0025 charges)]
    [(<= charges 1500) (+ 1.25 (* 0.005 (- charges 500)))]
    [(<= charges 2500) (+ 6.25 (* 0.0075 (- charges 1500)))]
    [(>  charges 2500) (+ 13.75 (* 0.01 (- charges 2500)))]))