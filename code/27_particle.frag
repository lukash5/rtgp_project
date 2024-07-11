#version 330 core

in vec4 vertexColor;
in vec2 TexCoords;
out vec4 FragColor;

uniform sampler2D sprite;

void main()
{
    vec4 sampled = texture(sprite, TexCoords);
    FragColor = sampled * vertexColor;
}