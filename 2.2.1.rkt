;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname 2.2.1) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
(require htdp/convert)

(define (Fahrenheit->Celsius f)
  (* (- f 32) (/ 5 9)))

(convert-gui Fahrenheit->Celsius)
(convert-repl Fahrenheit->Celsius)
(convert-file "in.dat" Fahrenheit->Celsius "out.dat")
  
