# Needle-Holster
For creating cannulas

Design for cannula holster was coded by medical student Nam Tran in the program OpenSCAD with a base width and depth of 20mm and diamond shaped wells with a diameter of 0.5mm and a depth of 2.3mm. 

## Usage
Modifications can be done to `Holster.scad` using the OpenSCAD software by either editing the variables in code or using the Customizer window.

To modify and print, follow these general steps:

1. Make modifications in OpenSCAD and save.
2. Click "Render" (F6).
3. Click "Export as STL" (F7).
4. Slice the STL file into gcode using either [Cura](https://ultimaker.com/software/ultimaker-cura), [Slic3r](https://slic3r.org/), or some other slicing software.

### Test Print
An initial test print should be done using a `wells_per_row` of 1 and a `wells_per_column` of 1. This is to ensure the least amount of plastic waste.

### Quality Assessment
The print should be assessed for quality, ensuring all layers of the print were uniform and that a 26G barrel could enter the wells with ease.

In the case that adjustment is needed, bed levelling, bed and nozzle temperature adjustment, and making sure that the belts of the printer are properly tightened can improve print quality. Common troubleshooting steps can be found [here](https://www.simplify3d.com/support/print-quality-troubleshooting/) for various print quality issues.

### Measurement Assessment
Well depth can be assessed using digital calipers to measure the base of the holster, the length of a barrel, and the total length of the barrel inserted fully into each well in order to determine that 2.3mm of barrel was concealed.

In the case that adjustment is needed, `depth_tolerance` and `diameter_tolerance` can be adjusted in increments of 0.1mm. Anecdotally, the diameter tolerance should usually be set to the 3D printer nozzle width (e.g. 0.4mm).

### Post-Print Modification
In the event that the wells are still shallow, a 26G needle can be inserted into the well, applying pressure with a twisting motion to further carve out the well to the desired depth.
