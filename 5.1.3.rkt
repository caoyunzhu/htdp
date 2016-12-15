;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname 5.1.3) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
(require htdp/guess)

(define (n a b c)
  (+ (* c 100) (* b 10) a))

(define (check-guess3 a b c target)
  (cond
    [(< (n a b c) target) 'TooSmall]
    [(= (n a b c) target) 'Perfect]
    [(> (n a b c) target) 'TooLarge]))

(guess-with-gui-3 check-guess3)

