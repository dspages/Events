# README

This is a simple app that lets you view events and attendances.

# Instructions

- To install gems, type bundle install
- To setup database, type rake db:setup
- To start server, type rails s
- To visit server, open up localhost:3000 in the browser

# Features

- You can view all events and this index page contains a link to each individual event. This is powered by the indexing logic in app/controllers/events_controller.rb as well as app/views/events/index.html.erb
- When viewing an event, you can see all of its attendees. This showcases a view and controller and also a model-level ActiveRecord association in app/models/event.rb
- You can also access a JSON of all people using the api/people path. The code for this feature is in app/controllers/api/people_controller.rb
