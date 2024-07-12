#version 330 core

layout (location = 0) in vec3 position;
layout (location = 1) in vec2 texCoords;

out vec4 vertexColor;
out vec2 TexCoords;

uniform mat4 projection;
uniform mat4 view;
uniform vec3 offset;
uniform vec4 color;

void main()
{
    TexCoords = texCoords;
    vertexColor = color;

    vec3 cameraRight = vec3(view[0][0], view[1][0], view[2][0]);
    vec3 cameraUp = vec3(view[0][1], view[1][1], view[2][1]);

    float scale = 0.001;
    vec3 scaledPosition = position * scale;

    vec3 worldPosition = offset + (cameraRight * scaledPosition.x) + (cameraUp * scaledPosition.y);

    gl_Position = projection * view * vec4(worldPosition, 1.0);
}