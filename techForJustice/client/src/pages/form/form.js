import ko from 'knockout';
import template from './form.html!system-text';



class FormViewModel {
    constructor(params) {
        this.name = params.name || ko.observable('');
        this.steps = [{},{},{},{},{}];
        this.activeStep = ko.observable(0);
    }
    previous(){
    	this.activeStep(this.activeStep() -1);
    }

    next(){
    	console.log('next was called', this.activeStep())
    	this.activeStep(this.activeStep() +1);
    }
    dispose() {
        // This runs when the component is torn down. Put here any logic necessary to clean up,
        // for example cancelling setTimeouts or disposing Knockout subscriptions/computeds.
    }
}

!ko.components.isRegistered('document-form') && ko.components.register('document-form',{ viewModel: FormViewModel, template: template });
