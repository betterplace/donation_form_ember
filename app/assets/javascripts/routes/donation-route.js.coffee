EmberApp.DonationRoute = Ember.Route.extend
  model: (params) ->
    @store.createRecord 'donation',
      amount: 23
