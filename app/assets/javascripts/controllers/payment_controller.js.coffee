EmberApp.PaymentController = Ember.Controller.extend
  countries: ['Deutschland', 'Polen']
  eft:            Ember.computed.equal 'model.type', 'eft'
  paypal:         Ember.computed.equal 'model.type', 'paypal'
  wcp:            Ember.computed.equal 'model.type', 'wcp'
  giropay:        Ember.computed.equal 'model.type', 'giropay'
  hasAccountData: Ember.computed.or('eft', 'giropay')
  paymentMethods: (-> EmberApp.PAYMENT_METHODS).property()
  paymentMethod:  (->
    @get('paymentMethods').findBy('type', @get('model.type'))
  ).property('model.type')
