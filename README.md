# HL_open_source_hardware
Open source repository for hardware and associated software developed within the Haniffalab

 - This Repository contains hardware and software projects designed for the haniffalab and is aimed at open-source distribution of 3D-printable laboratory hardware.
  Each project listed is continually evolving and users are encouraged to download, modify and post remixes of available hardware and software.

![Screenshot 2022-04-25 at 12 17 21](https://user-images.githubusercontent.com/46449131/165078795-26e6ce80-b388-4947-9ef0-6dd878fc8f60.png)

## Hardware
Files are available in both Mesh (.stl) and Solid (.DWG) formats. Hardware was primarily printed using a custom FDM-style printing system in PLA unless otherwise stated. 
Some projects including the custom culture chips were printed on an SLA-based system (FORM3) in bio-compatible Dental-SG resin.

## Software
Software written for the bio-printer includes a custom MarlinV2 build designed specifically for bio-prionting.
Additional software and scripts to run environmental feedback via the "pi-control"

### 1_HL_Bioprinter
- This directory contains CAD files and software for building the base-model of our open-source HL_bio-printer which by default is built with two actuated print heads and two independent syringe pumps. 
- The 3D printed parts are designed to fit on any cartesian-printer frame but we recommend the use of smaller frames and leadscrew actuation as this allows for higher repetitive & positional accuracy. (We further provide an X & Y axis lead screw modification)
- The bio-printer runs on a custom floavour of the MARLINV2 firmware and is operated via an integrated PI4 unit running octoprint. The printer may ran independelty of an external controller or may be interfaced with the HL-robot-controller-unit for further intgration of sensors (e.g particulate/humidity sensor, peltier unit contoller for the bio-inks etc).

### 2_HL_pi_robot_control_unit
- The robot_control_unit is a flexible hand-held compute unit which may interface with a suite of sensor systems, log sensor and printer information and create graphical reports. t
- This directory contains CAD files designed for FDM printing. 
- The robotic control system consists of a shell and case for a pi4 (8GB), 10,000mah battery pack, and the 7inch Pi screen. It features GPIO access points and runs software written to integrate with the HL bio-printer and environment monitor units.
- The system runs on a 64-bit Rasbian image and interfaces with the HL-bio_printer via the ethernet port. 

### 3_HL_Environmental_monitor_unit
- 
### 4_HL_prototype_micro_fluidic_culture_chip
- 
### 5_HL_orbital_shaker
- 
### 6_HL_lunchables_raspi4_based_mini_server
- 
### 7_HL_remote_work_Microscopy_image_server
- 
### 8_HL_Laminar_flow_hepa_hood
- 
### 9_HL_covid_ear_saver_v1.1
- 
### 10_HL_various_lab_tube_racks
- 
### 11_HL_accessory_cad_models
- 
### 12_HL_peristaltic_pump_unit
- 


