require "views/home/ActivityItemView.js"

AR.HomeIndexRoute = Ember.Route.extend

  #these events will trigger transitions to modal form routes
  events:
    addPerson: () ->
      @transitionTo "home.addperson"
    addQuote: () ->
      @transitionTo "home.addquote"

  setupController: ->
    clientsCon = @controllerFor('home').get 'controllers.clients'
    clientsCon.set "content", AR.Client.find()

  renderTemplate: ->
    @render "home/index", {
      into: "application"
      outlet: "main"
      controller: "home"
    }
