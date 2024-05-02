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

#                     __                                  __        __               #
#                    |  \                                |  \      |  \              #
#  _______ __    __ _| ▓▓_         ______  _______   ____| ▓▓     _| ▓▓_    ______   #
# /       \  \  |  \   ▓▓ \       |      \|       \ /      ▓▓    |   ▓▓ \  /      \  #
#|  ▓▓▓▓▓▓▓ ▓▓  | ▓▓\▓▓▓▓▓▓        \▓▓▓▓▓▓\ ▓▓▓▓▓▓▓\  ▓▓▓▓▓▓▓     \▓▓▓▓▓▓ |  ▓▓▓▓▓▓\ #
#| ▓▓     | ▓▓  | ▓▓ | ▓▓ __      /      ▓▓ ▓▓  | ▓▓ ▓▓  | ▓▓      | ▓▓ __| ▓▓   \▓▓ #
#| ▓▓_____| ▓▓__/ ▓▓ | ▓▓|  \    |  ▓▓▓▓▓▓▓ ▓▓  | ▓▓ ▓▓__| ▓▓      | ▓▓|  \ ▓▓       #
# \▓▓     \\▓▓    ▓▓  \▓▓  ▓▓     \▓▓    ▓▓ ▓▓  | ▓▓\▓▓    ▓▓       \▓▓  ▓▓ ▓▓       #
#  \▓▓▓▓▓▓▓ \▓▓▓▓▓▓    \▓▓▓▓       \▓▓▓▓▓▓▓\▓▓   \▓▓ \▓▓▓▓▓▓▓        \▓▓▓▓ \▓▓       #
#                                                                                    #


# Basics of `cut` command :
# The `cut` command is used to extract sections from each line of input files or, from standard input.
# Typically used to extract specific fields from text files  based on delimiters.
echo "This is a line of code!!" | cut -c 1-10	# `-c` option stands for character #
				# cutting out the first 10 characters of 	#
				# the output of echo (including whitespaces)	#
cut -c 10- ~/.bashrc
cut -d ':' -f5 /etc/passwd 	# `-d` & `-fn` options stand for delimeter & nth field respectively #
				# Here the `cut` cmd outputs the 5th field just after the ':' delimeter #
echo 'abc  def' | cut -f2 -d ' ' # A similar example #
cut -d ',' -f1,3 ../assets/data.csv # extracting the 1st & 3rd fields from a csv file #

# Basics of `tr` command :
# tr doesn't stand for transform or truncate or trim. It stands for translate.
echo "Thissss isss a liine off texttt" | tr -s '[:lower:]' '[:upper:]'
echo "Thissss isss a liine   off texttt" | tr -s 'aeiou '
echo "This is a line of text" | tr -d 'aeiou'
echo "This is a line of text" | tr -d 'aeiou '
