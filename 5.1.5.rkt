;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname 5.1.5) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
(require htdp/master)

(define (check-color target-1 target-2 guess-1 guess-2)
  (cond
    [(and (symbol=? target-1 guess-1) (symbol=? target-2 guess-2)) 'Perfect]
    [(or  (symbol=? target-1 guess-1) (symbol=? target-2 guess-2)) 'OneColorAtCorrentPosition]
    [(or  (symbol=? target-1 guess-2) (symbol=? target-2 guess-1)) 'OneColorOccurs]
    [else 'NothingCorrect]))

(master check-color)