define(['./message', 'jquery', 'cookie'], function(message, $, cookie) {
  console.log(message.message);
  console.log($);
  console.log(cookie.get('csrftoken'));
});
