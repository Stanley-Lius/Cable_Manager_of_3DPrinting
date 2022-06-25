/*製作桌面電線理線器*/
/*將桌面上的插頭以及電線集中管理*/
/*正式宣告失敗*/
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
/*兩層圓柱體，電線纏繞於內層/*/
translate([0,100,0])
    difference(){
        Hole_Donut(30,50,35,20);
        translate([0,0,5])
            Hole_Donut(30,40,20);

    }
/*單層很高的圓柱體，電線纏繞於外面*/
union(){
    linear_extrude(250)
        difference(){
            circle(20);
            offset(r = -5)
                circle(20);
        }
    translate([0,16,30])
        side_hook();
    translate([0,-16,30])
        side_hook(-1);
    translate([0,16,60])
        side_hook(1);
    translate([0,-16,60])
        side_hook(-1);
    translate([0,16,90])
        side_hook(1);
    translate([0,-16,90])
        side_hook(-1);
    translate([0,16,120])
        side_hook(1);
    translate([0,-16,120])
        side_hook(-1);
    translate([0,16,150])
        side_hook(1);
    translate([0,-16,150])
        side_hook(-1);
    translate([0,16,180])
        side_hook(1);
    translate([0,-16,180])
        side_hook(-1);
    translate([0,16,210])
        side_hook(1);
    translate([0,-16,210])
        side_hook(-1);
    translate([0,16,240])
        side_hook(1);
    translate([0,-16,240])
        side_hook(-1);
    }

    
 module side_hook(side = 1){
    if(side ==1){
        rotate([270,360,90])
            difference(){
                cube([15,20,10]);
                cube([10,15,10]);
            }
    }
    if(side == -1){
        rotate([270,360,270])
            difference(){
                cube([15,20,10]);
                cube([10,15,10]);
            }
        }
}
        


        

        




