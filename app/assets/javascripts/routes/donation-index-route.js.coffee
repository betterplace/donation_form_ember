EmberApp.DonationIndexRoute = Ember.Route.extend
  beforeModel: -> @transitionTo 'payment', 'paypal'

