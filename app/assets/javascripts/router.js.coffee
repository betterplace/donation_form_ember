# For more information see: http://emberjs.com/guides/routing/

EmberApp.Router.map ()->
#  @resource('posts')
#  @resource 'donation', {path: '/:paymentMethod'}
  @resource 'donation', { path: '/' }, ->
    @resource 'payment', { path: '/:paymentMethod' }

