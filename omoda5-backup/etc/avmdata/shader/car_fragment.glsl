#define NUM_POINT_LIGHTS 0
#define CUBEMAP_ENABLE 0
#define SPECULAR_MAP_ENABLE 0
#define LDR_RATIO 1.0

//#version 120
precision mediump float;
varying vec3 normal_out;
varying vec3 position;
varying vec2 texcoord;
varying mat3 TBN;


uniform sampler2D tex;//basecolor
uniform sampler2D tex_metallicRoughness;//specular
uniform sampler2D tex_normalTexture;
//uniform sampler2D tex_occlusionTexture;
uniform sampler2D tex_emissiveTexture;
uniform vec3 view_position;
uniform vec3 sun_position; 

uniform vec3 sun_color; 

uniform vec4 basecolor; 
uniform int basecolor_enable; 
uniform int normal_map_enable;
uniform int emissive_map_enable;
uniform float alpha; 
uniform samplerCube cubemap;
float specularStrength = 1.0;

//out vec4 color;
void main() 
{
	#if NUM_POINT_LIGHTS
	vec3 sun_position_t[NUM_POINT_LIGHTS];
	sun_position_t[0] = vec3(5.0,8.0,0.0);
	sun_position_t[1] = vec3(-5.0,8.0,0.0);
	sun_position_t[2] = vec3(0.0,8.0,5.0);
	sun_position_t[3] = vec3(0.0,8.0,-5.0);
	#endif
	vec3 Ambient_prop = vec3(0.3);//light or mesh property?
	vec3 Diffuse_prop = vec3(0.3);//mesh property
	
	vec3 Ambient = vec3(0.0);
	vec3 Diffuse = vec3(0.0);
	vec3 Specular = vec3(0.0);
	if(emissive_map_enable == 1)
	{
		gl_FragColor = texture2D(tex_emissiveTexture, texcoord);
	}
	else
	{
			
		//normal map
		vec3 normal;
		if(normal_map_enable == 1)
		{
			vec3 normal_map = texture2D(tex_normalTexture, texcoord).rgb;
			normal_map = normalize(normal_map * 2.0 - 1.0);   
			normal_map = normalize(TBN * normal_map);
			normal = normal_map;
		}
		else
		{
			normal = normal_out;
		}
		vec3 viewDir = normalize(view_position - position);
		
		#if NUM_POINT_LIGHTS
		int i;
		for (i = 0; i < NUM_POINT_LIGHTS; ++i)
		{
			vec3 lightDir = normalize(sun_position_t[i] - position);
			//
			float lum = max(dot(normal, normalize(lightDir)), 0.0);
			//specular point light
			vec3 reflectDir = reflect(-lightDir, normal);
			float spec = pow(max(dot(viewDir, reflectDir), 0.0), 32.0);
			Specular += specularStrength * spec * sun_color;
			
			Ambient += Ambient_prop*sun_color;
			Diffuse += lum*Ambient_prop*sun_color;
		}
		#endif
		//light
		vec3 I = normalize(position - view_position);
		vec3 R = reflect(I, normalize(normal));
		//dynamic cubemap
		#if CUBEMAP_ENABLE
		vec4 reflect_color = vec4(textureCube(cubemap, R).rgb, 1.0);
		//static cubemap
		//vec4 reflect_color = vec4(textureCube(cubemap, normal).rgb, 1.0);
		#else
		vec4 reflect_color =  vec4(0.0);
		#endif
		//	gl_FragColor = texture2D(tex, texcoord) * vec4((0.3 + 0.7 * lum) * sun_color, 1.0);
		//gl_FragColor = vec4( texcoord,1.0,1.0) * vec4((0.3 + 0.7 * lum) * sun_color, 1.0);
		
		
		
		if(basecolor_enable == 1)
		{
			
			float Reflect_Strength = 0.3;
			vec3 color = basecolor.rgb * (Ambient + Diffuse) + (Specular + reflect_color.rgb) * Reflect_Strength;
			gl_FragColor = vec4(color,basecolor.a);
		}
		else
		{
			//gl_FragColor = vec4(texture2D(tex, texcoord).rgb * vec3((0.3 + 0.7 * lum) * sun_color)+specular,texture2D(tex, texcoord).a)*0.8+reflect_color*0.2;
			vec4 basecolor_map = texture2D(tex, texcoord);
			#if SPECULAR_MAP_ENABLE
				float Reflect_Strength_map = texture2D(tex_metallicRoughness,texcoord).b/1.0;
			#else
				float Reflect_Strength_map = 1.0;
			#endif
			
			#if NUM_POINT_LIGHTS
				vec3 color = basecolor_map.rgb * (Ambient + Diffuse) + (Specular + reflect_color.rgb) * Reflect_Strength_map;
			#else
				vec3 color = basecolor_map.rgb;
			#endif
			color = color / LDR_RATIO;
			gl_FragColor = vec4(color,basecolor_map.a);
		}
		gl_FragColor.a = gl_FragColor.a*alpha;
	}

	
	//gl_FragColor = vec4(lightDir,1.0);
	
	
	
	/*float gamma = 0.6;
    gl_FragColor.rgb = pow(gl_FragColor.rgb, vec3(1.0/gamma));*/
}
