const base = {
    get() {
                return {
            url : "http://localhost:8080/ssmyt0it/",
            name: "ssmyt0it",
            // 退出到首页链接
            indexUrl: 'http://localhost:8080/ssmyt0it/front/index.html'
        };
            },
    getProjectName(){
        return {
            projectName: "鲜花销售管理系统"
        } 
    }
}
export default base
