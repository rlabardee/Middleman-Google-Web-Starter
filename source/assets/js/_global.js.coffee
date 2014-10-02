###
Namespace Support
---
Used to add global namespacing support. See
https://github.com/jashkenas/coffee-script/wiki/FAQ
for more info.
###
window.namespace = (target, name, block) ->
  [target, name, block] = [(if typeof exports isnt 'undefined' then exports else window), arguments...] if arguments.length < 3
  top    = target
  target = target[item] or= {} for item in name.split '.'
  block target, top

namespace 'Global', (exports) ->  
  exports.init = ()->
    return