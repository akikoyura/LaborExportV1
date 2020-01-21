$(document).ready(
    function viewsJobChart() {
        $.ajax({
            dataType: "json",
            url: "http://localhost:8080\/LaborExportV1\/jobChart",
            type: "GET",
            async: true,
            success: function(data) {
                var labels = [];
                var datas = [];
                for (var i = 0; i < data.length; i++) {
                    labels[i] = data[i].JobName;
                    datas[i] = parseInt(data[i].Number);
                }
                var option = {
                	    tooltips: {
                	        enabled: false
                	    },
                	    plugins: {
                	        datalabels: {
                	            formatter: (value, ctx) => {
                	                let sum = 0;
                	                let dataArr = ctx.chart.data.datasets[0].data;
                	                dataArr.map(data => {
                	                    sum += data;
                	                });
                	                let percentage = (value*100 / sum).toFixed(2)+"%";
                	                return percentage;
                	            },
                	            color: '#fff',
                	        }
                	    }
                	};
                var ctx = document.getElementById('jobChart').getContext('2d');
                var chart = new Chart(ctx, {
                    // The type of chart we want to create
                    type: 'pie',
                    // The data for our dataset
                    data: {
                        labels: labels,
                        datasets: [{
                            label: 'Site Statistic',
                            borderColor: ["rgb(255, 99, 132)", "rgb(255, 159, 64)", "rgb(255, 205,86)", "rgb(75, 192, 192)", "rgb(54, 162, 235)", "rgb(153, 102, 255)", "rgb(201, 203,207)"],
                            backgroundColor: ["#FF3D67","#FF9F40","#36A2EB","#4BC0C0","#FFFFFF"],
                            data: datas,
                            borderWidth: 0.5
                        }],
                    },
                    // Configuration options go here
                    options: option
                });
            }
        });
    });

$(document).ready(
		 function viewsEmployeeChart() {
	            $.ajax({
	                dataType: "json",
	                url: "http://localhost:8080\/LaborExportV1\/employeeChart",
	                type: "GET",
	                async: true,
	                success: function(data) {
	                    var labels = [];
	                    var datas = [];
	                    for (var i = 0; i < data.length; i++) {
	                        labels[i] = data[i].JobName;
	                        datas[i] = parseInt(data[i].Number);
	                    }
	                    var option = {
	                    	    tooltips: {
	                    	        enabled: false
	                    	    },
	                    	    plugins: {
	                    	        datalabels: {
	                    	            formatter: (value, ctx) => {
	                    	                let sum = 0;
	                    	                let dataArr = ctx.chart.data.datasets[0].data;
	                    	                dataArr.map(data => {
	                    	                    sum += data;
	                    	                });
	                    	                let percentage = (value*100 / sum).toFixed(2)+"%";
	                    	                return percentage;
	                    	            },
	                    	            color: '#fff',
	                    	        }
	                    	    }
	                    	};
	                    var ctx = document.getElementById('employeeChart').getContext('2d');
	                    var chart = new Chart(ctx, {
	                        // The type of chart we want to create
	                        type: 'pie',
	                        // The data for our dataset
	                        data: {
	                            labels: labels,
	                            datasets: [{
	                                label: 'employee Statistic',
	                                borderColor: ["rgb(255, 99, 132)", "rgb(255, 159, 64)", "rgb(255, 205,86)", "rgb(75, 192, 192)", "rgb(54, 162, 235)", "rgb(153, 102, 255)", "rgb(201, 203,207)"],
	                                backgroundColor: ["#FF3D67","#FF9F40","#36A2EB","#4BC0C0","#FFFFFF"],
	                                data: datas,
	                                borderWidth: 0.5
	                            }]

	                        },
	                        // Configuration options go here
	                        options: option
	                    });
	                }
	            });
	  });

$(document).ready(
		 function viewsSiteChart() {
	            $.ajax({
	                dataType: "json",
	                url: "http://localhost:8080\/LaborExportV1\/siteChart",
	                type: "GET",
	                async: true,
	                success: function(data) {
	                    var labels = [];
	                    var datas = [];
	                    for (var i = 0; i < data.length; i++) {
	                        labels[i] = data[i].Country;
	                        datas[i] = parseInt(data[i].Number);
	                    }
	                    var option = {
	                    	    tooltips: {
	                    	        enabled: false
	                    	    },
	                    	    plugins: {
	                    	        datalabels: {
	                    	            formatter: (value, ctx) => {
	                    	                let sum = 0;
	                    	                let dataArr = ctx.chart.data.datasets[0].data;
	                    	                dataArr.map(data => {
	                    	                    sum += data;
	                    	                });
	                    	                let percentage = (value*100 / sum).toFixed(2)+"%";
	                    	                return percentage;
	                    	            },
	                    	            color: '#fff',
	                    	        }
	                    	    }
	                    	};
	                    var ctx = document.getElementById('siteChart').getContext('2d');
	                    var chart = new Chart(ctx, {
	                        // The type of chart we want to create
	                        type: 'pie',
	                        // The data for our dataset
	                        data: {
	                            labels: labels,
	                            datasets: [{
	                                label: 'employee Statistic',
	                                borderColor: ["rgb(255, 99, 132)", "rgb(255, 159, 64)", "rgb(255, 205,86)", "rgb(75, 192, 192)", "rgb(54, 162, 235)", "rgb(153, 102, 255)", "rgb(201, 203,207)"],
	                                backgroundColor: ["#FF3D67","#FF9F40","#36A2EB","#4BC0C0","#FFFFFF"],
	                                data: datas,
	                                borderWidth: 0.5
	                            }]

	                        },
	                        // Configuration options go here
	                        options: option
	                    });
	                }
	            });
	  });



