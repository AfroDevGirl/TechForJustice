import ko from 'knockout';
import template from './home.html!system-text';

class HomeViewModel {
    constructor(params) {
        this.firstName = ko.observable('')

    }

    dispose() {
        // This runs when the component is torn down. Put here any logic necessary to clean up,
        // for example cancelling setTimeouts or disposing Knockout subscriptions/computeds.
    }
}

!ko.components.isRegistered('home') && ko.components.register('home',{ viewModel: HomeViewModel, template: template });
