const base = {
    get() {
                return {
            url : "http://localhost:8080/inventory/",
            name: "inventory",
            // 退出到首页链接
            indexUrl: 'http://localhost:8080/inventory/front/index.html'
        };
            },
    getProjectName(){
        return {
            projectName: "马格宁超市库存管理信息系统"
        } 
    }
}
export default base
