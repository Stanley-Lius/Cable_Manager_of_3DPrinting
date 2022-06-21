/*製作桌面電線理線器*/
/*將桌面上的插頭以及電線集中管理*/
module Hole_Donut(h1,r1,thickness){
    linear_extrude(50)
        difference(){
            circle(h=h1,r=r1,center = true);
            offset(r = -thickness)
                circle(h=h1,r=r1,center = true);
        }
}

difference(){
    Hole_Donut(50,100,40);
    translate([0,0,5])
        Hole_Donut(50,95,30);
}
