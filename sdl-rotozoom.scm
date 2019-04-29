(--sdl-flags
 "SMOOTHING_ON"
 "SMOOTHING_OFF")

(define rotozoom-surface (foreign-lambda SDL_Surface "rotozoomSurface"
					 SDL_Surface ; src
					 double ; angle
					 double ; zoom
					 bool)) ; smooth

(define zoom-surface (foreign-lambda SDL_Surface "zoomSurface"
				     SDL_Surface ; src
				     double ; zoomx
				     double ; zoomy
				     bool)) ; smooth

(define rotozoom-surface-xy
  (foreign-lambda SDL_Surface "rotozoomSurfaceXY" SDL_Surface double double double int))
(define rotozoom-surface-size
  (foreign-lambda void "rotozoomSurfaceSize" int int double double (c-pointer int) (c-pointer int)))
(define rotozoom-surface-size-xy
  (foreign-lambda void "rotozoomSurfaceSizeXY" int int double double double (c-pointer int) (c-pointer int)))
(define shrink-surface
  (foreign-lambda SDL_Surface "shrinkSurface" SDL_Surface int int))
(define rotate-surface-90-degrees
  (foreign-lambda SDL_Surface "rotateSurface90Degrees" SDL_Surface int))
