App.controller('InfoController', 
function($http){

	var vm = this;
	vm.fields = [1,2,3,4]

	vm.add = function(){
		vm.fields.push('more');
	}

	vm.submit = function(){
		$http.post('/submit', {somedata:'somevalue'})
		.success(function successCallback(response) {
			alert('Thank You! We will get in touch with you very soon!');
			console.log('posting contact successful');
		}).error(function errorCallback(response) {
			alert('posting information unsuccessful');
			console.log(response)
		});
	}
})