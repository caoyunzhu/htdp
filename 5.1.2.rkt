;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname 5.1.2) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
(require htdp/guess)

(define (check-guess guess target)
  (cond
    [(< guess target) 'TooSmall]
    [(= guess target) 'Perfect]
    [(> guess target) 'TooLarge]))

(guess-with-gui check-guess)