/***********************************/
/*Function Lib. Script for PuffRO  */
/*Code Version 2.0                 */
/*Date: April 11, 2012             */
/*Property of: Inztig@teCodez      */
/***********************************/
function getParameters() {
  var searchString = window.location.search.substring(1)
    , params = searchString.split("&")
    , hash = {}
    ;

  for (var i = 0; i < params.length; i++) {
    var val = params[i].split("=");
    hash[unescape(val[0])] = unescape(val[1]);
  }
  return hash;
}


