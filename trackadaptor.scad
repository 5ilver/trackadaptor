// Trackmaster to Trackmaster 2 converter track
// Copyright (C) 2016 Andrew McCollum
// github.com/5ilver/ silver@silvermag.net


// This program is free software; you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation; either version 3 of the License, or
// (at your option) any later version.

// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.

// You should have received a copy of the GNU General Public License
// along with this program; if not, write to the Free Software Foundation,
// Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301  USA

translate([10,0,0]) cube([10,12,12],true);

difference(){
   //outy track
    translate([10,-13.5,0]) cube([47,15,12],true);
   //tracktop
   rotate([0,5,0]) translate([10,-13.5,9]) cube([51,10,10],true);
   translate([10,-13.5,9]) cube([51,10,10],true);
    
    //round outy
    translate([-10,-13.5,0]) difference(){
        cube([11,20,20],true);
        cylinder(50,4,4,true);
        translate([10,0,0])     cube([20,5,50],true);
    }
    translate([-10,-13.5,0])   cube([15,1.5,50],true);
    
    //square outy
    
    translate([32,-13.5,3.5]) cube([9,16,10],true);
    translate([27,-13.5,-8.5]) cube([5,16,10],true);
    translate([30,-20,0]) cube([11,5,20],true);
    translate([30,-7,0]) cube([11,5,20],true);
    translate([27,-17.5,0])   rotate(90,90,0) cylinder(20,1.5,1.5,true);

}

translate([0,13.5,0]) difference(){
 //inny track  
    translate([10,0,0]) cube([30,15,12],true);
 //track top
    rotate([0,5,0])  translate([10,0,9]) cube([41,10,10],true);
    translate([10,0,9]) cube([41,10,10],true);
    
//round inny
    translate([-10,0,0])     cube([20,8,20],true);
    translate([-1,0,0])    cylinder(50,4.75,4.75,true);
 

    
   //square inny 
    translate([25,0,-2]) cube([10,9,6],true);
    translate([24,0,0]) cube([4,9,8],true);
    translate([18,0,-5]) cube([6,12,12],true);
}
