#pragma header

precision lowp float;

uniform float time;
uniform vec2 res;
uniform float cameraZoom;
uniform vec2 cameraPosition;
uniform int STARTING_LAYERS;
uniform bool flipY;
uniform vec4 snowMeltRect;
uniform bool snowMelts;
uniform bool pixely;
uniform float BRIGHT;
uniform int LAYERS;
uniform float DEPTH;
uniform float WIDTH;
uniform float SPEED;

// Precomputed constants
const mat3 p = mat3(13.323122,23.5112,21.71123,21.1212,28.7312,11.9312,21.8112,14.7212,61.3934);
const float INV_RES_Y_SCALE = 2.0;

void main()
{
    // Simplified coordinate transformation
    vec2 pixelScale = res / openfl_TextureSize;
    vec2 trueFragCoord = gl_FragCoord.xy * pixelScale;
    
    vec2 centeredPixel = trueFragCoord - res.xy * 0.5;
    float invZoom = 1.0 / (cameraZoom + 1.);
    vec2 pixel = centeredPixel * invZoom + res.xy * 0.5 + cameraPosition.xy;

    vec2 uvCentered = INV_RES_Y_SCALE * pixel / res.y;
    if (flipY) uvCentered.y = -uvCentered.y;

    if (pixely) uvCentered = floor(uvCentered * 111.111) * 0.009; // 1/0.009 = 111.111

    // Precalculate ALL loop-invariant values
    float widthMul = WIDTH * (pixely ? 1.5 : 1.0);
    float widthOffset = widthMul * 0.5;
    float speedTime = SPEED * time;
    float speedTime4 = speedTime * 0.4;
    float fLAYERS = float(LAYERS);
    float dof = 5.0 * sin(time * 0.1);
    float invDepthScale = 1.0 / (1.0 + DEPTH * 0.03);
    
    vec3 acc = vec3(0.0);
    
    // Main snow particle loop - optimized
    for (int i=0; i<50; i++) {
        if (i < STARTING_LAYERS) continue;
        if (i >= LAYERS) break;
        
        float fi = float(i);
        float depthFactor = fi * DEPTH;
        float scale = 1.0 + depthFactor;
        vec2 q = uvCentered * scale;
        
        // Optimized position calculation
        float modVal = mod(fi * 7.238917, 1.0);
        q.x += q.y * (widthMul * modVal - widthOffset) + speedTime4 * (fLAYERS - fi) * 0.2;
        q.y += speedTime * invDepthScale / scale;
        
        // Hash calculation
        vec3 n = vec3(floor(q), 31.189 + fi);
        vec3 m = floor(n) * 0.00001 + fract(n);
        vec3 r = fract((31415.9 + m) / fract(p * m));
        
        // Distance field for snowflake
        vec2 qMod = mod(q, 1.0);
        vec2 s = abs(qMod - 0.5 + 0.9 * r.xy - 0.45);
        s += 0.01 * abs(2.0 * fract(10.0 * q.yx) - 1.0);
        
        float d = 0.6 * max(s.x - s.y, s.x + s.y) + max(s.x, s.y) - 0.01;
        float edge = 0.005 + 0.05 * min(0.5 * abs(fi - 5.0 - dof), 1.0);
        
        // Accumulate with smoothstep and depth fade
        acc += smoothstep(edge, -edge, d) * (r.x / (1.0 + 0.02 * depthFactor));
    }

    // Apply snow melt effect (if enabled)
    if (snowMelts && pixel.y >= snowMeltRect.y) {
        vec4 rect = snowMeltRect * pixelScale.xyxy;
        rect.xy += openfl_TextureSize.xy - res.xy;
        
        if (pixel.x >= rect.x && pixel.x < rect.x + rect.z) {
            float meltiness = abs(1.0 - (pixel.y - snowMeltRect.y) / snowMeltRect.w);
            if (pixel.y < snowMeltRect.y + snowMeltRect.w) {
                acc *= meltiness;
            } else {
                acc = vec3(0.0);
            }
        }
    }

    // Final compositing
    vec4 flixelColor = flixel_texture2D(bitmap, openfl_TextureCoordv.xy);
    
    float brightness = 0.8 * BRIGHT * (pixely ? 1.6 : 1.0);
    vec3 effect = acc * brightness;
    flixelColor.rgb += effect;

    // Set alpha for snow on transparent backgrounds
    if (flixelColor.a == 0.0) {
        float effectBrightness = effect.r + effect.g + effect.b;
        if (effectBrightness > 0.0) {
            flixelColor.a = effectBrightness * 0.333333;
        }
    }

    gl_FragColor = flixelColor;
}