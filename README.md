# Linear Regression for Turbine Calculation and Windfarm Cost Estimation

## Motivation
We participated in the EAGE Minus CO2 Challenge to develop a net-zero CO2 emission oilfield called Norne. One of our main constraints was precisely the fact that we couldn't produce more CO2 than what we were available to compensate by Carbon Capture and Storage (CCS) or other technologies. Gas flaring and venting, but also gas burning for energy generation are among the highest reasons for emissions by platforms, so we proposed the use of a **wind farm** inspired by distinct projects involving the same scope of work to produce our energy source.

## Problem
We don't actually know how each variable in the building of a **wind farm** project affects the final cost the wind farm. For example, water depth, number of turbines, capacity factor, nominal capacity. In order to propose a solution we need to better understand the data.

## The Methodology
The collection of data came from [4C's Global Offshore Wind Farm Database](https://www.4coffshore.com/windfarms/). We collected project's general characteristics such as turbine quantity, water depth, total cost of project, total power, etc. Our code is based on two steps:

### Turbine Calculation
Depending on the power demand, water depth and year of building we calculate the number of turbines.

### Cost Esimation
With the turbines input, we can then estimate total cost for project using all the previous inputs as well.
