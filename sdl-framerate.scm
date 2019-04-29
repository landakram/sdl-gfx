(--sdl-flags
 "FPS_UPPER_LIMIT"
 "FPS_LOWER_LIMIT"
 "FPS_DEFAULT")

(define-record fps-manager buffer)

(define make-fps-manager% make-fps-manager)

(define-foreign-variable sizeof-sdl-fps-manager int "sizeof(FPSmanager)")

(set! make-fps-manager
      (lambda ()
	(let ((r (make-fps-manager% (make-blob sizeof-sdl-fps-manager))))
          (sdl-init-Framerate r)
	  r)))

(define-record-printer (fps-manager s out)
  (for-each (lambda (x) (display x out))
	    (list "#<sdl-fps-manager "
                  (fps-manager-buffer s)
                  ">")))

(define-foreign-type FPSmanager scheme-pointer fps-manager-buffer)

(define sdl-init-Framerate
  (foreign-lambda void "SDL_initFramerate" FPSmanager))
(define sdl-set-framerate
  (foreign-lambda int "SDL_setFramerate" FPSmanager unsigned-integer32))
(define sdl-get-framerate
  (foreign-lambda int "SDL_getFramerate" FPSmanager))
(define sdl-get-framerate-count
  (foreign-lambda int "SDL_getFramecount" FPSmanager))
(define sdl-get-framerate-delay
  (foreign-lambda unsigned-int32 "SDL_framerateDelay" FPSmanager))
