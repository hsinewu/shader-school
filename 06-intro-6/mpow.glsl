mat2 matrixPower(highp mat2 m, int n) {
  
  //Raise the matrix m to nth power

  // For example:
  //
  //  matrixPower(m, 2) = m * m
  //

  mat2 _m = m;
  for(int i=1; i<16; i++) {	// loops in glsl must terminate
  	if(i==n) break;
  	m *= _m;
  }
  return m;  
}

//Do not change this line or the name of the above function
#pragma glslify: export(matrixPower)