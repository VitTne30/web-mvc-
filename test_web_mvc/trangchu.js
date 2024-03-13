const list = document.querySelector(".list");

start();

function start(){
	loadDanhmuc(renderDanhmuc);
}

function loadDanhmuc(data){
	fetch('http://localhost/test_web_mvc/api/danhmuc/read.php')
	.then(res => res.json())
	.then(data);
}

function renderDanhmuc(data){
	console.log(data);
	
	let htmlString = "";
	
	data.map(function(item){
		htmlString += `
				<li><a href="#">${item.tendanhmuc}</a></li>
		`;
	});
	
	list.innerHTML = htmlString;
}