serial = "#SERIAL";
font = "Unifont";

difference() {
    cylinder(r=25, h=3.4, $fn=6);
    union() {
        translate([0, 0, 2])
            cylinder(r=23, h=3, $fn=6);
        translate([0, 0, -0.2])
        linear_extrude(0.6)
            mirror([1, 0, 0])
            offset(delta=0.05)
            text(serial, size=6, halign="center", valign="center", font=font);
    }
}

title_translate = [0, 14, 0];
founding_translate = [0, -13, 0];
member_translate = [0, -18, 0];

/* difference() {
    union() {
        translate(title_translate + [-11.5, -1, 0])
            cube([23, 6, 3.4]);
        translate(founding_translate + [-14, -1.5, 0])
            cube([28, 7, 3.4]);
        translate(member_translate + [-11.5, -1, 0])
            cube([23, 6, 3.4]);
    } */
    linear_extrude(3.4)
        union() {
            translate(title_translate)
                offset(delta=0.18)
                text("hack.bs", size=5, halign="center", font=font);
            translate(founding_translate)
                offset(delta=0.18)
                text("founding", size=5, halign="center", font=font);
            translate(member_translate)
                offset(delta=0.18)
                text("member", size=5, halign="center", font=font);
        }
// }


translate([-14, -9.5, 1])
    linear_extrude(2.4)
    resize([28, 19, 1])
    import("signature.svg");