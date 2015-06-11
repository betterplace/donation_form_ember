EmberApp.Payment = DS.Model.extend
  type: DS.attr('text')
  donation: DS.belongsTo 'donation', async: false

