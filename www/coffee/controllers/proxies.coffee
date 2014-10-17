Shark.controller 'ProxiesCtrl', ($scope, Proxies) ->
  $scope.proxies = {}
  $scope.paused = false

  $scope.$watch (-> Proxies.all), ->
    $scope.proxies = Proxies.all

  $scope.$watch (-> Proxies.selected), ->
    $scope.selected = Proxies.selected

  $scope.$watch (-> Proxies.paused), ->
    $scope.paused = Proxies.paused

  $scope.togglePaused = ->
    Proxies.paused = !Proxies.paused

  $scope.select = (proxy) ->
    Proxies.select(proxy._id)

  $scope.remove = (proxy) ->
    Proxies.remove(proxy._id)
