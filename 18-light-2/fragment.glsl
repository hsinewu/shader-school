precision mediump float;

uniform mat4 model;
uniform mat4 view;
uniform mat4 projection;

uniform mat4 inverseModel;
uniform mat4 inverseView;
uniform mat4 inverseProjection;

uniform vec3 ambient;
uniform vec3 diffuse;
uniform vec3 lightDirection;

varying vec3 n;
void main() {
  float weight = max(dot(n,lightDirection), 0.);
  gl_FragColor = vec4(ambient + diffuse*weight, 1.0);
}