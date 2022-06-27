radius = 70;
/*difference(){
    union(){
        linear_extrude(100)
            circle(radius,$fn = 8);
        
        translate([0,-radius,0])
        linear_extrude(100)  
            square([140,radius*2]);
    }
    
    union(){
        translate([5,0,5])
        linear_extrude(100)
            circle(radius,$fn = 8);
        
        translate([5,-radius+5,5])
        linear_extrude(100)  
            square([140,radius*2-10]);
    }
    
    translate([-radius-5,-10,10])
        cube([20,20,80]);
    
}*/



/*translate([300,0,-5])
rotate([0,0,180])
    difference(){
        union(){
            linear_extrude(105)
                circle(radius,$fn = 8);
            
            translate([0,-radius-10,0])
            linear_extrude(105)  
                square([70,radius*2+20]);
        }

        union(){
            translate([5,0,5])
            linear_extrude(100)
                circle(radius,$fn = 8);
            
            translate([5,-radius-2,5])
            linear_extrude(100)  
                square([70,radius*2+4]);
        }

        translate([-radius-30,-10,10])
            cube([40,20,80]);

}*/
difference(){
    linear_extrude(5)
        square([160,radius*2+5],center = true);
    linear_extrude(5)
        square([150,50],center = true);
}
    



    