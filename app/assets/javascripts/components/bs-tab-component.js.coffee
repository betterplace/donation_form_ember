EmberApp.BsTabComponent = Ember.Component.extend
  tagName: 'li'
  classNameBindings: ['active']
  active: (->
    @get('payment.type') is @get('paymentMethod')
  ).property('payment.type', 'paymentMethod')
