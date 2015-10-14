# For more information see: http://emberjs.com/guides/routing/

EmberApp.Router.map ()->
  @resource 'donation', { path: '/' }, ->
    @resource 'payment', { path: '/:paymentMethod' }

