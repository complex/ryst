#= require jquery
#= require jquery_ujs
#= require_tree .

if CCPEVE?
  CCPEVE.requestTrust 'http://ryst.herokuapp.com'