//#version 120
attribute vec3 in_vertex;
attribute vec3 in_normal;
attribute vec2 in_texcoord;
attribute vec2 in_texcoord1;

uniform mat4 MVP;
uniform mat3 split_plane;
uniform int blend_enable;

varying vec3 normal;
varying vec3 position;
varying vec2 texcoord;
varying vec2 texcoord1;
//varying float alpha_blend;

void main(){
	gl_Position = MVP * vec4(in_vertex, 1.0);
	//position = gl_Position.xyz;
	normal = normalize(mat3(MVP) * in_normal);
	position = in_vertex;
	texcoord = in_texcoord;
	texcoord1 = in_texcoord1;
	/*if(blend_enable == 1)
	{
		//vec3 p_normal = cross(split_plane[1],split_plane[2]);
		//vec3 p_normal = cross(vec3(split_plane[1][0],split_plane[1][1],split_plane[1][2]),vec3(split_plane[2][0],split_plane[2][1],split_plane[2][2]));
		//vec3 p_normal = cross(vec3(split_plane[1][0],split_plane[1][2],split_plane[1][1]),vec3(split_plane[2][0],split_plane[2][2],split_plane[2][1]));
		
		vec3 p_normal = cross(vec3(3.4,3.8,5.8),vec3(0.6,0.0,1.8));
		float distance_dot = dot(in_vertex,p_normal);
		float fdistance =length(distance_dot)/length(p_normal);
		if(distance_dot>0.0)	alpha_blend = clamp(fdistance,0.0,0.3);
		else	alpha_blend = 0.0;
	}*/
}