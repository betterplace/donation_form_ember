EmberApp.DonationController = Ember.Controller.extend
  codonationFactors: [
    {val: 1,    label: 'diesmal nicht '}
    {val: 1.05, label: '5%'}
    {val: 1.10, label: '10%'}
    {val: 1.15, label: '15%'}
    {val: 1.20, label: '20%'}
    {val: 1.25, label: '25%'}
  ]
  selectedCodonationFactor: 1.15
  totalAmount: (->
    @get('model.amount') * @get('selectedCodonationFactor')
  ).property('model.amount', 'selectedCodonationFactor')
