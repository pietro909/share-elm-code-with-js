var _user$project$Native_ExportFunction = function(){

  window._ExportFunction_exports = {};
  var exports = window._ExportFunction_exports;

  return {
    functionToString: function functionToString(fn) {
      var id = Object.keys(exports).length.toString();
      exports[id] = fn;
      return fn.toString();
    },
    functionToStringWithId: function functionToString(id) {
      return function(fn) {
        exports[id] = fn;
        return fn.toString();
      }
    }
  };
}();

