//---------------------------------------------------------

$(document).ready(function () {
    //Select2
    $(".country").select2({
        maximumSelectionLength: 10,

    });
});

//포스터이미지
const pobtn = document.querySelector("#pobtn");

pobtn.addEventListener(
    "change",
    function (e) {
      return readURL2(this.files);
    },
    false
);

const readURL2 = (input) => {
  // html 에 그리려고 만든 화살표함수터
  if (input.length == 0) {
    document.getElementById("poBox2").innerHTML = `파일 끌어다 추가하기`;
  } else {
    document.getElementById("poBox2").innerHTML = `<dd>${input[0].name} ${
        Math.round(input[0].size / 1024) + "kb"
    } <span onclick="deleteBtn2()" style="color: red;cursor: pointer;">[X]
        <input type="hidden" id="base">
</span></dd>`;
  }
};

poBox2.ondrop = (e) => {
  e.preventDefault();

  var data = e.dataTransfer.files;
  readLink(e.dataTransfer); //@@@@@@@@@@@@@@@@@@@@@@@@당겨오기nice

  if (pobtn.files.length != 0) {
    pobtn.value = ""; // input  태그에서 받은 값
  }
  pobtn.files = data; // 드래그엔 드롭으로 받아온 값을  input 태그에서 받은 값과 같게 하기 위해서 넘김
  readURL2(pobtn.files);
};

poBox2.ondragover = (e) => {
  e.preventDefault(); // 이 부분이 없으면 ondrop 이벤트가 발생하지 않습니다.
};


function deleteBtn2() {
  // 파일 리스트에서 인덱스에 부합한 배열 제거
  pobtn.value = "";

  // 리스트 다시 그려주기
  readURL2(pobtn.files);
}

function readLink(input) {
  if (input.files && input.files[0]) {
    let reader = new FileReader();
    reader.onload = function (e) {
      $('#falseinput').attr('src', e.target.result);
      $('#base').val(e.target.result);
    };
    reader.readAsDataURL(input.files[0]);
  }
}


//----------------------------------------------------------



const spoid = document.getElementById('spoid')
spoid.addEventListener('change', pastel)



function pastel(){
  ntcBtnColor = document.getElementById("ntcBtnColor");
  ntcBtnColor.value = spoid.value;
  //console.log(`ntcBtnColor에 담은 값 : ${ntcBtnColor.value}`);
}


function noticeBtn() {
	
}