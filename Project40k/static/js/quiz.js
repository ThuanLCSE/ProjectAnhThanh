$(function(){
var currentIndex= 0;
var questionIndex= new Array();
		function initQuestionIndex()
	{
		for (var i = 0; i < 30; i++)
            {
                questionIndex.push(i+1);
            }
		questionIndex=shuffleArray(questionIndex);
		
		
	}
	initQuestionIndex();
	getNextQuestion();
	$('#btnNext').click(function(){
		if (currentIndex<20)
		{
			getNextQuestion();
		}
		else 
		{
			getResult();
		}
	});
	function getResult(){
			window.location.href = "/getResult";
	}
	function shuffleArray(array) {
    for (var i = array.length - 1; i > 0; i--) {
        var j = Math.floor(Math.random() * (i + 1));
        var temp = array[i];
        array[i] = array[j];
        array[j] = temp;
    }
    return array;
}

	function getNextQuestion(){
		$.ajax({
			url: '/nextQuestion',
			data: $('form').serialize()+ '&questionId=' + questionIndex[currentIndex],
			type: 'GET',
			success: function(response){
				$('#txtQuestionId').val(response.objects[0][0]);

				$('#question').text(response.objects[0][1]);
				$('#ansA').text(response.objects[0][2]);
				$('#ansB').text(response.objects[0][3]);
				$('#ansC').text(response.objects[0][4]);
				$('#ansD').text(response.objects[0][5]);
				$('#score').text(response.point);
				currentIndex++;
$('input[name=ans]').attr('checked',false);
			},
			error: function(error){
				
			}
		});
	}
});
