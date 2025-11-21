#include "colors.inc"
#include "shapes.inc"
#include "skies.inc"

object {
        O_Cloud1
}

sky_sphere {
        pigment {
                gradient y
                color_map {
                        [0.0 White*0.8]
                        [0.2 rgb<0.2 0.2 0.7>]
                }
        }
}

plane {
	y, 0
	pigment {
		checker White Red
	}
	finish {
		phong 1.0
		reflection 0.1
	}
}

object {
	Cube
	scale <0.75, 0.75, 0.75>
	translate <-5, 0.75, 4.5>
	pigment {
		color rgb <0.4, 0.4, 0.8>
	}
}

light_source {
	<125, 250, 250>
	color White * 2
	parallel point_at <0, 0, 0>
}

camera {
	location <5, 1.25, 6>
	look_at <2.5, 1, 5.1>
	angle 35
	up <0, 1, 0>
	right image_width/image_height*x
}
