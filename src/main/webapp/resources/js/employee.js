function deleteEmployee(id) {
    console.log(id);
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
                url: "deleteEmployee",
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
        url: "http://localhost:8080\/LaborExportV1\/showEmployee",
        type: "GET",
        async: true,
        success: function (data) {
            table = document.getElementById("row");
            for (var i = 0; i < data.length; i++) {
                var row = table.insertRow(i);
                row.className="wrap-text text-break";
                var cell = row.insertCell(0);
                var cell1 = row.insertCell(1);
                var cell2 = row.insertCell(2);
                var cell3 = row.insertCell(3);
                var cell4 = row.insertCell(4);
                var cell5 = row.insertCell(5);
                var cell6 = row.insertCell(6);
                var cell7 = row.insertCell(7);
                var cell8 = row.insertCell(8);
                var cell9 = row.insertCell(9);
                var cell10 = row.insertCell(10);
                cell.innerHTML = data[i].fullName;
                cell1.innerHTML = data[i].dateOfBirth;
                if(data[i].gender==="0"){
                    cell2.innerHTML = "Male";
                }else{
                    cell2.innerHTML="Female";
                }
                cell3.innerHTML = data[i].address;
                cell4.innerHTML = data[i].phoneNumber;
                cell5.innerHTML = data[i].weight;
                cell6.innerHTML = data[i].height;
                if (data[i].healthyCert === "true") {
                    cell7.innerHTML = "Yes";
                } else {
                    cell7.innerHTML = "No";
                }
                if (data[i].healthyCert === "true") {
                    cell8.innerHTML = "Yes";
                } else {
                    cell8.innerHTML = "No";
                }
                cell9.innerHTML = data[i].jobName;
                cell10.innerHTML = '<a href="AddWorker" class="btn btn-primary">Add</a> <a' +
                    ' href="editEmployee?id='+data[i].employeeId+'" class="btn btn-success">Edit</a>' +
                    '  <button' +
                    ' type="button"' +
                    ' class="btn btn-danger" onclick="deleteEmployee(' + data[i].employeeId + ')">Delete</button> ';
            }
        }
    });
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
                            cell3.innerHTML = '<button type="button" class="btn btn-outline-success" data-toggle="modal" data-target="#editmodal" onclick="showEditForm(' + data[i].jobId + ')"> Edit</button>  <button type="button" class="btn btn-outline-danger" data-toggle="modal" data-target="#deletemodal" onclick="delete(' + data[i].jobId + ')">Delete</button> ';
                        }
                    }
                });
            }

        })

    })
});

