import ko from 'knockout';
import template from './example-component.html!system-text';
import './example-component.less!';

class ExampleComponentViewModel {
    constructor(params) {
        this.name = params.name || ko.observable('')
    }

    dispose() {
        // This runs when the component is torn down. Put here any logic necessary to clean up,
        // for example cancelling setTimeouts or disposing Knockout subscriptions/computeds.
    }
}

!ko.components.isRegistered('example-component') && ko.components.register('example-component',{ viewModel: ExampleComponentViewModel, template: template });
