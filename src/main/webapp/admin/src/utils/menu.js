const menu = {
    list() {
        return [{
            "backMenu": [{
                "child": [{
                    "buttons": ["新增", "查看", "修改", "删除", "入库", "出库"],
                    "menu": "商品查询",
                    "menuJump": "列表",
                    "tableName": "shangpinxinxi"
                }], "menu": "商品信息管理"
            }, {
                "child": [{
                    "buttons": ["新增", "查看", "修改", "删除"],
                    "menu": "供应商查询",
                    "menuJump": "列表",
                    "tableName": "shanghu"
                }], "menu": "供应商管理"
            }, {
                "child": [{
                    "buttons": ["新增", "查看", "修改", "删除"],
                    "menu": "商品分类",
                    "menuJump": "列表",
                    "tableName": "shangpinfenlei"
                }], "menu": "商品分类管理"
            }, {
                "child": [{
                    "buttons": ["查看", "修改", "删除"],
                    "menu": "入库查询",
                    "menuJump": "列表",
                    "tableName": "rukujilu"
                }, {"buttons": ["查看"], "menu": "入库", "menuJump": "列表", "tableName": "ruku"}],
                "menu": "入库管理"
            }, {
                "child": [{
                    "buttons": ["查看", "修改", "删除"],
                    "menu": "出库查询",
                    "menuJump": "列表",
                    "tableName": "chukujilu"
                }, {"buttons": ["查看"], "menu": "出库", "menuJump": "列表", "tableName": "chuku"}],
                "menu": "出库管理"
            }, {
                "child": [{
                    "buttons": ["查看"],
                    "menu": "库存查询",
                    "menuJump": "列表",
                    "tableName": "kucun"
                },{
                    "buttons": ["查看"],
                    "menu": "库存盘点查询",
                    "menuJump": "列表",
                    "tableName": "kucunpandian"
                }], "menu": "库存管理"
            }, {
                "child": [{
                    "buttons": ["查看"],
                    "menu": "滞销告警查询",
                    "menuJump": "列表",
                    "tableName": "alarmDeadStock"
                }, {
                    "buttons": ["查看"],
                    "menu": "上下限告警查询",
                    "menuJump": "列表",
                    "tableName": "alarmUpOrDown"
                }], "menu": "预警管理"
            }, {
                "child": [{
                    "buttons": ["新增", "查看", "修改", "删除"],
                    "menu": "用户管理",
                    "tableName": "users"
                }, {"buttons": ["新增", "查看", "修改", "删除"], "menu": "日志管理", "tableName": "operatelog"}],
                "menu": "系统管理"
            }, {
                "child": [{"buttons": ["查看"], "menu": "统计查询", "tableName": "statistics"}],
                "menu": "统计报表"
            }],
            "frontMenu": [],
            "hasBackLogin": "是",
            "hasBackRegister": "否",
            "hasFrontLogin": "否",
            "hasFrontRegister": "否",
            "roleName": "管理员",
            "tableName": "users"
        }, {
            "backMenu": [{
                "child": [{
                    "buttons": ["新增", "查看", "删除", "入库", "申请"],
                    "menu": "商品信息",
                    "menuJump": "列表",
                    "tableName": "shangpinxinxi"
                }], "menu": "商品信息管理"
            }, {
                "child": [{"buttons": ["查看"], "menu": "入库记录", "menuJump": "列表", "tableName": "rukujilu"}],
                "menu": "入库记录管理"
            }, {
                "child": [{"buttons": ["查看"], "menu": "出库申请", "menuJump": "列表", "tableName": "chukushenqing"}],
                "menu": "出库申请管理"
            }, {
                "child": [{"buttons": ["查看"], "menu": "出库记录", "menuJump": "列表", "tableName": "chukujilu"}],
                "menu": "出库记录管理"
            }],
            "frontMenu": [],
            "hasBackLogin": "否",
            "hasBackRegister": "否",
            "hasFrontLogin": "否",
            "hasFrontRegister": "否",
            "roleName": "商户",
            "tableName": "shanghu"
        }]
    }
}
export default menu;
