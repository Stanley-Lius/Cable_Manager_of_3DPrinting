/*製作桌面電線理線器*/
/*將桌面上的插頭以及電線集中管理*/
module Hole_Donut(h1,r1,thickness,hole_size=0){
    difference(){
        linear_extrude(50)
            difference(){
                circle(h=h1,r=r1,center = true);
                offset(r = -thickness)
                    circle(h=h1,r=r1,center = true);
            }
        translate([-(hole_size/2),r1-(hole_size/2),(h1-hole_size)/2])
                    cube(size = hole_size);
        translate([-(hole_size/2),-(r1+(hole_size/2)),(h1-hole_size)/2])
            cube(size = hole_size);
        translate([r1-(hole_size/2),-(hole_size/2),(h1-hole_size)/2])
            cube(size = hole_size);
        translate([-(r1+(hole_size/2)),-(hole_size/2),(h1-hole_size)/2])
            cube(size = hole_size);
        translate([-(hole_size/2),r1-(hole_size/2),(h1-hole_size)/2])
            cube(size = hole_size);
        translate([-(hole_size/2),-(r1+(hole_size/2)),(h1-hole_size)/2])
            cube(size = hole_size);
        translate([r1-(hole_size/2),-(hole_size/2),(h1-hole_size)/2])
            cube(size = hole_size);
        translate([-(r1+(hole_size/2)),-(hole_size/2),(h1-hole_size)/2])
            cube(size = hole_size);
        
        }
}

difference(){
    Hole_Donut(50,100,40,30);
    translate([0,0,5])
        Hole_Donut(50,95,30);
    
}

