#version 330 core

// Input vertex data, different for all executions of this shader.
layout(location = 0) in vec3 vertices_position_modelspace;
layout(location = 1) in vec2 uv_coord;


// Values that stay constant for the whole mesh.
out vec2 TexCoord;
out float posZ ;

// Uniform transformations matrices
uniform mat4 ModelMatrix;
uniform mat4 ViewMatrix;
uniform mat4 ProjectionMatrix;

uniform sampler2D heightmap ;

void main()
{
    TexCoord = uv_coord;
    vec4 couleur = texture(heightmap, TexCoord);
    posZ = couleur.r ;
    vec3 pos = vec3(vertices_position_modelspace.x, posZ, vertices_position_modelspace.z);
    gl_Position = ProjectionMatrix * ViewMatrix * ModelMatrix * vec4(pos, 1.0);
    
}


