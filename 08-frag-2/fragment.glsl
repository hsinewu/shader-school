precision mediump float;

void main() {

  //TODO: Replace this with a function that draws a checkerboard
  
  gl_FragColor = vec4(1.0, 1.0, 1.0, 1.0);
  vec2 tile = step(0.5, fract(gl_FragCoord.xy/32.0)); // review me
  if (tile.x!=tile.y)
  discard;
}