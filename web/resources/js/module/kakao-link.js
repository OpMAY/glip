/**Kakao Link Share */
class KakaoLink {
    /**
     * @param kakao kakao variable
     * @param link button options(message builder option)
     * */
    constructor(key, kakao, link = undefined) {
        this.kakao = kakao;
        this.link = link;
        this.key = key;
        if (!this.kakao.isInitialized()) {
            this.init();
        }
        if (link !== undefined && link !== null) {
            this.initLink();
        }
    }

    init() {
        console.log(this.key);
        this.kakao.init(this.key);
    }

    initLink() {
        console.log(this.link);
        this.kakao.Link.createCustomButton(this.link);
    }

    linkSendCallback({no, type}) {
        console.log(no, type);
    }
}