//#version 120
attribute vec3 in_vertex;
attribute vec3 in_normal;
attribute vec2 in_texcoord;
attribute vec3 in_tangent;

uniform mat4 MVP;

uniform mat4 model_matrix;
uniform mat4 view_matrix;
uniform mat4 projection_matrix;

uniform mat3 split_plane;
uniform int blend_enable;

varying vec3 normal_out;
varying vec3 position;
varying vec2 texcoord;
varying mat3 TBN;

varying float alpha_blend;

void main()
{
	gl_Position = projection_matrix*view_matrix*model_matrix* vec4(in_vertex, 1.0);
	//position = gl_Position.xyz;
	normal_out = normalize(mat3(model_matrix) * in_normal);
	position = vec3(model_matrix * vec4(in_vertex, 1.0));;
	texcoord = in_texcoord;
	
	//noraml map
	vec3 T = normalize(vec3(model_matrix * vec4(in_tangent, 0.0)));
	vec3 N = normalize(vec3(model_matrix * vec4(in_normal, 0.0)));
	// re-orthogonalize T with respect to N
	T = normalize(T - dot(T, N) * N);
	// then retrieve perpendicular vector B with the cross product of T and N
	vec3 B = cross(T, N);

	TBN = mat3(T, B, N);
}
