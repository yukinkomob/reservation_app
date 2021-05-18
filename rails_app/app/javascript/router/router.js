import Vue from "vue";
import Router from "vue-router";
import Registration from "../components/Registration.vue";
import RegistrationConfirm from "../components/RegistrationConfirm.vue";
import RegistrationCompletion from "../components/RegistrationCompletion.vue";
import Login from "../components/Login.vue";

Vue.use(Router);

const router = new Router({
  mode: "history",
  routes: [
    //ルーティングの設定
    {
      path: '/',
      component: Login
    },
    {
      path: '/home/top',
      component: Login
    },
    {
      path: '/sign_up',
      component: Registration
    },
    {
      path: '/sign_up_confirm',
      component: RegistrationConfirm
    },
    {
      path: '/sign_up_complete',
      component: RegistrationCompletion
    },
    {
      path: '/login',
      component: Login
    },
  ],
});
export default router;
