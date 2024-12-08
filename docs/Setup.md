# Setup Guide

## System Requirements
- **Operating System**: Ubuntu 20.04 or later / macOS / Windows 10
- **Memory**: 8 GB RAM (16 GB recommended)
- **Storage**: 10 GB free space
- **Software**:
  - Docker (for containerization)
  - Julia 1.9 or later
  - PostgreSQL

## Installation
1. Clone the repository:
   
`git clone https://github.com/your-repo/FXTraderBot.git`

2. Navigate to the project directory:
`cd FXTraderBot`

3. Set up the environment (if using Docker):
`docker-compose up`

## Running the Project

1. Start the application:
`julia src/main.jl`
2. Access the dashboard at http://localhost:8000.

## Troubleshooting

Database connection error: Ensure PostgreSQL is running and configured correctly.
Missing dependencies: Run Pkg.instantiate() in Julia to install dependencies.


