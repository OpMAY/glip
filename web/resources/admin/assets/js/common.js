$('#log-out').on('click', function() {
    if(confirm('로그아웃 하시겠어요?')) {
        const options = {
            method: 'POST',
            headers: {
                'Content-Type' : 'application/json;charset=utf-8'
            }
        }
        fetch('/admin/logout', options)
            .then(res => res.json())
            .then(res => {
                if(res.status === 200){
                    alert('로그아웃 되었습니다.');
                    window.location.replace('/admin/login.do');
                    // window.location.reload();
                }
            })
            .catch(rej => console.error(rej));
    }
})