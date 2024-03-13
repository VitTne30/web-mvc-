const container = document.getElementById('question');
const cautraloi = document.querySelectorAll('.cautraloi');
const btnSubmit = document.getElementById('submit');
let current = 0;
let diem = 0;

load_cauhoi();

function load_cauhoi(){
	
	btnSubmit.disabled = true;
	remove_answer();
	
	fetch('http://localhost/test_web_mvc/api/question/read.php')
	.then(res => res.json())
	.then(data => {
//		document.getElementById('total').value = data.question.length;
		const cauhoi = document.getElementById('title');

		const a_cautraloi = document.getElementById('a_cautraloi');
		const b_cautraloi = document.getElementById('b_cautraloi');
		const c_cautraloi = document.getElementById('c_cautraloi');
		const d_cautraloi = document.getElementById('d_cautraloi');
		const id_question = document.getElementById('id_question');
		
		const get_cauhoi = data.question[0];
		console.log(get_cauhoi);

		cauhoi.innerText = get_cauhoi.title;
		a_cautraloi.innerText = get_cauhoi.cau_a;
		b_cautraloi.innerText = get_cauhoi.cau_b;
		c_cautraloi.innerText = get_cauhoi.cau_c;
		d_cautraloi.innerText = get_cauhoi.cau_d;
		id_question.value = get_cauhoi.id;
		console.log(id_question.value);
    
        fetch('http://localhost/test_web_mvc/api/question/insert_cauhoi_dalay.php', {
            method: 'POST',
			headers:{
				'Content-Type': 'application/json'
			},
            body: JSON.stringify({ id: id_question.value })
        })
        .then(response => {
            return response.json();
        })
        .then(data => {})
        .catch(error => {});
		
		document.getElementById('cau_dung').value = get_cauhoi.cau_dung;
	})
	.catch(error => console.log(error));
}

function get_answer(){
	let answer = undefined;
	cautraloi.forEach((cautraloi) =>{
		if(cautraloi.checked){
			answer = cautraloi.id;
		}
	})
	return answer;
}

cautraloi.forEach((e) =>{
    e.addEventListener("change", ()=>{
		btnSubmit.removeAttribute("disabled");
	})
});

function remove_answer(){
	cautraloi.forEach((cautraloi) =>{
		cautraloi.checked = false;
	})
}

btnSubmit.addEventListener("click", () =>{
	const answer = get_answer();
	
	if(answer){
		if(answer === document.getElementById('cau_dung').value){
			diem++;
			console.log(diem);
		}
	}
	current++;
	load_cauhoi();
	if(current>=5){
		container.innerHTML = `
			<h2>Bạn đã trả lời đúng ${diem}/5 câu hỏi</h2>
			<button onclick="location.reload()"> Thực hiện bài kiểm tra khác</button>
		`
		
		fetch('http://localhost/test_web_mvc/api/question/truncate_cauhoi_dalay.php', {
			method: 'POST',
		})
		.then(response => {
			if (response.ok) {
			  console.log('Dữ liệu bảng cauhoi_dalay đã được truncate');
			} else {
			  console.error('Lỗi truncate dữ liệu:', response.statusText);
			}
		})
			.catch(error => console.error('Lỗi:', error));
		
	}
	
});