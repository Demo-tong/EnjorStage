/**
 * Created by WangBo on 16-5-1.
 */


// $(document).ready(function () {
//     v = $('#login').easyform({
//         // v.submit(true);
//     });
// }


function setEdit() {
    //修改位编辑状
    var inputs = $(".InfoEdit");
    for(var i = 0; i<3; i++) {
        inputs[i].removeAttribute('disabled');
        inputs[i].className = "pui-unbordered";
    }
    $("#Logout").before('<button type="submit" id="submit" class="pui-btn pui-btn-default pui-btn-block pui-round">提交</button>');
    $("#submit").remove();

}
