require "views/home/AddquotemodalView.js"

AR.HomeAddquoteRoute = Ember.Route.extend
  events:
    close: ->
      @transitionTo "home"

  renderTemplate: () ->
    @render("home/addquotemodal", {
      into: "home"
      outlet: "modal"
      controller: "home"
    })
