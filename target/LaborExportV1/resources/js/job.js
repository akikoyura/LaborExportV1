function showEditForm(jobId) {
    $.ajax({
        dataType: "json",
        url: "http://localhost:8080\/LaborExportV1\/showJob?",
        type: "GET",
        async: true,
        data: "jobId=" + jobId,
        success: function (data) {
            $("#jobId").val(data[0].jobId);
            $("#jobName").val(data[0].jobName);
            $("#company").val(data[0].company);
        }
    });
}

function deleteJob(id) {
    Swal.fire({
        title: 'Are you sure ?',
        text: "You won't be able to revert this!",
        icon: 'warning',
        showCancelButton: true,
        confirmButtonColor: '#3085d6',
        cancelButtonColor: '#d33',
        confirmButtonText: 'Yes, delete it!'
    }).then((result) => {
        if (result.value) {
            $.ajax({
                url: "deleteJob",
                type: 'GET',
                data: "id=" + id,
                success: function () {
                    Swal.fire(
                        'Deleted!',
                        'Your file has been deleted.',
                        'success'
                    ).then(function () {
                        location.reload();
                    })
                }
            })
        }
    })
}

$(document).ready(function viewJob() {
    $.ajax({
        dataType: "json",
        url: "http://localhost:8080\/LaborExportV1\/listJob",
        type: "GET",
        async: true,
        success: function (data) {
            table = document.getElementById("row");
            for (var i = 0; i < data.length; i++) {
                var row = table.insertRow(i);
                var cell = row.insertCell(0);
                var cell1 = row.insertCell(1);
                var cell2 = row.insertCell(2);
                var cell3 = row.insertCell(3);
                cell.innerHTML = i + 1;
                cell1.innerHTML = data[i].jobName;
                cell2.innerHTML = data[i].company;
                cell3.innerHTML = '<a href="showAddJob" class="btn btn-primary " >Add</a> <button' +
                    ' type="button"' +
                    ' class="btn' +
                    ' btn-success "' +
                    ' data-toggle="modal"' +
                    ' data-target="#editmodal" onclick="showEditForm(' + data[i].jobId + ')"> Edit</button>  ' +
                    '<button class="btn btn-danger" onclick="deleteJob(' + data[i].jobId + ')"' +
                    ' >Delete</button> ';
            }
        }
    });


    // $('.deleteJob').click(function (e) {
    // 	var id = $(this).attr('rel');
    // 	var deleteFunction = $(this).attr('rel1');
    // 	alert(id);
    // 	alert(deleteFunction);
    // 	deleteJob(deleteFunction, id);
    // 	e.preventDefault();
    // });
    //

});

$(document).ready(function () {
    $("#btnSave").click(function (e) {
        e.preventDefault();
        var token = $("meta[name='_csrf']").attr("content");
        var jobId = $("#jobId").val();
        var jobName = $("#jobName").val();
        var company = $("#company").val();
        $.ajax({
            type: "POST",
            dataType: "json",
            url: "http://localhost:8080\/LaborExportV1\/updateJob",
            headers: {"X-CSRF-TOKEN": token},
            async: false,
            data: "jobId=" + jobId + "&jobName=" + jobName + "&company=" + company,
            success: function (data) {
                console.log("success");

            },
            error: function (data) {
//				viewJob();
                $('#editmodal').modal('toggle');
                $('#row').empty();
                $.ajax({
                    dataType: "json",
                    url: "http://localhost:8080\/LaborExportV1\/listJob",
                    type: "GET",
                    async: true,
                    success: function (data) {
                        table = document.getElementById("row");
                        for (var i = 0; i < data.length; i++) {
                            var row = table.insertRow(i);
                            var cell = row.insertCell(0);
                            var cell1 = row.insertCell(1);
                            var cell2 = row.insertCell(2);
                            var cell3 = row.insertCell(3);
                            cell.innerHTML = i + 1;
                            cell1.innerHTML = data[i].jobName;
                            cell2.innerHTML = data[i].company;
                            cell3.innerHTML = '<button type="button" class="btn btn-outline-success" data-toggle="modal" data-target="#editmodal" onclick="showEditForm(' + data[i].jobId + ')"> Edit</button>  <button type="button" class="btn btn-outline-danger"  onclick="delete(' + data[i].jobId + ')">Delete</button> ';
                        }
                    }
                });
            }

        })

    })
});


