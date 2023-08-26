**Pressure-Velocity Coupling in Unsteady Flows - PISO Algorithm**


## Problem Description

This repository addresses the problem of heat conduction in a flat plate using the Pressure-Implicit with Splitting of Operators (PISO) algorithm. The primary focus is on understanding the coupling between pressure and velocity in unsteady fluid flows. The specific problem involves the heat conduction process within a flat plate.

**Initial Conditions:**
- Temperature (T): 200 K at t=0
- Plate Length (L): 2 cm
- Thermal Conductivity (k): 10 W/m·K
- Specific Heat Capacity (Cᵥ): 10 × 10^3 J/m^3·K

## Solution Approach

The solution to the heat conduction problem is implemented using MATLAB. The Pressure-Implicit with Splitting of Operators (PISO) algorithm is employed to model the interaction between pressure and velocity fields in unsteady flows. The PISO algorithm is a widely used numerical method for solving the Navier-Stokes equations, providing stable and accurate results for fluid flow simulations.

The repository contains the MATLAB code necessary to simulate the heat conduction process using the PISO algorithm. The code takes into account the initial conditions and material properties to simulate the evolution of temperature distribution within the flat plate over time.

## Repository Contents

- `main/`: This directory contains the MATLAB source code files for the implementation of the PISO algorithm and the heat conduction simulation.
- `README.md`: You are reading this file right now. It provides an overview of the repository's contents and the problem being addressed.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---
