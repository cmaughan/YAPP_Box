/*
Created by: Lerch (https://github.com/Lerch4)
License: Creative Commons Attribution-ShareAlike 4.0 International License
Attribution: 
    - Multiboard
        - Created by Jonathan from Keep Making (https://www.youtube.com/@Keep-Making)
        - Website: https://www.multiboard.io/
*/

/*[Tag]*/
number_of_units = 5; // [2:1:20]
tag_thickness = 1; // [0.1:0.1:10]
holes = "both"; // ["left","right", "both"]
hex_hole = false;
// 1 is square, 25 is a semi circle
left_edge_diameter = 25; // [1:1:25]
// 1 is square, 25 is a semi circle
right_edge_diameter=25; // [1:1:25]
// only works in OpenSCAD viewer
tag_preview_color = "teal";

/*[Text]*/
label_text = "7Mhz PTO";
text_direction = "ltr"; // ["ltr", "rtl", "ttb", "btt"]
text_size = 5;
text_height = .6; // [0.01:0.01:5]
text_font = "Calibri";
// Ex. "Bold", "Italic", "None"
text_style = "Bold"; 
text_spacing = 1; // [0:.01:3]
text_h_align = "center"; // ["left", "center", "right"]
text_x_offset = 3; // [-50:.1:50]
text_v_align = "center"; // ["left", "center", "right"]
text_y_offset = 0; // [-50:.1:50]
// only works in OpenSCAD viewer
text_preview_color = "white";


/*[Overrides]*/
tag_length_override = false; 
tag_length = 125; // [25:.5:300]
curve_faces = 128; // [8:1:128]

/*[Hidden]*/
multiboard_unit_length = 25;
multiboard_mid_bolt_radius = 9;
width = 15;
length = 32;
text_rotation = (text_direction=="ttb" || text_direction == "btt") ? 180 : 90;
fixed_h_align = (text_h_align=="left") ? "right":(text_h_align=="right")? "left":"center";
single_hole_offset = (holes == "left") ? width/2: (holes == "right") ? -1*width/2: 0;
text_font_true = (text_style == "None")? text_font: str(text_font,":style=",text_style);
// Modules --------------------------------------------------------------------------------
module corners(){

    // right side
    translate([(width-right_edge_diameter)/2,((length)/2)-right_edge_diameter/2,tag_thickness/2*-1])
        rotate(22.5)
        cylinder(d=right_edge_diameter, h=tag_thickness, $fn = curve_faces);

    translate([(width-right_edge_diameter)/2*-1,((length)/2)-right_edge_diameter/2,tag_thickness/2*-1])
        rotate(22.5)
        cylinder(d=right_edge_diameter, h=tag_thickness, $fn = curve_faces);

    //  left side
    translate([(width-left_edge_diameter)/2,(length/2*-1)+(left_edge_diameter/2),tag_thickness/2*-1])
        rotate(22.5)
        cylinder(d=left_edge_diameter, h=tag_thickness, $fn = curve_faces);

    translate([(width-left_edge_diameter)/2*-1,(length/2*-1)+(left_edge_diameter/2),tag_thickness/2*-1])
        rotate(22.5)
        cylinder(d=left_edge_diameter, h=tag_thickness, $fn = curve_faces);

}

module tag(){
    // Tag
    
    color(tag_preview_color)
    difference() {
        cube([width,length,tag_thickness], true); 
        translate([-3, 0, 0])
            cylinder(h=tag_thickness + 1, r=3, center=true);
    }
}

module label_text(){
// Label Text
color(text_preview_color)
    translate([text_x_offset, text_y_offset  + single_hole_offset ,tag_thickness/2])
    linear_extrude(text_height)
    rotate(text_rotation)
    text(label_text, text_size, text_font_true, halign = fixed_h_align, valign = text_v_align, direction = text_direction, spacing = text_spacing);
}




// main ---------------------------------------------------------------------------------------------
//tag();
//label_text();

render_part = is_undef(render_part) ? "" : render_part;
if (render_part == "plate") tag();
else if (render_part == "text") label_text();

