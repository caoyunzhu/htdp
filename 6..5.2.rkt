;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname 6..5.2) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
(define-struct t (hours minutus seconds))

(define (time->seconds a-time)
  (+ (* 3600 (t-hours a-time)) (* 60 (t-minutus a-time)) (t-seconds a-time))) 