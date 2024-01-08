#!/bin/bash

# Define IP series and ports
ip_series_1=(
    "10.101.254.176"
    "10.101.254.177"
    "10.101.254.178"
    "10.101.254.179"
    "10.101.254.180"
    "10.101.254.181"
    "10.101.254.182"
    "10.101.254.183"
    "10.101.254.184"
    "10.101.254.185"
    "10.101.254.186"
    "10.101.254.187"
    "10.101.254.188"
    "10.101.254.189"
    "10.101.254.190"
    "10.101.254.191"
)

ip_series_2=(
    "192.168.252.80"
    "192.168.252.81"
    "192.168.252.82"
    "192.168.252.83"
    "192.168.252.84"
    "192.168.252.85"
    "192.168.252.86"
    "192.168.252.87"
    "192.168.252.88"
    "192.168.252.89"
    "192.168.252.90"
    "192.168.252.91"
    "192.168.252.92"
    "192.168.252.93"
    "192.168.252.94"
    "192.168.252.95"
)

ports=("443" "8822")

output_file="traceroute_telnet_output.txt"

# Function to perform telnet and traceroute with a timeout of 5 seconds & 10 seconds
perform_checks() {
    local ip=$1
    local port=$2

    echo "Checking telnet for $ip on port $port..."
    { echo -e "\n\nTelnet Check for $ip:$port\n----------------------------\n"; timeout 5 telnet "$ip" "$port"; } >> "$output_file"

    echo -e "\n\nChecking traceroute for $ip..."
    { echo -e "\n\nTraceroute for $ip\n-----------------\n"; timeout 15 traceroute "$ip"; } >> "$output_file"
}

# Loop through IP series and ports
for ip in "${ip_series_1[@]}" "${ip_series_2[@]}"; do
    for port in "${ports[@]}"; do
        perform_checks "$ip" "$port"
    done
done

echo "Output saved to $output_file"
