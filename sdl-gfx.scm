;;;; sdl.scm - Simple SDL binding for Chicken
; Copyright (C) 2002-2004 Tony Garnock-Jones <tonyg@kcbbs.gen.nz>
;
; This library is free software; you can redistribute it and/or modify
; it under the terms of the GNU Library General Public License as
; published by the Free Software Foundation; either version 2 of the
; License, or (at your option) any later version.
;
; This library is distributed in the hope that it will be useful, but
; WITHOUT ANY WARRANTY; without even the implied warranty of
; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
; Library General Public License for more details.
;
; You should have received a copy of the GNU Library General Public
; License along with this library; if not, write to the Free
; Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA 02111-1307
; USA

; ---------------------------------------------------------------------------

(module sdl-gfx

 (
  ;; gfx-primitives
  pixel-color
  pixel-rgba
  hline-color
  hline-rgba
  vline-color
  vline-rgba
  rectangle-color
  rectangle-rgba
  rounded-rectangle-color
  rounded-rectangle-rgba
  box-color
  box-rgba
  rounded-box-color
  rounded-box-rgba
  line-color
  line-rgba
  aaline-color
  aaline-rgba
  thick-line-color
  thick-line-rgba
  circle-color
  circle-rgba
  arc-color
  arc-rgba
  aacircle-color
  aacirclergba
  filled-circle-color
  filled-circle-rgba
  ellipse-color
  ellipse-rgba
  aaellipse-color
  aaellipse-rgba
  filled-ellipse-color
  filled-ellipse-rgba
  pie-color
  pie-rgba
  filled-pie-color
  filled-pie-rgba
  trigon-color
  trigon-rgba
  aatrigon-color
  aatrigon-rgba
  filled-trigon-color
  filled-trigon-rgba
  polygon-color
  polygon-rgba
  aapolygon-color
  aapolygon-rgba
  filled-polygon-color
  filled-polygon-rgba
  textured-polygon
  ;; filled-polygon-color-mt
  ;; filled-polygon-rgba-mt
  ;; textured-polygon-mt
  bezier-color
  bezier-rgba
  gfx-primitives-set-font
  gfx-primitives-set-font-rotation
  character-color
  character-rgba
  string-color
  string-rgba

  ;; framerate managment
  FPS_UPPER_LIMIT
  FPS_LOWER_LIMIT
  FPS_DEFAULT
  make-fps-manager
  sdl-init-Framerate
  sdl-set-framerate
  sdl-get-framerate
  sdl-get-framerate-count
  sdl-get-framerate-delay

  ;; rotozoom
  SMOOTHING_ON
  SMOOTHING_OFF
  rotozoom-surface
  zoom-surface
  rotozoom-surface-xy
  rotozoom-surface-size
  rotozoom-surface-size-xy
  shrink-surface
  rotate-surface-90-degrees
  )

 (import (chicken base) scheme (chicken foreign))
 (import (chicken syntax))
 (import (chicken blob))
 (import (chicken gc))
 (import-for-syntax srfi-1)

(require-extension sdl-base)
(import-for-syntax sdl-base)
(import sdl-base)
(foreign-declare #<<EOF
#include <math.h>
#include "SDL.h"
#include "SDL_gfxPrimitives.h"
#include "SDL_framerate.h"
#include "SDL_rotozoom.h"
#include "SDL_gfxPrimitives_font.h"
EOF
)

(define-syntax --sdl-flags
  (er-macro-transformer
   (lambda (e r c)
     `(,(r 'begin)
       ,@(append-map (lambda (str)
                       (let* ((sym (string->symbol str))
                              (psym (string->symbol (string-append "-" str))))
                         `((,(r 'define-foreign-variable) ,psym unsigned-integer ,str)
                           (,(r 'define) ,sym ,psym))))
                     (cdr e))))))

(define-syntax pointer-to-record-lambda
  (ir-macro-transformer
   (lambda (e i c)
     (let ((record-name (cadr e)))
       `(lambda (pointer)
	  (and pointer
	       (,(i (symbol-append 'make- (strip-syntax record-name))) pointer)))))))


(define-record SDL_Surface pointer)
(define-foreign-type SDL_Surface (c-pointer "SDL_Surface")
  sdl-surface-pointer
  (lambda (p) (set-finalizer!
	       ((pointer-to-record-lambda sdl-surface) p)
	       sdl-free-surface)))

(include "gfx-primitives.scm")
(include "sdl-rotozoom.scm")
(include "sdl-framerate.scm")

;; Missing are
;; MMX image filters (SDL_imageFilter.h, SDL_imageFilter.c)
;; Custom Blit functions (SDL_gfxBlitFunc.h, SDL_gfxBlitFunc.c)
)
