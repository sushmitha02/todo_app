$(document).ready(function(){

	initateDragDrop();

});

function initateDragDrop(){	

	$(".draggable").draggable({});
	$(".droppable").droppable({

		drop: function( event, ui ) {

		var taskId = $( ui.draggable[0] ).data('task-id');
		var bucketName = $( this ).attr('id');

		$.ajax({
			method: 'put',
			url: '/tasks/' + taskId,
			dataType: 'script',
			data: {task: { status: bucketName} }

		})

		
      $( this ).addClass( "ui-state-highlight" )
    },

    over: function( event, ui ) {
      $('droppable.ui-state-highlight').removeClass('ui-state-highlight')
      $( this ).addClass('ui-state-highlight')
    }

	});
	
}