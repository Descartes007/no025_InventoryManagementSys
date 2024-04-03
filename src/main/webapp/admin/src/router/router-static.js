import Vue from 'vue';
//配置路由
import VueRouter from 'vue-router'

Vue.use(VueRouter);
//1.创建组件
import Index from '@/views/index'
import Home from '@/views/home'
import Login from '@/views/login'
import NotFound from '@/views/404'
import UpdatePassword from '@/views/update-password'
import pay from '@/views/pay'
import register from '@/views/register'
import center from '@/views/center'
import chukujilu from '@/views/modules/chukujilu/list'
import chuku from '@/views/modules/chukujilu/chuku'
import shangpinfenlei from '@/views/modules/shangpinfenlei/list'
import shangpinxinxi from '@/views/modules/shangpinxinxi/list'
import kucun from '@/views/modules/shangpinxinxi/kucun'
import kucunpandian from '@/views/modules/shangpinxinxi/kucunpandian'
import alarmUpOrDown from '@/views/modules/shangpinxinxi/alarmUpOrDown'
import alarmDeadStock from '@/views/modules/shangpinxinxi/alarmDeadStock'
import statistics from '@/views/modules/shangpinxinxi/statistics'
import chukushenqing from '@/views/modules/chukushenqing/list'
import shanghu from '@/views/modules/shanghu/list'
import operatelog from '@/views/modules/operatelog/list'
import rukujilu from '@/views/modules/rukujilu/list'
import ruku from '@/views/modules/rukujilu/ruku'
import users from '@/views/modules/users/list'


//2.配置路由   注意：名字
const routes = [{
    path: '/index',
    name: '首页',
    component: Index,
    children: [{
        // 这里不设置值，是把main作为默认页面
        path: '/',
        name: '首页',
        component: Home,
        meta: {icon: '', title: 'center'}
    }, {
        path: '/updatePassword',
        name: '修改密码',
        component: UpdatePassword,
        meta: {icon: '', title: 'updatePassword'}
    }, {
        path: '/pay',
        name: '支付',
        component: pay,
        meta: {icon: '', title: 'pay'}
    }, {
        path: '/center',
        name: '个人信息',
        component: center,
        meta: {icon: '', title: 'center'}
    }
    , {
        path: '/chukujilu',
        name: '出库记录',
        component: chukujilu
    }
    , {
        path: '/chuku',
        name: '出库',
        component: chuku
    }
    , {
        path: '/shangpinfenlei',
        name: '商品分类',
        component: shangpinfenlei
    }
    , {
        path: '/shangpinxinxi',
        name: '商品信息管理',
        component: shangpinxinxi
    }
    , {
        path: '/alarmDeadStock',
        name: '滞销商品告警',
        component: alarmDeadStock
    }
    , {
        path: '/alarmUpOrDown',
        name: '上下限告警',
        component: alarmUpOrDown
    }
    , {
        path: '/kucun',
        name: '库存查询',
        component: kucun
    }
    , {
        path: '/kucunpandian',
        name: '库存盘点查询',
        component: kucunpandian
    }
    , {
        path: '/operatelog',
        name: '日志管理',
        component: operatelog
    }
    , {
        path: '/statistics',
        name: '统计查询',
        component: statistics
    }
    , {
        path: '/chukushenqing',
        name: '出库申请',
        component: chukushenqing
    }
    , {
        path: '/shanghu',
        name: '商户',
        component: shanghu
    }
    , {
        path: '/rukujilu',
        name: '入库记录',
        component: rukujilu
    }
    , {
        path: '/ruku',
        name: '入库',
        component: ruku
    }
    , {
        path: '/users',
        name: '用户管理',
        component: users
    }
]
},
    {
        path: '/login',
        name: 'login',
        component: Login,
        meta: {icon: '', title: 'login'}
    },
    {
        path: '/register',
        name: 'register',
        component: register,
        meta: {icon: '', title: 'register'}
    },
    {
        path: '/',
        name: '首页',
        redirect: '/index'
    }, /*默认跳转路由*/
    {
        path: '*',
        component: NotFound
    }
]
//3.实例化VueRouter  注意：名字
const router = new VueRouter({
    mode: 'hash',
    /*hash模式改为history*/
    routes // （缩写）相当于 routes: routes
})

export default router;
