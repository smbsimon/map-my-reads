$(document).ready(function () {

  var $books = $('.book');

  $('#book_filter_city').on('change', function () {
    var currentCity = this.value;
    $books.each(function (index, book) {
      $book = $(book);
      if ($book.data('city') === currentCity) {
        $book.show();
      } else {
        $book.hide();
      }
    });
  });

});
