(define pixel-color
  (foreign-lambda int "pixelColor" SDL_Surface short short unsigned-integer32))
(define pixel-rgba
  (foreign-lambda int "pixelRGBA" SDL_Surface short short unsigned-char unsigned-char unsigned-char unsigned-char))
(define hline-color
  (foreign-lambda int "hlineColor" SDL_Surface short short short unsigned-integer32))
(define hline-rgba
  (foreign-lambda int "hlineRGBA" SDL_Surface short short short unsigned-char unsigned-char unsigned-char unsigned-char))
(define vline-color
  (foreign-lambda int "vlineColor" SDL_Surface short short short unsigned-integer32))
(define vline-rgba
  (foreign-lambda int "vlineRGBA" SDL_Surface short short short unsigned-char unsigned-char unsigned-char unsigned-char))
(define rectangle-color
  (foreign-lambda int "rectangleColor" SDL_Surface short short short short unsigned-integer32))
(define rectangle-rgba
  (foreign-lambda int "rectangleRGBA" SDL_Surface short short short short unsigned-char unsigned-char unsigned-char unsigned-char))
(define rounded-rectangle-color
  (foreign-lambda int "roundedRectangleColor" SDL_Surface short short short short short unsigned-integer32))
(define rounded-rectangle-rgba
  (foreign-lambda int "roundedRectangleRGBA" SDL_Surface short short short short short unsigned-char unsigned-char unsigned-char unsigned-char))
(define box-color
  (foreign-lambda int "boxColor" SDL_Surface short short short short unsigned-integer32))
(define box-rgba
  (foreign-lambda int "boxRGBA" SDL_Surface short short short short unsigned-char unsigned-char unsigned-char unsigned-char))
(define rounded-box-color
  (foreign-lambda int "roundedBoxColor" SDL_Surface short short short short short unsigned-integer32))
(define rounded-box-rgba
  (foreign-lambda int "roundedBoxRGBA" SDL_Surface short short short short short unsigned-char unsigned-char unsigned-char unsigned-char))
(define line-color
  (foreign-lambda int "lineColor" SDL_Surface short short short short unsigned-integer32))
(define line-rgba
  (foreign-lambda int "lineRGBA" SDL_Surface short short short short unsigned-char unsigned-char unsigned-char unsigned-char))
(define aaline-color
  (foreign-lambda int "aalineColor" SDL_Surface short short short short unsigned-integer32))
(define aaline-rgba
  (foreign-lambda int "aalineRGBA" SDL_Surface short short short short unsigned-char unsigned-char unsigned-char unsigned-char))
(define thick-line-color
  (foreign-lambda int "thickLineColor" SDL_Surface short short short short unsigned-char unsigned-integer32))
(define thick-line-rgba
  (foreign-lambda int "thickLineRGBA" SDL_Surface short short short short unsigned-char unsigned-char unsigned-char unsigned-char unsigned-char))
(define circle-color
  (foreign-lambda int "circleColor" SDL_Surface short short short unsigned-integer32))
(define circle-rgba
  (foreign-lambda int "circleRGBA" SDL_Surface short short short unsigned-char unsigned-char unsigned-char unsigned-char))
(define arc-color
  (foreign-lambda int "arcColor" SDL_Surface short short short short short unsigned-integer32))
(define arc-rgba
  (foreign-lambda int "arcRGBA" SDL_Surface short short short short short unsigned-char unsigned-char unsigned-char unsigned-char))
(define aacircle-color
  (foreign-lambda int "aacircleColor" SDL_Surface short short short unsigned-integer32))
(define aacirclergba
  (foreign-lambda int "aacircleRGBA" SDL_Surface short short short unsigned-char unsigned-char unsigned-char unsigned-char))
(define filled-circle-color
  (foreign-lambda int "filledCircleColor" SDL_Surface short short short unsigned-integer32))
(define filled-circle-rgba
  (foreign-lambda int "filledCircleRGBA" SDL_Surface short short short unsigned-char unsigned-char unsigned-char unsigned-char))
(define ellipse-color
  (foreign-lambda int "ellipseColor" SDL_Surface short short short short unsigned-integer32))
(define ellipse-rgba
  (foreign-lambda int "ellipseRGBA" SDL_Surface short short short short unsigned-char unsigned-char unsigned-char unsigned-char))
(define aaellipse-color
  (foreign-lambda int "aaellipseColor" SDL_Surface short short short short unsigned-integer32))
(define aaellipse-rgba
  (foreign-lambda int "aaellipseRGBA" SDL_Surface short short short short unsigned-char unsigned-char unsigned-char unsigned-char))
(define filled-ellipse-color
  (foreign-lambda int "filledEllipseColor" SDL_Surface short short short short unsigned-integer32))
(define filled-ellipse-rgba
  (foreign-lambda int "filledEllipseRGBA" SDL_Surface short short short short unsigned-char unsigned-char unsigned-char unsigned-char))
