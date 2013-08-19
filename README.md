# The Social Machine

Agile Project management console



## Supported GIT Servers
* Github
* BitBucket
* Local GIT

## Supported Deployment servers
* Heroku
* Amazone AWS
* Redhat OpenShift
* VPS 


## Project Templates
* Rails 3.2 with omniauth, cucumber and bootstrap
* AngularJS with omniauth, cucumber and bootstrap


## Configuration parameters

Confiuration can be found on the /config/application.yml.example


## Storing Project activities on project git

 *.buildmachine/project-activities.html
 *.buildmachine/project-meeting-notes.html
 *.buildmachine/project-stories.html
 *.buildmachine/acceptance-tests/story-<StoryID>.html
 *.buildmachine/performance-tests/<SenarioName>.html
 *.buildmachine/servers/<ServerName>/system.monitor.html



## Increase team communication

Team members can chat, and video confrerence using "OpenToK"


## Team measurement

Charts and measure your team 
 * Estimation time and quality
 * Automation test
 * Share knowledge in team
 * Customer Responsive time
 * Meeting and Phone calls 



### Generators and command line

 * rails g bm:clone <app-url>

 * rake app:version:current
 
```
bundle
rake db:setup
# serve with Pow
```

Requires Ruby 1.9.2 or later to run.
