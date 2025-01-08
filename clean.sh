
#!/bin/sh

# Navigate to the Buildroot directory
cd buildroot || { echo "Failed to navigate to buildroot directory"; exit 1; }

# Run make distclean to clean the Buildroot build directory
make distclean || { echo "Failed to clean the Buildroot build directory"; exit 1; }