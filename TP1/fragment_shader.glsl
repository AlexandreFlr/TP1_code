#version 330 core

// Output data
out vec4 FragColor;

// Input data
in vec2 TexCoord;
in float posZ ;
uniform sampler2D snowrocks ;
uniform sampler2D rock ;
uniform sampler2D grass ;
//uniform sampler2D heightmap ;
void main()
{
    if(posZ>0.8){
        FragColor = texture(snowrocks, TexCoord) ;
    }
    else if(posZ>0.7){
        FragColor = texture(rock, TexCoord) ;
    }
    else{
        FragColor = texture(grass, TexCoord) ;
    }
    //FragColor = texture(heightmap, TexCoord) ;
}


