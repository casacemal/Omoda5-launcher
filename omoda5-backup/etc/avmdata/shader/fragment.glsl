//#version 120
//#extension GL_OES_EGL_image_external : require
precision mediump float;
varying vec3 normal;
varying vec3 position;
varying vec2 texcoord;
varying vec2 texcoord1;
//varying float alpha_blend;

uniform sampler2D tex;
uniform sampler2D tex_2;
uniform vec3 sun_position; 
uniform vec3 sun_color; 
uniform vec4 basecolor; 
uniform int basecolor_enable; 
uniform samplerCube cubemap;
uniform int blend_enable;
uniform mat3 split_plane;
uniform vec3 color_algin; 
uniform vec3 color_algin_2; 
uniform int clip_enable; 

void main() {
vec4 color;


if(clip_enable == 1)
{
	if(position.z<2.4 && position.z>-2.4 && position.x<0.9&&position.x>-0.9) discard;
}

if(blend_enable == 1)
{
	
	float alpha_blend;
	float l_threshold;
	
	vec3 point0 = vec3(split_plane[0][0],split_plane[0][1],split_plane[0][2]);
	vec3 point1 = vec3(split_plane[1][0],split_plane[1][1],split_plane[1][2]);
	vec3 point2 = vec3(split_plane[2][0],split_plane[2][1],split_plane[2][2]);
	vec3 p_normal = cross(point1-point0,point2-point0);
	
	l_threshold = length(position-point2)/3.0+0.2;
	
	float distance_dot = dot(position-point0 ,p_normal);
	float fdistance =length(distance_dot)/length(p_normal);

	if(distance_dot<0.0)fdistance = -fdistance;
	alpha_blend = smoothstep(-0.5*l_threshold,0.5*l_threshold,fdistance);

	
	color = vec4(texture2D(tex, texcoord).rgb * color_algin,1.0)*(1.0-alpha_blend) 
		+ vec4(texture2D(tex_2, texcoord1).rgb * color_algin_2,1.0)*(alpha_blend);
}
else
{
	color = vec4(texture2D(tex, texcoord).rgb * color_algin,texture2D(tex, texcoord).a);
}
gl_FragColor = color; 
}
