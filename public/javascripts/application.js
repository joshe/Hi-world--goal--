// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

$(document).ready(function(){
	
	
	
	$("#goal_goal_type").live("change", function(){
		var selectedVal = $(this).children("option:selected").val();
		if(selectedVal == "Add new") {
			$("#goal_goal_type").after("<input type='text' id='goal_goal_type' name='goal[goal_type]' placeholder='new goal type'/>").remove();
		}
	});
	
	
	
});