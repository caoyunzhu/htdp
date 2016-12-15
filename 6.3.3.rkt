;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname 6.3.3) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
(define-struct fighter (designation acceleration topspeed range))

(define (within-range f  d)
  (<= d (fighter-range f)))

(define (reduce-range f)
  (make-fighter
   (fighter-designation f)
   (fighter-acceleration f)
   (fighter-topspeed f)
   (* .8 (fighter-range f))))

  