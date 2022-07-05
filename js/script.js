function foo(id) {
      var elem = document.getElementById(id).lastChild;
      elem.parentNode.removeChild(elem);
    }