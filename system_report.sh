REPORT_FILE="system-report.txt"

{
    echo "======================================"
    echo "       LINUX SYSTEM REPORT"
    echo "======================================"
    echo "Generated on: $(date)"
    echo

    echo "1. HOSTNAME"
    echo "--------------------------------------"
    hostname
    echo

    echo "2. KERNEL VERSION"
    echo "--------------------------------------"
    uname -r
    echo

    echo "3. DISK USAGE"
    echo "--------------------------------------"
    df -h
    echo

    echo "4. MEMORY USAGE"
    echo "--------------------------------------"
    free -h
    echo

    echo "5. TOP RUNNING PROCESSES"
    echo "--------------------------------------"
    top -b -n 1

    echo
    echo "======================================"
    echo "           END OF REPORT"
    echo "======================================"

} > "$REPORT_FILE"

echo "System report generated: $REPORT_FILE"
