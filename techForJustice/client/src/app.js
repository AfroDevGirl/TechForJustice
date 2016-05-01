import $ from 'jquery';
import ko from 'knockout';
import appTemplate from './app.html!system-text';
import router from './router';

import 'bootstrap/dist/css/bootstrap.min.css!';

export default function AppViewModel () {
  this.route = router.currentRoute;
};

//insert the app templates into the body.
$('body').html(appTemplate);
// Start the application
ko.applyBindings(new AppViewModel());