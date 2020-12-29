#lang racket

(define (gifts-on-day day [acc 1])
  (if (= day 1)
      acc
      (gifts-on-day (sub1 day) (+ day acc))))

(define (total-gifts-on-day day [acc 1])
  (if (= day 1)
      acc
      (total-gifts-on-day (sub1 day) (+ (gifts-on-day day) acc))))
