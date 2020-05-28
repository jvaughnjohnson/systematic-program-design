;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 04-larger) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require 2htdp/image)

;; Image, Image -> Boolean
;; Produce true, if the first image out of two given images is larger than the second image.

(check-expect (larger? (rectangle 20 40 "solid" "purple")
                       (rectangle 10 12 "solid" "green")) true)

(check-expect (larger? (rectangle 10 12 "solid" "green")
                       (rectangle 20 40 "solid" "purple")) false)

(check-expect (larger? (rectangle 20 20 "solid" "blue")
                       (rectangle 20 20 "solid" "orange")) false)

; (define (larger? img-1 img-2) true) ; this is the stub.

;(define (larger? img-1 img-2) ; this is the template.
;  (... img-1 img-2))

(define (larger? img-1 img-2)
  (if (> (* (image-height img-1)(image-width img-1))
       (* (image-height img-2)(image-width img-2)))
    true
    false))
