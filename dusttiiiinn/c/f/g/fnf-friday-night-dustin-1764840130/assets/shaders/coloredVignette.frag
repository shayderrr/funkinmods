#pragma header

uniform vec3 color;
uniform float amount;
uniform float strength;

uniform bool transperency;

uniform vec4 _camSize;

float map(float value, float min1, float max1, float min2, float max2) {
	return min2 + (value - min1) * (max2 - min2) / (max1 - min1);
}

vec2 getCamPos(vec2 pos) {
	vec4 size = _camSize / vec4(openfl_TextureSize, openfl_TextureSize);
	return vec2(map(pos.x, size.x, size.x + size.z, 0.0, 1.0), map(pos.y, size.y, size.y + size.w, 0.0, 1.0));
}

vec2 camToOg(vec2 pos) {
	vec4 size = _camSize / vec4(openfl_TextureSize, openfl_TextureSize);
	return vec2(map(pos.x, 0.0, 1.0, size.x, size.x + size.z), map(pos.y, 0.0, 1.0, size.y, size.y + size.w));
}

vec4 textureCam(sampler2D bitmap, vec2 pos) {
	return flixel_texture2D(bitmap, camToOg(pos));
}

void main() {
    vec4 flixelColor = flixel_texture2D(bitmap, openfl_TextureCoordv);
    vec2 uv = openfl_TextureCoordv.xy;

    if (transperency) {
        float dist = distance(openfl_TextureCoordv, vec2(0.5));

        float vignette = mix(1.0, 1.0 - amount, dist);
        float shapedVignette = pow(vignette, strength);  // stronger falloff
        float vignetteStrength = 1.0 - shapedVignette;

        vec3 vignetteColor = color * vignetteStrength;

        gl_FragColor = flixelColor + vec4(vignetteColor, vignetteStrength);
    } else {
        vec3 col = pow(flixel_texture2D(bitmap, uv).rgb, vec3(1.0 / strength));

        float vignette = mix(1.0, 1.0 - amount, distance(uv, vec2(0.5)));
        col = pow(mix(col * color, col, vignette), vec3(strength));

        gl_FragColor = vec4(col, 1.0);
    }
}
