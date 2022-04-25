# HL_open_source_hardware
Open source repository for hardware and associated software developed within the Haniffalab

 - This Repository contains hardware and software projects designed for the haniffalab and is aimed at open-source distribution of 3D-printable laboratory hardware.
  Each project listed is continually evolving and users are encouraged to download, modify and post remixes of available hardware and software.

![Screenshot 2022-04-25 at 12 17 21](https://user-images.githubusercontent.com/46449131/165078795-26e6ce80-b388-4947-9ef0-6dd878fc8f60.png)

## Hardware
Files are available in both Mesh (.stl) and Solid (.DWG) formats. Hardware was primarily printed using a custom FDM-style printing system in PLA unless otherwise stated. 
Some projects including the custom culture chips were printed on an SLA-based system (FORM3) in bio-compatible Dental-SG resin.

## Software
Includes base software and tools written or otherwise assembled for use with various hardware listed in this repo. Some interfacing tools are still in development and thus currently not available on this repo yet.
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
- This directory contains 3D printable CAD files for the design and assembly of an encased atmospheric environmental monitering unit which users may interface directly with the HL_robot_controller unit via the GPIO access. The atmospheric monitor unit continually samples atmospheric conditions during experiments enabling users to directly interface the unit to any running experimental process or simply to keep track of technical variables introduced by atmospheric conditions (heat/humidity etc). 
- The Encironmental monitoring unit presensts users a fully customisable platform for monitering experiments and can be directly interfaced with the HL-robotic_controller unit.

### 4_HL_prototype_micro_fluidic_culture_chip
- This repository contains the open source designs for our ongoing multi-organoid culture chambers used to culture multiple organoids and perform automated perfusion + media changes.

### 5_HL_orbital_shaker
- This is a custom-designed orbital shaker used to keep sheroids in suspension whilst cultured on a well-plate system. The speed controller allows up to 200RPM agitation and is suitable for both culture and light use as a chemical agitator.


### 6_HL_lunchables_raspi4_based_mini_server
- This directory contains 3D printable models for individual units that maybe assembled to form a "micro-cluster" running Docker-swarm. Each unit is designed to accept a PI4 unit, a PI4 compute unit, or a lattepanda alpha SBC.

- Individually, each node is capable of running independent of the cluster unit and provides a the user an Jupyterlab IDE environment for learning data analysis.

### 7_HL_remote_work_Microscopy_image_server
- This directory contains 3D printable files and scripts used to create a light-weight, portable, web-accesible microscopy tiling image portal for remote work access. This work was incredibly important to allow clinicians and fellow biologists to access imaging data in an interactive manner during the COVID lockdowns. 
- It allowed pathologists and dermatologists to score Squamous cell Carcinoma slides, biologists to access and analyse Flourescence imgaing data and IHC data. Furthermore it provided a platform for tunneled data sharing and external tunnel access amongst data scientists of the Haniffalab and collaborators when such resources were still unavailable.

### 8_HL_Laminar_flow_hepa_hood
- This directory contains plans and 3D printable parts for the contruction of a laminar flow, hepa-filtered hood for general purpose work. This Cabinet was designed in response to the call for production of faceshields and associated PPE during the 2020 COVID19 crisis. The cabinet was used primarily for the safe-handling and sterilisation of 3D-printed PPE units prior to distribution.

### 9_HL_covid_ear_saver_v1.1
- A simple 3D printable CAD design for a "around the head" mask-hook or 'ear-saver'.

### 10_HL_various_lab_tube_racks
- CAD files for variuous 3D printable tube-racks
### 11_HL_accessory_cad_models
- This directory contains CAD models of accessories which may be 3D printed with an SLA 3D printer, these models may be either used as-is or used in the design process of your prototypes.
### 12_HL_peristaltic_pump_unit
- 3D printable CAD models of a peristaltic pump which may be interfaced with the HL_robotic_controller or the HL_bio_printer control units to provide perfusion to the micro_fluidic_culture_chip systems.


