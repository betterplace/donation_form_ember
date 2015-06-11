EmberApp.PaymentRoute = Ember.Route.extend
  model: (params) ->
    @store.createRecord 'payment',
      type: params.paymentMethod,
      donation: @modelFor 'donation'
