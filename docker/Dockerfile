FROM julia:1.9

WORKDIR /

# Copy Project.toml and Manifest.toml first to leverage Docker caching
COPY Project.toml Manifest.toml ./

# Install dependencies
RUN julia -e 'using Pkg; Pkg.instantiate()'

# Copy the rest of the application code
COPY . .

# Set the default command
CMD ["julia", "src/main.jl"]
