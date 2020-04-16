function layer_height() = 0.4;
function unit_height() = 16.4;
function plate_size() = 200;
function z_max() = z_offset()+unit_height()*units();

module topsandbottoms() {
    translate([0,0,-z_max()/2]) union() {
        cylinder(d=1, h=z_max());
        for (z=[z_offset()+unit_height():unit_height():z_max()-layer_height()]) {
            translate([-plate_size()/2,-plate_size()/2,z+layer_height()]) cube([plate_size(),plate_size(),3*layer_height()]);
            translate([-plate_size()/2,-plate_size()/2,z-5*layer_height()]) cube([plate_size(),plate_size(),4*layer_height()]);
        }
    }
}


module firstlayers() {
    translate([0,0,-z_max()/2]) union() {
        cylinder(d=1, h=z_max());
        for (z=[z_offset()+unit_height():unit_height():z_max()-layer_height()]) {
            translate([-plate_size()/2,-plate_size()/2,z]) cube([plate_size(),plate_size(),layer_height()]);
        }
    }
}
