# Direct-Methanol-Fuel-Cell-Range-Extender
![image](https://user-images.githubusercontent.com/85165363/120513904-641cee00-c3d5-11eb-8de8-60fe5b55160d.png)

## Intro
This project represents a viability study on using the DMFC as a range extender in elctric vehicles and also takes the role of my final year project at Loughborough University.

## Aims and Objectives
The aim of this project was to determine the feasibility of using direct methanol fuel cells as range extenders in electric vehicles. This was achieved by developing a mathematical model of the fuel cell and the car. The model would have to realistically predict the performance of the DMFC under different conditions and be integrated along with car and battery models that resemble the market variants used for benchmarking. The process required the following objectives:
1. Obtain valid polarisation (voltage vs current) curves of the fuel cell compared with the experimental data under different thermodynamic parameters and methanol concentrations
1. Calculate the cross-over rate and apply it in the calculation of the cell voltage
1. Select an appropriate driving cycle for the simulation (NEDC was chosen)
1. Find the number of DMFC cells that would satisfy the charging requirements of the car batteries
1. Determine the methanol consumption and the required amount of water in terms of the concentrations chosen
1. Produce range and weight comparisons between the DMFC range extended vehicle and its benchmarked counterparts with hydrogen and gasoline

## Methanol Fuel Cell Performance
The obtained voltage-current curve of the DMFC at different methanol concentrations is shown below.

![image](https://user-images.githubusercontent.com/85165363/120318531-a3b9dc00-c2e8-11eb-9dfb-f9214116d7d1.png)

## Range Extender System
The methanol fuel cell would act as a charger to the batteries when their state of charge (SOC) reaches a minimum threshold. The image on the left shows the system flow diagram and the one on the right shows the SOC diagram and how it is recharged by the DMFC at 0.5 M concentration and 40 A. The graph shows that the running time of the batteries and methanol would be just above 65000 sec of NEDC cycle repetitions.

![image](https://user-images.githubusercontent.com/85165363/120344186-0b305580-c302-11eb-860f-6b1e795e2320.png)
![image](https://user-images.githubusercontent.com/85165363/120344354-2ef39b80-c302-11eb-993a-7834f818f66a.png)

## Comparison vs Hydrogen Fuel Cell and Gasoline Engine Range Extenders
The table of range and range/system weight comparisons with the PEMFC and gasoline are shown below. The DMFCs at lower concentrations (like 0.5 M) were found to be viable options but would require further work and analysis, whereas the higher concentrations proved to not be viable.

Range Extender | Total Range (km) | Range/mass (km/kg)
-------------- | ---------------- | ------------------
PEMFC | 561 | 5.78
DMFC 0.5 M | 656 | 4.38
DMFC 0.75 M | 541 | 3.81
DMFC 1 M | 468 | 3.4

Range Extender | Total Range (km) | Range/mass (km/kg)
-------------- | ---------------- | ------------------
Gasoline | 343 | 4.28
DMFC 0.5 M | 400 | 3.66
DMFC 0.75 M | 352 | 3.45
DMFC 1 M | 329 | 3.35

