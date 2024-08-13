#!/bin/zsh

confirm_branch_deletion() {
    branches_to_delete=$(git branch -vv | grep ": gone]" | awk '{print $1}')

    if [ -z "$branches_to_delete" ]; then
        exit_with_message
    fi

    echo "Branches to be deleted:"
    echo "$branches_to_delete"

    read -p "Do you want to delete these branches? (y/n): " answer

    if [ "$answer" = "y" ] || [ "$answer" = "Y" ]; then
        delete_branches
    elif [ "$answer" = "n" ] || [ "$answer" = "N" ]; then
        exit_with_message
    else 
        exit_with_message "Invalid input" 1
    fi
}

exit_with_message() {
    local msg="${1:-No branches to delete}"
    local exit_code="${2:-0}"
    
    echo "$msg Exiting..."
    exit "$exit_code"
}

delete_branches() {
    deleted_branches=$(echo "$branches_to_delete" | xargs -r git branch -d)
    echo "Deleted branches:"
    echo "$deleted_branches"
}

confirm_branch_deletion