(define pie-color
  (foreign-lambda int "pieColor" SDL_Surface short short short short short unsigned-integer32))
(define pie-rgba
  (foreign-lambda int "pieRGBA" SDL_Surface short short short short short unsigned-char unsigned-char unsigned-char unsigned-char))
(define filled-pie-color
  (foreign-lambda int "filledPieColor" SDL_Surface short short short short short unsigned-integer32))
(define filled-pie-rgba
  (foreign-lambda int "filledPieRGBA" SDL_Surface short short short short short unsigned-char unsigned-char unsigned-char unsigned-char))
(define trigon-color
  (foreign-lambda int "trigonColor" SDL_Surface short short short short short short unsigned-integer32))
(define trigon-rgba
  (foreign-lambda int "trigonRGBA" SDL_Surface short short short short short short unsigned-char unsigned-char unsigned-char unsigned-char))
(define aatrigon-color
  (foreign-lambda int "aatrigonColor" SDL_Surface short short short short short short unsigned-integer32))
(define aatrigon-rgba
  (foreign-lambda int "aatrigonRGBA" SDL_Surface short short short short short short unsigned-char unsigned-char unsigned-char unsigned-char))
(define filled-trigon-color
  (foreign-lambda int "filledTrigonColor" SDL_Surface short short short short short short unsigned-integer32))
(define filled-trigon-rgba
  (foreign-lambda int "filledTrigonRGBA" SDL_Surface short short short short short short unsigned-char unsigned-char unsigned-char unsigned-char))
(define polygon-color
  (foreign-lambda int "polygonColor" SDL_Surface (const (c-pointer short)) (const (c-pointer short)) int unsigned-integer32))
(define polygon-rgba
  (foreign-lambda int "polygonRGBA" SDL_Surface (const (c-pointer short)) (const (c-pointer short)) int unsigned-char unsigned-char unsigned-char unsigned-char))
(define aapolygon-color
  (foreign-lambda int "aapolygonColor" SDL_Surface (const (c-pointer short)) (const (c-pointer short)) int unsigned-integer32))
(define aapolygon-rgba
  (foreign-lambda int "aapolygonRGBA" SDL_Surface (const (c-pointer short)) (const (c-pointer short)) int unsigned-char unsigned-char unsigned-char unsigned-char))
(define filled-polygon-color
  (foreign-lambda int "filledPolygonColor" SDL_Surface (const (c-pointer short)) (const (c-pointer short)) int unsigned-integer32))
(define filled-polygon-rgba
  (foreign-lambda int "filledPolygonRGBA" SDL_Surface (const (c-pointer short)) (const (c-pointer short)) int unsigned-char unsigned-char unsigned-char unsigned-char))
(define textured-polygon
  (foreign-lambda int "texturedPolygon" SDL_Surface (const (c-pointer short)) (const (c-pointer short)) int SDL_Surface int int))
#;
(define filled-polygon-color-mt
  (foreign-lambda int "filledPolygonColorMT" SDL_Surface (const (c-pointer short)) (const (c-pointer short)) int unsigned-integer32 (int **polyInts) (c-pointer int)))
#;
  (define filled-polygon-rgba-mt
    (foreign-lambda int "filledPolygonRGBAMT" SDL_Surface (const (c-pointer short)) (const (c-pointer short)) int unsigned-char unsigned-charunsigned-char unsigned-char (int **polyInts) (c-pointer int)))
#;
  (define textured-polygon-mt
    (foreign-lambda int "texturedPolygonMT" SDL_Surface (const (c-pointer short)) (const (c-pointer short)) int SDL_Surface int int (int **polyInts) (c-pointer int)))
(define bezier-color
  (foreign-lambda int "bezierColor" SDL_Surface (const (c-pointer short)) (const (c-pointer short)) int int unsigned-integer32))
(define bezier-rgba
  (foreign-lambda int "bezierRGBA" SDL_Surface (const (c-pointer short)) (const (c-pointer short)) int int unsigned-char unsigned-char unsigned-char unsigned-char))
(define gfx-primitives-set-font
  (foreign-lambda void "gfxPrimitivesSetFont" (const (c-pointer void)) unsigned-integer32 unsigned-integer32))
(define gfx-primitives-set-font-rotation
  (foreign-lambda void "gfxPrimitivesSetFontRotation" unsigned-integer32))
(define character-color
  (foreign-lambda int "characterColor" SDL_Surface short short char unsigned-integer32))
(define character-rgba
  (foreign-lambda int "characterRGBA" SDL_Surface short short char unsigned-char unsigned-char unsigned-char unsigned-char))
(define string-color
  (foreign-lambda int "stringColor" SDL_Surface short short (const c-string) unsigned-integer32))
(define string-rgba
  (foreign-lambda int "stringRGBA" SDL_Surface short short (const c-string) unsigned-char unsigned-char unsigned-char unsigned-char))
