$(document).ready(function() {
	document.getElementById('exampleInputEmail1').focus();
	var fileInput = document.getElementById('test-image-file');
    var info = document.getElementById('test-file-info');
    var preview = document.getElementById('test-image-preview');
    fileInput.addEventListener('change', function () {
        preview.style.backgroundImage = '';
        if (!fileInput.value) {
            info.innerHTML = '没有选择文件';
            return;
        }
        var file = fileInput.files[0];
        /*info.innerHTML = '文件: ' + file.name + '<br>' +
                         '大小: ' + file.size + '<br>' +
                         '修改: ' + file.lastModifiedDate;*/
        if (file.type !== 'image/jpeg' && file.type !== 'image/png' && file.type !== 'image/gif') {
            alert('不是有效的图片文件!');
            return;
        }
        var reader = new FileReader();
        reader.onload = function(e) {
            var
                data = e.target.result;
                index = data.indexOf(';base64,');
            preview.style.backgroundImage = 'url(' + data + ')';
        };
        reader.readAsDataURL(file);
    });
});
function setuserheader(obj){
	var tep=document.getElementById("exampleInputFile").value;
	alert(tep);
	var ckuserName=document.getElementById("userheader");
	ckuserName.src=tep;
}
