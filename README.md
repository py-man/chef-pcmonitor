pc-monitor Cookbook
===================
Install pc-monitor agent on Linux, configures various options.

Requirements
pc-monitor account http://www.mobilepcmonitor.com


Attributes
----------
Sets all the basic settings via default attributes, you can overrride in the Role

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

### Data Bag

Create a data bag called pc-monitor with a creds item. Use your pc-monitor username and pssword

### Upcoming pc-monitor agent will auto encrypt the user and pass

id:       creds

password: blah

username: blah


Usage
-----
#### pc-monitor::default
Just include `pc-monitor::default` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[pc-monitor::default]"
  ]
}
```

Contributing
------------
1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------
Authors: Kevin Brannigan
