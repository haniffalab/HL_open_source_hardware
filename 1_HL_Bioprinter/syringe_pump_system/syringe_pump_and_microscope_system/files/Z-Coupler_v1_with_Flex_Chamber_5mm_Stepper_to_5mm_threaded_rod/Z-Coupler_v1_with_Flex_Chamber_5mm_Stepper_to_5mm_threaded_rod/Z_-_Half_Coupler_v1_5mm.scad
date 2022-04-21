/*

Made by Diego Porqueras - Deezmaker (http://deezmaker.com)

The Z Coupler was originally made to be used on my Bukobot 3D printer

Print with high fill.

Bukobot Information: http://deezmaker.com/bukobot

The default variables are the original values used for A 6mm threaded rod to 5mm motor shaft.

This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>.
*/

$fn = 50;

gap_size = .3; // Space to remove between the two halves (x2)

motor_r = 5/2;
z_rod_r = 5/2;

thickness = 6; // Coupler thickness
total_len = 30; // Coupler Length

// Mounting Screw specs
screw_r = 3.2/2;
screw_nut = 6.6/2;
screw_head = 6/2;

// Flex Chamber Specs

flex_chamber_holes = 5; // per Side
flex_chamber_angle = 33;
flex_chamber_size = 6;
flex_chamber_core = 2.5; // Material left in the middle of coupler


// The Coupler

difference() {
union() {
	// Main cylinder
	rotate([90,0,0])cylinder(r1=motor_r+thickness,r2=z_rod_r+thickness,h=total_len,center=true);
}

// Chop in half
translate([0,0,-(((z_rod_r > motor_r?z_rod_r:motor_r)+thickness+2)/2)+gap_size])cube([((z_rod_r > motor_r?z_rod_r:motor_r)+thickness+2)*2,total_len+5,(z_rod_r > motor_r?z_rod_r:motor_r)+thickness+2],true);

// Shaft Holes
translate([0,(total_len/4)+(flex_chamber_size-1),0])rotate([90,0,0])cylinder(r=motor_r,h=total_len/2,center=true, $fn=10);
translate([0,-((total_len/4)+(flex_chamber_size-1)),0])rotate([90,0,0])cylinder(r=z_rod_r,h=total_len/2,center=true, $fn=10);

// Screw Holes - Motor
translate([motor_r+screw_r+0.5,(total_len/3),-1])cylinder(r=screw_r,h=(z_rod_r > motor_r?z_rod_r:motor_r)+thickness+2,center=0);
translate([-(motor_r+screw_r+0.5),(total_len/3),-1])cylinder(r=screw_r,h=(z_rod_r > motor_r?z_rod_r:motor_r)+thickness+2,center=0);
//Nut
translate([motor_r+screw_r+0.5,(total_len/3),motor_r+(thickness/3)])cylinder(r=screw_nut,h=(z_rod_r > motor_r?z_rod_r:motor_r)+thickness+2,center=0, $fn=6);
//Head
translate([-(motor_r+screw_r+0.5),(total_len/3),motor_r+(thickness/3)])cylinder(r=screw_head,h=(z_rod_r > motor_r?z_rod_r:motor_r)+thickness+2,center=0,$fn=100);


// Screw Holes - Z Rod
translate([z_rod_r+screw_r+0.5,-(total_len/3),-1])cylinder(r=screw_r,h=(z_rod_r > motor_r?z_rod_r:motor_r)+thickness+2,center=0);
translate([-(z_rod_r+screw_r+0.5),-(total_len/3),-1])cylinder(r=screw_r,h=(z_rod_r > motor_r?z_rod_r:motor_r)+thickness+2,center=0);
//Nut
translate([z_rod_r+screw_r+0.5,-(total_len/3),z_rod_r+(thickness/3)])cylinder(r=screw_nut,h=(z_rod_r > motor_r?z_rod_r:motor_r)+thickness+2,center=0, $fn=6);
//Head
translate([-(z_rod_r+screw_r+0.5),-(total_len/3),z_rod_r+(thickness/3)])cylinder(r=screw_head,h=(z_rod_r > motor_r?z_rod_r:motor_r)+thickness+2,center=0,$fn=100);

//Flex Chambers
for ( i = [0 : flex_chamber_holes-1] ) {
	rotate([0,i*(180/(flex_chamber_holes-1))-90,0])rotate([0,0,flex_chamber_angle])scale([1,.25,1])translate([0,0,flex_chamber_core])cylinder(r2=flex_chamber_size,r1=flex_chamber_size,h=((z_rod_r > motor_r?z_rod_r:motor_r)/2)+thickness,center=0);
}
}