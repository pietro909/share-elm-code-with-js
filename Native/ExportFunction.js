var _user$project$Native_ExportFunction = function(){

        window.$functions = []
    // expose your functions here
    return {
      functionToString: function functionToString(fn) {
        console.log('functionToString')
        window.$functions.push(fn)
        return fn.toString();
      }
    };
}();

