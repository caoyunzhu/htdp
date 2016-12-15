;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname 4.4.1) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
(define (interest amount)
  (cond
    [(<= amount 1000) (* amount 0.040)]
    [(<= amount 5000) (* amount 0.045)]
    [(>  amount 5000) (* amount 0.050)])) 