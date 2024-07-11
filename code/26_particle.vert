#version 330 core

layout (location = 0) in vec3 position;
layout (location = 1) in vec4 color;
layout (location = 2) in vec2 texCoords;

out vec4 vertexColor;
out vec2 TexCoords;

uniform mat4 projection;
uniform mat4 view;
uniform vec3 offset;

void main()
{
    float scale = 0.005;
    vertexColor = color;
    TexCoords = texCoords;

    gl_Position = projection * view * vec4(position * scale + offset, 1.0);
}