;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-abbr-reader.ss" "lang")((modname sort-list-of-numbers) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define (sort alon)
  (cond
    [(empty? alon)  empty]
    [(cons?  alon) (insert(first alon)(sort (rest alon)))]))

(define (insert n alon)
   (cond
    [(empty? alon) (cons n empty)]
    [else (cond
            [(>= n (first alon)) (cons n alon)]
            [(<  n (first alon)) (cons (first alon)(insert n (rest alon)))])]))