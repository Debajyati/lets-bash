#!/bin/bash

#  ██████╗██╗     ██╗    ██████╗  █████╗ ███████╗██╗ ██████╗███████╗   #
# ██╔════╝██║     ██║    ██╔══██╗██╔══██╗██╔════╝██║██╔════╝██╔════╝   #
# ██║     ██║     ██║    ██████╔╝███████║███████╗██║██║     ███████╗   #
# ██║     ██║     ██║    ██╔══██╗██╔══██║╚════██║██║██║     ╚════██║   #
# ╚██████╗███████╗██║    ██████╔╝██║  ██║███████║██║╚██████╗███████║   #
#  ╚═════╝╚══════╝╚═╝    ╚═════╝ ╚═╝  ╚═╝╚══════╝╚═╝ ╚═════╝╚══════╝   #


# 1.	split your terminal window into two panes.				#
# 2.	keep the file open in one pane & the console output in the other.	#
# 3.	look at the lines of codes & their corresponding outputs.		#
# 4.	compare between lines to understand better.				#
                                     
#   ______   ______   ______   ______    #
#  /      \ /      \ /      \ /      \   #
# |  ▓▓▓▓▓▓\  ▓▓▓▓▓▓\  ▓▓▓▓▓▓\  ▓▓▓▓▓▓\  #
# | ▓▓  | ▓▓ ▓▓   \▓▓ ▓▓    ▓▓ ▓▓  | ▓▓  #
# | ▓▓__| ▓▓ ▓▓     | ▓▓▓▓▓▓▓▓ ▓▓__/ ▓▓  #
#  \▓▓    ▓▓ ▓▓      \▓▓     \ ▓▓    ▓▓  #
#  _\▓▓▓▓▓▓▓\▓▓       \▓▓▓▓▓▓▓ ▓▓▓▓▓▓▓   #
# |  \__| ▓▓                 | ▓▓        #
#  \▓▓    ▓▓                 | ▓▓        #
#   \▓▓▓▓▓▓                   \▓▓        #
#                                        #

# You don't need to look at the just next 3 lines.
# These are just to enable the history command in non-interactive shells.

HISTFILE=~/.bash_history # Set the history file.
HISTTIMEFORMAT='%F %T' # Set the history time format.
set -o history        # Enable the history.

history | grep ls # grabbing the lines containing 'ls' from commandline history.
printf "\n\n"
history | grep grep # grabbing the lines containing 'grep' from commandline history.
printf "\n\n"

printf "\033[36mWhat's your username?\033[0m\n"
read name
printf "\033[32mListing all the files in your config directory that contains your username...\033[0m\n"
sleep 2s
grep -Irl $name ~/.config
# It searches recursively (-r) in the .config directory (~/.config) for files containing the username stored in the variable name. 
# The -l option tells grep to only print the names of files with matching lines, and the -I option ignores binary files.
# So, this command will list all the files in the (~/.config) directory that contain the user's username.


