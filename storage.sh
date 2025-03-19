#!/bin/bash

# Check memory usage
echo "==== Memory Usage ===="
free -h               # Show memory usage in human-readable format

echo
# Check disk usage
echo "==== Disk Usage ===="
df -h                 # Show disk space usage in human-readable format

# Optional: Check specific disk partition (change /dev/sda1 to your partition)
# echo "==== Specific Disk Partition Usage ===="
# df -h /dev/sda1

echo
echo "==== Usage Summary ===="
echo "Memory Information:"
free -h | grep -E 'Mem|Swap'

echo "Disk Information:"
df -h --total | grep 'total'

# End of the script
