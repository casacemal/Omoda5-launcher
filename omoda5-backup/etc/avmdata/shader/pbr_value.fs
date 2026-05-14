
varying vec3 normal;
varying vec3 position;
varying vec2 texcoord;

// material parameters
//uniform vec3 albedo;

uniform float metallic;
uniform float roughness;
//uniform float ao;


uniform sampler2D tex;
uniform samplerCube cubemap;

uniform vec3 sun_position; 
uniform vec3 sun_color; 
uniform vec4 basecolor; 
uniform int basecolor_enable; 

// lights
//uniform vec3 lightPositions[4];
//uniform vec3 lightColors[4];

//uniform vec3 camPos;

const float PI = 3.14159265359;
// ----------------------------------------------------------------------------
float DistributionGGX(vec3 N, vec3 H, float roughness)
{
    float a = roughness*roughness;
    float a2 = a*a;
    float NdotH = max(dot(N, H), 0.0);
    float NdotH2 = NdotH*NdotH;

    float nom   = a2;
    float denom = (NdotH2 * (a2 - 1.0) + 1.0);
    denom = PI * denom * denom;

    return nom / max(denom, 0.001); // prevent divide by zero for roughness=0.0 and NdotH=1.0
}
// ----------------------------------------------------------------------------
float GeometrySchlickGGX(float NdotV, float roughness)
{
    float r = (roughness + 1.0);
    float k = (r*r) / 8.0;

    float nom   = NdotV;
    float denom = NdotV * (1.0 - k) + k;

    return nom / denom;
}
// ----------------------------------------------------------------------------
float GeometrySmith(vec3 N, vec3 V, vec3 L, float roughness)
{
    float NdotV = max(dot(N, V), 0.0);
    float NdotL = max(dot(N, L), 0.0);
    float ggx2 = GeometrySchlickGGX(NdotV, roughness);
    float ggx1 = GeometrySchlickGGX(NdotL, roughness);

    return ggx1 * ggx2;
}
// ----------------------------------------------------------------------------
vec3 fresnelSchlick(float cosTheta, vec3 F0)
{
    return F0 + (1.0 - F0) * pow(1.0 - cosTheta, 5.0);
}
// ----------------------------------------------------------------------------
void main()
{		
//float metallic=0.5;
//float roughness=0.5;
float ao=1.0;
vec3 camPos = vec3(4, 6, 0);


	vec3 lightPositions[4];
	vec3 lightColors[4];
	vec4 albedo = basecolor;
	
	lightPositions[0] = vec3(5.0, 0.0, 5.0);//sun_position;
	lightColors[0] = sun_color;

	lightPositions[1] = vec3(0.0, 5.0, 5.0);//sun_position;
	lightColors[1] = sun_color;
	
	lightPositions[2] = vec3(5.0, 5.0, 0.0);//sun_position;
	lightColors[2] = sun_color;
	
	lightPositions[3] = vec3(5.0, 5.0, 5.0);//sun_position;
	lightColors[3] = sun_color;

	
    vec3 N = normalize(normal);
    vec3 V = normalize(camPos - position);

	if(basecolor_enable == 1)albedo =  basecolor;
	else albedo =  texture2D(tex, texcoord);

    // calculate reflectance at normal incidence; if dia-electric (like plastic) use F0 
    // of 0.04 and if it's a metal, use the albedo color as F0 (metallic workflow)    
    vec3 F0 = vec3(0.04); 
    F0 = mix(F0, vec3(albedo), metallic);

    // reflectance equation
    vec3 Lo = vec3(0.0);
    for(int i = 0; i < 4; ++i) 
    {
        // calculate per-light radiance
        vec3 L = normalize(lightPositions[i] - position);
        vec3 H = normalize(V + L);
        float distance = length(lightPositions[i] - position);
        //float attenuation = 1.0 / (distance * distance);
		float attenuation = 5000.0 /(distance* distance);
        vec3 radiance = lightColors[i] * attenuation;

        // Cook-Torrance BRDF
        float NDF = DistributionGGX(N, H, roughness);   
        float G   = GeometrySmith(N, V, L, roughness);      
        vec3 F    = fresnelSchlick(clamp(dot(H, V), 0.0, 1.0), F0);
           
        vec3 nominator    = NDF * G * F; 
        float denominator = 4 * max(dot(N, V), 0.0) * max(dot(N, L), 0.0);
        vec3 specular = nominator / max(denominator, 0.001); // prevent divide by zero for NdotV=0.0 or NdotL=0.0
        
        // kS is equal to Fresnel
        vec3 kS = F;
        // for energy conservation, the diffuse and specular light can't
        // be above 1.0 (unless the surface emits light); to preserve this
        // relationship the diffuse component (kD) should equal 1.0 - kS.
        vec3 kD = vec3(1.0) - kS;
        // multiply kD by the inverse metalness such that only non-metals 
        // have diffuse lighting, or a linear blend if partly metal (pure metals
        // have no diffuse light).
        kD *= 1.0 - metallic;	  

        // scale light by NdotL
        float NdotL = max(dot(N, L), 0.0);        

        // add to outgoing radiance Lo
        Lo += (kD * vec3(albedo) / PI + specular) * radiance * NdotL;  // note that we already multiplied the BRDF by the Fresnel (kS) so we won't multiply by kS again

	}   
    
    // ambient lighting (note that the next IBL tutorial will replace 
    // this ambient lighting with environment lighting).
	vec3 irradiance = textureCube(cubemap, N).rgb;
    //vec3 ambient = vec3(0.03) *vec3( albedo) * ao;
	vec3 ambient = irradiance * vec3(albedo) * ao;

    vec3 color = ambient * Lo;

    // HDR tonemapping
    color = color / (color + vec3(1.0));
    // gamma correct
    color = pow(color, vec3(1.0/2.2)); 


    gl_FragColor = vec4(color, albedo.a);

}
