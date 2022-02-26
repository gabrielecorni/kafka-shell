# list of configuration env variables to inject into containers

# set public variables
CONTAINER_NAME="kafka-shell"
DATAGEN="pizza" # pizza | userbehaviour | stock | realstock | metric

# omit private variables 
#   - copy this template 
#   - rename it 
#   - source it
#   - don't put the copy under version control!
REGISTRY_NAME="docker.io"
REGISTRY_USER="gabrielecorni"
REGISTRY_PASS=