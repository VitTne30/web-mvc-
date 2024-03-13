const addForm = document.getElementById("add-user-form");
const tbody = document.querySelector("tbody");

start();

function start(){
	getAccount(renderAccount);
	createAccount();
}

addForm.addEventListener("submit", async (e) =>{
  e.preventDefault();

  const formData = new FormData(addForm);
  formData.append("add", 1);

  if (addForm.checkValidity() === false) {
    e.preventDefault();
    e.stopPropagation();
    addForm.classList.add("was-validated");
    return false;
  }
});

function getAccount(data){
	fetch('http://localhost/test_web_mvc/api/account/read.php')
	.then(res => res.json())
	.then(data)
}

function renderAccount(data){
	console.log(data);
	
	let htmlString = "";
	
	data.map(function(item, index){
		htmlString += `
			<tr>
				<td>${index + 1}</td>
				<td>${item.tentaikhoan}</td>
				<td>${item.matkhau}</td>
				<td>${item.email}</td>
				<td>
					<button class="btn btn-success btn-sm rounded-pill py-0 editLink" data-toggle="modal" data-target="#editUserModal" onclick="updateAccount(${item.id})">Sửa</button>
					<button class="btn btn-danger btn-sm rounded-pill py-0 deleteLink" onclick="deleteAccount(${item.id})">Xoá</button>
				</td>
			</tr>
		`;
	});
	
	tbody.innerHTML = htmlString;
}

function updateAccount(idAcc){
	console.log(idAcc);
	
	var btnEdit = document.querySelector('#btnEdit');
	
		btnEdit.addEventListener('click', ()=>{
			
			if (confirm("Bạn có chắc chắn thực hiện hành động không") !== true) {
    			return; // Exit the function if user cancels
			}	
			var Updatetentaikhoan = document.querySelector('input[name="Updatetentaikhoan"]').value;
			var Updatematkhau = document.querySelector('input[name="Updatematkhau"]').value;
			var Updateemail = document.querySelector('input[name="Updateemail"]').value;
			
			var formData = {
				id: idAcc,
				tentaikhoan: Updatetentaikhoan, 
				matkhau: Updatematkhau,
				email: Updateemail,
			}
			
			console.log(formData);
			fetch('http://localhost/test_web_mvc/api/account/update.php', {
				method: 'PUT',
				headers:{
					'Content-Type': 'application/json'
				},
				body: JSON.stringify(formData)
			})
			.then(response => {
				return response.json();
			})
			.then(data => {
				getAccount(renderAccount);
			})
			.catch(error => {});	
			console.log(formData);
		});
}

function deleteAccount(idAcc){
	if (confirm("Bạn có chắc chắn thực hiện hành động không") !== true) {
    	return; // Exit the function if user cancels
	}
	
	fetch('http://localhost/test_web_mvc/api/account/delete.php', {
		method: 'DELETE',
		headers:{
			'Content-Type': 'application/json'
		},
		body: JSON.stringify({ id: idAcc })
	})
	.then(response => {
		return response.json();
	})
	.then(function(){
		getAccount(renderAccount);
	})
	.catch(error => {});
}

function createAccount(){
	var btnCreate = document.querySelector('#btnCreate');
	
	btnCreate.addEventListener('click', () =>{
		var check = false;
		
		var tentaikhoan = document.querySelector('input[name="tentaikhoan"]').value;
		var matkhau = document.querySelector('input[name="matkhau"]').value;
		var email = document.querySelector('input[name="email"]').value;
		
		if (tentaikhoan.length > 0 && matkhau.length>0 && email.length>0) {
			check = true;
		}
		else{
			check = false;
		}
		const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
		if (!emailRegex.test(email)) {
		  	check = false;
			errorMessage = "Email không hợp lệ. Vui lòng nhập đúng định dạng (e.g., example@domain.com).\n";
			console.log(errorMessage);
		}
		
		if (check == true) {
			
			var formData = {
			tentaikhoan: tentaikhoan, 
			matkhau: matkhau,
			email: email,
			}
		
			fetch('http://localhost/test_web_mvc/api/account/create.php', {
				method: 'POST',
				headers:{
					'Content-Type': 'application/json'
				},
				body: JSON.stringify(formData)
			})
			.then(response => {
				return response.json();
			})
			.then(function(){
				getAccount(renderAccount);
			})
			.catch(error => {});
			console.log(formData);	
		}
	});
}