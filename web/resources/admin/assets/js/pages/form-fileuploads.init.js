!function (t) {
    "use strict";

    function e() {
        this.$body = t("body")
    }

    e.prototype.init = function () {
        Dropzone.autoDiscover = !1, t('[data-plugin="dropzone"]').each(function () {
            var e = t(this).attr("action"), o = t(this).data("previewsContainer"), i = {url: e};
            o && (i.previewsContainer = o);
            var r = t(this).data("uploadPreviewTemplate");
            r && (i.previewTemplate = t(r).html());
            t(this).dropzone(i)
        })
    }, t.FileUpload = new e, t.FileUpload.Constructor = e
}(window.jQuery), function () {
    "use strict";
    window.jQuery.FileUpload.init()
}(), 0 < $('[data-plugins="dropify"]').length && $('[data-plugins="dropify"]').dropify({
    messages: {
        default: "클릭하거나 이미지를 여기에 드래그해주세요.",
        replace: "수정하려면 클릭하거나 이미지를 여기에 드래그해주세요.",
        remove: "삭제",
        error: "오류가 발생했어요."
    }, error: {fileSize: "파일 크기가 너무 커요 (최대 크기 : 10MB)"}
}).on('dropify.beforeClear', function(event, element) {
    $(event.target).data().defaultFile = undefined;
});