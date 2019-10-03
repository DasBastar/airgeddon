#!/usr/bin/env bash

#Global shellcheck disabled warnings
#shellcheck disable=SC2034,SC2154

#Bear in mind that this plugin template is ignored by airgeddon and is not executed
#To use this template just rename the file to any other filename with sh extension
#Example: my_super_pr0_plugin.sh

#Start modifying below this line

#Generic plugin vars
plugin_name="Set your plugin name here"
plugin_description="Set a short description of your plugin"
plugin_author="Set your nick/name here"

#Enabled 1 / Disabled 0 - Set this plugin as enabled - Default value 1
plugin_enabled=1

#Plugin requirements
#Set airgeddon versions to apply this plugin (leave blank to set no limits, minimum version recommended is 10.0 on which plugins feature was added)
plugin_minimum_ag_affected_version="10.0"
plugin_maximum_ag_affected_version=""
#Set only one element in the array "*" to affect all distros, otherwise add them one by one with the name which airgeddon uses for that distro (examples "BlackArch", "Parrot")
plugin_distros_affected=("*")

#To override airgeddon functions, just define them following this nomenclature name:
#<plugin_name>_override_<function_name>
#plugin_name: This is the name of the plugin filename without extension (.sh)
#function_name: This is the name of the airgeddon function you want to rewrite with new content

#Overridden function example
#This will change echo_blue function to make it print in red color
function plugin_template_override_echo_blue() {

	last_echo "${1}" "${red_color}"
}

#To prehook airgeddon functions, just define them following this nomenclature name:
#<plugin_name>_prehook_<function_name>
#plugin_name: This is the name of the plugin filename without extension (.sh)
#function_name: This is the name of the airgeddon function where you want to launch your stuff before

#Prehook function example
#This will execute this content before the echo_blue function
#If you want to prehook a function which at the same time is going to be overridden, you need to add the hook_and_debug call into the overridden function
function plugin_template_prehook_echo_blue() {

	echo "************** Prehooked function - We are going to print in red!! *************"
}
