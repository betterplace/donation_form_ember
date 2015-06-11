EmberApp.Donation = DS.Model.extend
  amount:                DS.attr('number')
  codonationPercentage:  DS.attr('number')
  codonationAmount:      DS.attr('number')
  firstName:             DS.attr('string')
  lastName:              DS.attr('string')
  email:                 DS.attr('string')
  street:                DS.attr('string')
  zip:                   DS.attr('string')
  city:                  DS.attr('string')
  country:               DS.attr('string')
  termsOfUseAccepted:    DS.attr('boolean')
  payment:               DS.belongsTo 'payment', async: false

