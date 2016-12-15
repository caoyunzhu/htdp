;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname 2.3.1) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
(define (wage h)
  (* 12 h))

(define (tax h)
  (* .15 (wage h)))

(define (netpay h)
  (* 0.85 (wage h)))
