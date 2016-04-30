import ko from 'knockout';
import crossroads from 'crossroads';
import hasher from 'hasher';


import 'tfj/components/example-component/';
import 'tfj/pages/home/';
import 'tfj/pages/form/';

class Router {
    constructor(config) {
        this.currentRoute = ko.observable({});
    
        // Configure Crossroads route handlers
        ko.utils.arrayForEach(config.routes, (route) => {
            crossroads.addRoute(route.url, (requestParams) => {
                this.currentRoute(ko.utils.extend(requestParams, route.params));
            });
        });
    
        // Activate Crossroads
        crossroads.normalizeFn = crossroads.NORM_AS_OBJECT;
        hasher.initialized.add(hash => crossroads.parse(hash));
        hasher.changed.add(hash => crossroads.parse(hash));
        hasher.init();
    }
}

// Create and export router instance
var routerInstance = new Router({
    routes: [
        { url: '',                                  params: { page: 'home' } },
    ]
});

export default routerInstance;
