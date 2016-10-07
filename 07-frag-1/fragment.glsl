precision highp float;

#define CIRCLE_COLOR    vec4(1.0, 0.4313, 0.3411, 1.0)
#define OUTSIDE_COLOR   vec4(0.3804, 0.7647, 1.0, 1.0)

void main() {

  //TODO: Replace this with a function that draws a circle at (256.5,256.5) with radius 128
  
  float y2 = (gl_FragCoord.y-256.5) * (gl_FragCoord.y-256.5);
  float x2 = (gl_FragCoord.x-256.5) * (gl_FragCoord.x-256.5);
  if(x2+y2 < 16384.0) {
    gl_FragColor = CIRCLE_COLOR;
  } else {
    gl_FragColor = OUTSIDE_COLOR;
  }
}