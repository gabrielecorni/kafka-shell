# list of configuration env variables to inject into containers

# set public variables
CONTAINER_NAME="kafka-shell"

# omit private variables 
#   - copy this template 
#   - rename it 
#   - source it
#   - don't put the copy under version control!
DATAGEN="pizza" # pizza | userbehaviour | stock | realstock | metric
REGISTRY_NAME=
REGISTRY_USER=
REGISTRY_PASS=