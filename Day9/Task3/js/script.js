script.js
var selectedRow = null

//form clear
function myFormReset() {
  document.getElementById("myForm").reset();
}

// Form Submit Function
function onFormSubmit() {
    // check validity
    if (validate()) {
        // store user data
        var formData = readFormData();
        // check empty row
        if (selectedRow == null)
        {
            // Insert New User Record
            insertNewRecord(formData);
        }
        else
        {
            // Update New User Record
            updateRecord(formData);
        }
        // Reset Input Values
        resetForm();
    }
}
// Get Values From Form
function readFormData() {
    var formData = {};
    // Get Values From  Input
    formData["txtId"] = document.getElementById("txtId").value;
    formData["txName"] = document.getElementById("txName").value;
    formData["txtCourse"] = document.getElementById("txtCourse").value;
    formData["txtAadhar"] = document.getElementById("txtAadhar").value;
    // return Form Data
    return formData;
}
// Insert New User Record
function insertNewRecord(data) {
    var table = document.getElementById("stdlist").getElementsByTagName('tbody')[0];
    var newRow = table.insertRow(table.length);
    cell1 = newRow.insertCell(0);
    cell1.innerHTML = data.txtId;
    cell2 = newRow.insertCell(1);
    cell2.innerHTML = data.txName;
    cell3 = newRow.insertCell(2);
    cell3.innerHTML = data.txtCourse;
    cell4 = newRow.insertCell(3);
    cell4.innerHTML = data.txtAadhar;
    cell4 = newRow.insertCell(4);
    cell4.innerHTML = `<a onClick="onEdit(this)">Edit</a>
    <a onClick="onDelete(this)">Delete</a>`;
}
// Reset Function
function resetForm() {
    document.getElementById("txtId").value = "";
    document.getElementById("txName").value = "";
    document.getElementById("txtCourse").value = "";
    document.getElementById("txtAadhar").value = "";
    selectedRow = null;
}
// Edit Function
function onEdit(td) {
    selectedRow = td.parentElement.parentElement;
    document.getElementById("txtId").value = selectedRow.cells[0].innerHTML;
    document.getElementById("txName").value = selectedRow.cells[1].innerHTML;
    document.getElementById("txtCourse").value = selectedRow.cells[2].innerHTML;
    document.getElementById("txtAadhar").value = selectedRow.cells[3].innerHTML;
}
// Update Record
function updateRecord(formData) {
    selectedRow.cells[0].innerHTML = formData.txtId;
    selectedRow.cells[1].innerHTML = formData.txName;
    selectedRow.cells[2].innerHTML = formData.txtCourse;
    selectedRow.cells[3].innerHTML = formData.txtAadhar;
}
// Delete Function
function onDelete(td) {
    if (confirm('Are you sure to delete this record ?')) {
        row = td.parentElement.parentElement;
        document.getElementById("stdlist").deleteRow(row.rowIndex);
        resetForm();
    }
}
// Check User validation
function validate() {
    isValid = true;
    // txtIde validation
    if (document.getElementById("txtId").value == "") {
        isValid = false;
        document.getElementById("idvalidationError").classList.remove("hide");
    } else {
        isValid = true;
        if (!document.getElementById("idvalidationError").classList.contains("hide"))
        {
            document.getElementById("idvalidationError").classList.add("hide");
        }
    }
    // Name validation
    if (document.getElementById("txName").value == "") {
        isValid = false;
        document.getElementById("namevalidationError").classList.remove("hide");
    } else {
        isValid = true;
        if (!document.getElementById("namevalidationError").classList.contains("hide"))
        {
            document.getElementById("namevalidationError").classList.add("hide");
        }
    }
    // Course validation
    if (document.getElementById("txtCourse").value == "") {
        isValid = false;
        document.getElementById("coursevalidationError").classList.remove("hide");
    } else {
        isValid = true;
        if (!document.getElementById("coursevalidationError").classList.contains("hide"))
        {
            document.getElementById("coursevalidationError").classList.add("hide");
        }
    }
    // Aadhar validation
    if (document.getElementById("txtAadhar").value == "") {
        isValid = false;
        document.getElementById("aadharvalidationError").classList.remove("hide");
    } else {
        isValid = true;
        if (!document.getElementById("aadharvalidationError").classList.contains("hide"))
        {
            document.getElementById("aadharvalidationError").classList.add("hide");
        }
    }
    return isValid;
}