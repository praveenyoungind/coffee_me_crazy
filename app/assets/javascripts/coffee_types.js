/* # Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
*/
$(document).ready(function(){
		$('#new_beans').click(function(){
	  	$('.new_beans').show();
	});

	$('#edit_coffee').click(function(){
		var coffee_type_id=$(this).siblings("input[name='coffee_type_id']").val();
		$.ajax({
			type : 'get',
			url :  '/coffee_types/'+coffee_type_id+'/edit',
            success:function(data){
                $('.container').html(data);
            },
            failure:function(data){
            	alert('something went wrong tryagain..........');
            }

		});
	});
   
    $('#edit_coffee').click(function(){
    	$('#up_cbn').show();
    });

	$('#listing_beans').slimScroll({
         height: '550px'
    });

    $('.comments').slimScroll({
         height: '500px'
    });

    function AppViewModel() {
                this.helpNotice=ko.observable("");
                this.helpNote=ko.observable("");
                this.firstInfo =function() {
                        return(this.helpNotice("Click ON the New Bean button to create your favourite CoffeeSeed"));    
                    };
                this.secondInfo =function() {
                        return(this.helpNote("Click ON the Edit button to Edit your favourite CoffeeSeed"));    
                    };                    
    }

    ko.applyBindings(new AppViewModel());
});