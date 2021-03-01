// the point of this file is to be a sort of DSL for constructing keycaps.
// when you create a method chain you are just changing the parameters
// key.scad uses, it doesn't generate anything itself until the end. This
// lets it remain easy to use key.scad like before (except without key profiles)
// without having to rely on this file. Unfortunately that means setting tons of
// special variables, but that's a limitation of SCAD we have to work around

include <./includes.scad>


// example key
/* dcs_row(5) legend("⇪", size=9) key(); */

// example row
/* for (x = [0:1:4]) {
  translate_u(0,-x) dcs_row(x) key();
} */

// example layout
/* preonic_default("dcs"); */

// left

// row 5 left
for (x = [0:1:6]){
    translate_u(x,0) 1u() dcs_row(5) cherry() key();
}

// row 1 left
// tab
translate_u(0.25,-1) 1_5u() dcs_row(1) cherry() key();
for (x = [1:1:5]){
    translate_u(x +0.5,-1) 1u() dcs_row(1) cherry() key();
}

// row 2 left
// mouse
translate_u(0.375,-2) u(1.75) dcs_row(2) cherry() key();
for (x = [1:1:5]){
    translate_u(x +0.75,-2) 1u() dcs_row(2) cherry() key();
}


// row 3 left
// shift left
translate_u(0.625,-3) 2_25u() dcs_row(3) cherry() key();
for (x = [1:1:5]){
    translate_u(x + 1.25,-3) 1u() dcs_row(3) cherry() key();
}

// row 4 left
for (x = [0:1.25:4]){
    translate_u(x + 0.125, -4) 1_25u() dcs_row(4) cherry() key();
}
// mod
translate_u(5.375, -4) spacebar() u(1.75) dcs_row(4) cherry() key();



// right

// row 5 right
for (x = [7:1:12]){
    translate_u(x,0) 1u() dcs_row(5) cherry() key();
}
// backspace
translate_u(13.25,0) 1_5u() dcs_row(5) cherry() key();

// row 1 right
for (x = [6:1:13]){
    translate_u(x +0.5,-1) 1u() dcs_row(1) cherry() key();
}

// row 2 right
for (x = [6:1:11]){
    translate_u(x +0.75,-2) 1u() dcs_row(2) cherry() key();
}
// enter
translate_u(13.15,-2) u(1.75) dcs_row(2) cherry() key();

// row 3 right
for (x = [6:1:10]){
    translate_u(x + 1.25,-3) 1u() dcs_row(3) cherry() key();
}
// shift right
translate_u(12.9,-3) 2_25u() dcs_row(3) cherry() key();

// row 4 right
// enter
translate_u(7.13, -4) spacebar() u(1.75) dcs_row(4) cherry() key();
for (x = [0:1.25:3]){
    translate_u(x + 8.6, -4) 1_25u() dcs_row(4) cherry() key();
}
// ctrl right
translate_u(12.9,-4) 2_25u() dcs_row(4) cherry() key();

