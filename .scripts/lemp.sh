#!/bin/bash

# Function to check if a service is running
is_service_running() {
    local status="$(service "$1" status 2>&1)"
    if [[ "$status" =~ "running" ]]; then
        return 0  # Service is running
    fi
    return 1  # Service is not running
}

# Function to start a service
start_service() {
    service "$1" start
    echo "$1 started"
}

# Function to restart a service
restart_service() {
    service "$1" restart
    echo "$1 restarted"
}

# Function to stop a service
stop_service() {
    if is_service_running "$1"; then
        echo "Stopping $1..."
        service "$1" stop
        echo "$1 stopped"
    else
        echo "$1 is not running."
    fi
}

# Function to reload a service
reload_service() {
    if is_service_running "$1"; then
        echo "Reloading $1..."
        service "$1" reload
        echo "$1 reloaded"
    else
        echo "$1 is not running."
    fi
}

# Function to display the status of a service
show_service_status() {
    if is_service_running "$1"; then
        echo "$1 is running"
    else
        echo "$1 is not running"
    fi
}

# Function to display help message
show_help() {
    echo "Usage: $0 [--status] [--stop] [--reload] [--help]"
    echo "  --status: Show the status of all services"
    echo "  --stop: Stop all services"
    echo "  --reload: Reload all services"
    echo "  --help: Display this help message"
}

# Function to handle options
handle_option() {
    case "$1" in
        --stop)
            stop_service "$2"
            ;;
        --reload)
            reload_service "$2"
            ;;
        --status)
            show_service_status "$2"
            ;;
        *)
            echo "Invalid option: $1"
            show_help
            exit 1
            ;;
    esac
}

# Main function to start, stop, reload, or show status of services based on flags
lemp_manage_services() {
    local all_running=true

    for service_name in nginx mariadb php8.1-fpm; do
        if ! is_service_running "$service_name"; then
            all_running=false
            break
        fi
    done

    if [ "$#" -eq 0 ]; then
        if [ "$all_running" = true ]; then
            read -p "LEMP is already running. Do you want to restart LEMP? [Y/n]: " choice
            if [[ "$choice" =~ ^[Yy]$ ]]; then
                restart_service nginx
                restart_service mariadb
                restart_service php8.1-fpm
            else
                exit 0
            fi
        else
            start_service nginx
            start_service mariadb
            start_service php8.1-fpm
        fi
    fi

    while [[ $# -gt 0 ]]; do
        case "$1" in
            --help)
                show_help
                exit 0
                ;;
            *)
                handle_option "$1" "$2"
                shift 2
                ;;
        esac
    done
}

# Check if the user has sudo privileges
if [ "$EUID" -ne 0 ]; then
    echo "Please run this script with sudo or as root."
    exit 1
fi

# Call the main function to start, stop, reload, or show status of services based on flags
lemp_manage_services "$@"
