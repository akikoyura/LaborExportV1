$(document).ready(
    function viewsTotalEmployee() {
        $.ajax({
            dataType: "json",
            url: "http://localhost:8080\/LaborExportV1\/numEmployee",
            type: "GET",
            async: true,
            success: function(data) {
            	$("#totalEmployee").html(data);
            }
        });
    });
$(document).ready(
	    function viewsTotalJob() {
	        $.ajax({
	            dataType: "json",
	            url: "http://localhost:8080\/LaborExportV1\/numJob",
	            type: "GET",
	            async: true,
	            success: function(data) {
	            	$("#totalJob").html(data);
	            }
	        });
	    });
$(document).ready(
	    function viewsTotalSite() {
	        $.ajax({
	            dataType: "json",
	            url: "http://localhost:8080\/LaborExportV1\/numSite",
	            type: "GET",
	            async: true,
	            success: function(data) {
	            	$("#totalSite").html(data);
	            }
	        });
	    });
$(document).ready(
	    function viewsTotalCompany() {
	        $.ajax({
	            dataType: "json",
	            url: "http://localhost:8080\/LaborExportV1\/numCompany",
	            type: "GET",
	            async: true,
	            success: function(data) {
	            	$("#totalCompany").html(data);
	            }
	        });
	    })