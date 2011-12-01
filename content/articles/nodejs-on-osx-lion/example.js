(function () {
  "use strict";
  // Always use strict mode.
  // Friends don't let friends code crap!

  // Don't ever use globals!
  // ...but if you do, do it right!
  var global = Function('return this')()
    , msg = 'Hello World!'
    ;

  console.log(msg);
}());
