
//#version 120
attribute vec3 in_vertex;
attribute vec3 in_normal;
attribute vec2 in_texcoord;

varying vec3 normal;
varying vec3 position;
varying vec2 texcoord;

uniform mat4 MVP;
//uniform mat4 projection;
//uniform mat4 view;
uniform mat4 model;

void main(){



	
    position = vec3(model * vec4(in_vertex, 1.0));
    
	normal = mat3(model) * in_normal;   
	
	gl_Position = MVP * vec4(in_vertex, 1.0);
	
	texcoord = in_texcoord;
}


