EmberApp.PaymentController = Ember.Controller.extend
  countries: ['Deutschland', 'Polen']
  eft:     Ember.computed.equal 'model.type', 'eft'
  paypal:  Ember.computed.equal 'model.type', 'paypal'
  wcp:     Ember.computed.equal 'model.type', 'wcp'
  giropay: Ember.computed.equal 'model.type', 'giropay'
  hasAccountData: Ember.computed.or('eft', 'giropay')
  paymentMethod: (->
    EmberApp.PAYMENT_METHODS.findBy('type', @get('model.type'))
  ).property('model.type')
#  paymentMethod: Ember.computed.filterBy('paymentMethods', 'type', 'model.type')
  paymentMethods: -> EmberApp.PAYMENT_METHODS
  afterModel: (payment, transition) ->
    debugger
    @transitionTo('payment', donation);
