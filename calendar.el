;;;
;;; Calendar part (for use in ORG mode)
;;;

;; Latitued and Longitude for calendar to calculate sunrise, sunsets etc...
(setq calendar-latitude 56.7320)
(setq calendar-longitude 37.1669)
(setq calendar-location-name "Дубна, МО")

;; show time in calendar in 24h format
(setq calendar-time-display-form
      '(24-hours ":" minutes
                 (if time-zone " (") time-zone (if time-zone ")")))
