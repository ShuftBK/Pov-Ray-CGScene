//Snowman

#include "colors.inc"
#include "shapes.inc"
#include "woods.inc"
#include "skies.inc"            
              
camera { 
    location <10, 3, 0>
    angle 50
    look_at <0, 1, 0>
    }
    
light_source {
    <10, 3, 0>
    color rgb<1, 1, 1>*2
    }      
      
sky_sphere {S_Cloud1}
    
object {
    Plane_XZ 
    pigment { color Wheat }
    translate <0, -1 , 0> 
    no_shadow
    }
           
union {    
    object {
        sphere {<0 ,0 ,0> 1.25}
        pigment { color  White }
    }
       
 
    object {
        Disk_Y   
        scale <0.1, 1, 0.1>   
        rotate <75, 0, 0> 
        translate <0, 0.75, 1.5> 
        texture{ T_Wood5} 
    }
    
    object {
        Disk_Y   
        scale <0.1, 1, 0.1>   
        rotate <-75, 0, 0> 
        translate <0, 0.75, -1.5> 
        texture{ T_Wood5} 
    }     
} 

union {          
    object { 
        sphere {<0 , 0, 0> 1}
        pigment { color  White }
    }  
    
    object {
        Disk_X
        scale <0.1,0.1,0.1>
        translate <0.85, 0.3, -0.3>
    }   
    
    object {
        Disk_X
        scale <0.1,0.1,0.1>
        translate <0.85, 0.3, 0.3>
    }   

    object {
        Disk_Z
        scale <0.05,0.05,0.2>
        rotate <-20,-50,0>
        translate <0.75, 0.6, 0.3>
    }
 
    object {
        Disk_Z
        scale <0.05,0.05,0.2>
        rotate <200,50,0>
        translate <0.75, 0.6, -0.3>
    }
    
    object {
        cone  {<0, 0, 0>,0.25,<0.25,0 , 0>,0}
        translate <0.9,0,0>
        pigment { color Orange }
    }
    
    object {
        Disk_X
        scale <0.1,0.075,0.075>
        translate <0.9, -0.4, -0.15>
    
    }    
    
    object {
        Disk_X
        scale <0.1,0.075,0.075>
        translate <0.9, -0.4, 0.15>   
    }

    object {
        Disk_X
        scale <0.1,0.075,0.075>
        translate <0.9, -0.25, -0.4>
    }          
 
 
    object {
        Disk_X
        scale <0.1,0.075,0.075>
        translate <0.9, -0.25, 0.4>
    } 
      
    translate <0, 1.5 ,0>
    
}
 
union {   
    object {
        cone {<0, 0, 0>,0.5,<0, 1, 0>,0.35}
        pigment { color Red }
    }

    object {
        Disk_Y
        scale <0.6, 0.1, 0.6>
        pigment { color Red }
    }
     
    translate < 0, 2.4, 0>
    
}            