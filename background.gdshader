shader_type canvas_item;
uniform vec2 offset;
uniform float speedFactor;
uniform float size;

void fragment() {
	vec2 uv = mod(UV * size + offset * speedFactor, size) / size;
	vec4 c = texture(TEXTURE, uv);

	COLOR = c;
}
