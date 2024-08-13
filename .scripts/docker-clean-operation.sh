#!/bin/zsh

# Display the menu
echo "1. Stop all running Docker containers"
echo "2. Force remove all Docker containers"
echo "3. Prune the Docker system"
echo "Please enter your choice (1, 2 or 3):"

# Read the user's choice
read choice

# Execute the command based on the user's choice
case $choice in
    1)
        docker stop $(docker ps -q)
        echo "All running Docker containers have been stopped."
        ;;
    2)
        docker rm -f $(docker ps -q)
        echo "All Docker containers have been force removed."
        ;;
    3)
        docker system prune -f
        echo "The Docker system has been pruned."
        ;;
    *)
        echo "Invalid choice. Please choose 1, 2 or 3."
        exit 1
        ;;
esac

# Exit the script
exit 0
