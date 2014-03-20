##Set Default attributes required by pc-monitor client
##You can override these in the Role or Node
#
##This is by no means a complete life of the options that can be configured 
##see https://www.mobilepcmonitor.com/download/UserManual.pdf
#
#NOTE:Username and Password are loaded from a pc-monitor databag in the client recipe
#
##Default Settings
default["pcmonitor"]["dir"]          		= "/etc/pcmonitor"
default["pcmonitor"]["arch"]         		= "x64"
default["pcmonitor"]["UseCustomServer"]         = "false"
default["pcmonitor"]["CustomServerAddress"]     = ""
default["pcmonitor"]["ComputerName"]            = "#{node.name}"
default["pcmonitor"]["Group"]                   = "#{node.platform}"
##Allowed Commands
default["pcmonitor"]["Restart"]                 = "true"
default["pcmonitor"]["ShutDown"]                = "true"
default["pcmonitor"]["PowerOff"]                = "true"
default["pcmonitor"]["Suspend"]                 = "true"
default["pcmonitor"]["Hibernate"]               = "true"
##Notification Options
default["pcmonitor"]["NotifyOffline"]           = "true"
default["pcmonitor"]["NotifyOnline"]            = "true"
default["pcmonitor"]["NotifyShutdown"]          = "true"
default["pcmonitor"]["MemoryLowCheck"]          = "true"
default["pcmonitor"]["MemoryLowPercentage"]     = "10"
default["pcmonitor"]["LowHDDspace"]             = "true"
default["pcmonitor"]["LowHDDSpacePercentage"]   = "20"
default["pcmonitor"]["LowHDDSpacePath"]         = "/"
