function deleteCompany(id) {
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
                url: "delete",
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

$(document).ready(function viewCompany() {
    $.ajax({
        dataType: "json",
        url: "http://localhost:8080\/LaborExportV1\/getAllCompany",
        type: "GET",
        async: true,
        success: function(data) {
            table = document.getElementById("row");
            for (var i = 0; i < data.length; i++) {
                var row = table.insertRow(i);
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
                
                cell.innerHTML = data[i].companyName;
                cell1.innerHTML = data[i].email;
                cell2.innerHTML = data[i].country;
                cell3.innerHTML = data[i].phoneNumber;
                if(data[i].requiredHealthyCert==="true"){
                	cell4.innerHTML = "Yes";
                }else{
                	cell4.innerHTML = "No";
                }
                cell5.innerHTML = data[i].requiredWeight;
                cell6.innerHTML = data[i].requiredHeight;
                if(data[i].requiredDegreeCert==="true"){
                	cell7.innerHTML = "Yes";
                }else{
                	cell7.innerHTML = "No";
                }
                cell8.innerHTML = data[i].jobName;
                cell9.innerHTML = data[i].requiredNumberOfEmployee;
                cell10.innerHTML = '<a href="AddCompany" class="btn btn-primary">Add</a> <a' +
                    ' class="btn btn-success" href="editCompany?id='+data[i].recruiterId+'">Edit</a> <button' +
                ' class="btn' +
                ' btn-danger"' +
                    ' onclick="deleteCompany(' + data[i].recruiterId + ')"' +
                    ' >Delete</button> ';
            }
        }
    });
});