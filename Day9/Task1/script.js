script.js
var selectedRow =null

//Form Submit Function
function onFormSubmit(){
	//checkvalidity
	if(validate()){
		//store user data
		var formData = readFormData();
		if(selectedRow==null){
			//insert new user record
			insertNewRecord(formData);
		}
		else{
			//upadte the user record
			updateRecord(formData);
		}
		//reset the input values 
		resetForm();
	}
}

//get values from the form
function readFormData(){
	var formData={};
	//get values from input
	formData["username"] = document.getElementById("username").value;
	formData["rollNo"] = document.getElementById("rollNo").value;
	formData["stdClass"] = document.getElementById("stdClass").value;
	formData["tsub"] = document.getElementById("tsub").value;
	formData["age"] = document.getElementById("age").value;
//return form data
return formData;
}

//insert new user record

function insertNewRecord(data){
	var table=document.getElementById("stdlist").getElementsByTagName('tbody')[0];
	var newRow = table.insertRow(table.length);
	cell1 = newRow.insertCell(0);
	cell1.innerHTML = data.username;
	cell2 = newRow.insertCell(1);
	cell2.innerHTML = data.rollNo;
	cell3 = newRow.insertCell(2);
	cell3.innerHTML = data.stdClass;
	cell4 = newRow.insertCell(3);
	cell4.innerHTML = data.tsub;
	cell5 = newRow.insertCell(4);
	cell5.innerHTML = data.age;
	cell5 = newRow.insertCell(5);
	cell5.innerHTML = 
		'<a onClick="onEdit(this)">Edit</a>  <a onClick = "onDelete(this)">Delete</a>';

}


//reset function
function resetForm(){
	documnet.getElementById("username").value="";
	documnet.getElementById("rollno").value="";
	documnet.getElementById("stdClass").value="";
	documnet.getElementById("tSub").value="";
	documnet.getElementById("age").value="";
	selectedRow=null;
}
//edit function
function onEdit(td){
	selectedRow =td.parentElement.parentElement;
	document.getElementById("username").value=selectedRow.cells[0].innerHTML;
	document.getElementById("rollno").value=selectedRow.cells[1].innerHTML;
	document.getElementById("stdClass").value=selectedRow.cells[2].innerHTML;
	document.getElementById("tsub").value=selectedRow.cells[3].innerHTML;
	document.getElementById("age").value=selectedRow.cells[4].innerHTML;
}

//updaterecord
function updateRecord(fromData){
	selectedRow.cells[0].innerHTML=fromData.userName;
	selectedRow.cells[1].innerHTML=fromData.rollNo;
	selectedRow.cells[2].innerHTML=fromData.stdClass;
	selectedRow.cells[3].innerHTML=fromData.tsub;
	selectedRow.cells[4].innerHTML=fromData.ag;
}

// delete function
function onDelete(td){
	if(confirm('are you sure to delete this record?')){
		row=td.parentElement.parentElement;
		document.getElementById("stdlist");
		resetForm();
	}
}
// check validation

function validation(){
	isValid=true;
	//username validation
	if(document.getElementById("username").value==""){
		isValid=false;
		document.getElementById("userNamevalidationError").classlist.remove("hide");
	}
	else{
		isValid=true;
		if(!document.getElementById("userNamevalidationError").classList.contains("hide")){
			document.getElementById("userNamevalidationError").classList.add("hide");
		}
	}
	//roll number validation

	if(document.getElementById("rollNo").value==""){
		isValid=false;
		document.getElementById("rollNovalidationError").classList.remove("hide");
	}
	else{
		isValid=true;
		if(!document.getElementById("rollNovalidationError").classList.contains("hide")){
			document.getElementById("rollNovalidationError").classList.add("hide");
		}
	}

	//std class validation

	if(document.getElementById("stdClass").value==""){
		isValid=false;
		document.getElementById("stdClassvalidationError").classList.remove("hide");
	}
	else{
		isValid=true;
		if(!document.getElementById("stdClassvalidationError").classList.contains("hide")){
			document.getElementById("stdClassvalidationError").classList.add("hide");
		}
	}

	//Total Subjects validation

	if(document.getElementById("tsub").value==""){
		isValid=false;
		document.getElementById("subvalidationError").classList.remove("hide");
	}
	else{
		isValid=true;
		if(!document.getElementById("subvalidationError").classList.contains("hide")){
			document.getElementById("subvalidationError").classList.add("hide");
		}
	}

		//age  validation

	if(document.getElementById("age").value==""){
		isValid=false;
		document.getElementById("agevalidationError").classList.remove("hide");
	}
	else{
		isValid=true;
		if(!document.getElementById("agevalidationError").classList.contains("hide")){
			document.getElementById("agevalidationError").classList.add("hide");
		}
	}

return isValid;
}


