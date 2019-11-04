import Vue from "vue";
import Router from "vue-router";

import Home from "./views/Home.vue";
import Contact from "./views/Contact.vue";
import Dashboard from "./views/Dashboard.vue";
import Dashboardemployee from "./views/DashboardEmployee.vue";
import Login from "./views/Login.vue";
import Signin from "./views/Signin.vue";
import AboutBelbin from "./views/AboutBelbin.vue";
import AboutMbti from "./views/AboutMbti.vue";
import AboutEnneagram from "./views/AboutEnneagram.vue";
import AboutZodiac from "./views/AboutZodiac.vue";
import AboutZodiacAsc from "./views/AboutZodiacAsc.vue";
import AboutNumerology from "./views/AboutNumerology.vue";
import TestBelbin from "./views/TestBelbin.vue";
import TestMbti from "./views/TestMbti.vue";
import TestEnneagram from "./views/TestEnneagram.vue";
import EditUser from "./views/EditUser.vue";
import TestResults from "./views/TestResults.vue"


import store from "@/store/index";

Vue.use(Router);

const router = new Router({
  routes: [
    {
      path: "/",
      name: "home",
      component: Home
    },
    {
      path: "/about",
      name: "about",
      // route level code-splitting
      // this generates a separate chunk (about.[hash].js) for this route
      // which is lazy-loaded when the route is visited.
      component: () =>
        import(/* webpackChunkName: "about" */ "./views/About.vue")
    },
    {
      path: "/contact",
      name: "contact",
      component: Contact
    },{
      path: "/dashboard",
      name: "dashboard",
      component: Dashboard,
      meta: { requiresLogin: true }
    },{
      path: "/dashboardemployee",
      name: "dashboardemployee",
      component: Dashboardemployee,
      meta: { requiresLogin: true }
    },{
      path: "/login",
      name: "login",
      component: Login,
      meta: { hasLogedIn: true }
    },{
      path: "/signin",
      name: "signin",
      component: Signin
    },{
      path: "/aboutBelbin",
      name: "aboutBelbin",
      component: AboutBelbin
    },{
      path: "/aboutMbti",
      name: "aboutMbti",
      component: AboutMbti
    },{
      path: "/aboutEnneagram",
      name: "aboutEnneagram",
      component: AboutEnneagram
    },{
      path: "/aboutZodiac",
      name: "aboutZodiac",
      component: AboutZodiac
    },{
      path: "/aboutZodiacAsc",
      name: "aboutZodiacAsc",
      component: AboutZodiacAsc
    },{
      path: "/aboutNumerology",
      name: "aboutNumerology",
      component: AboutNumerology
    },{
      path: "/testBelbin",
      name: "testBelbin",
      component: TestBelbin,
      meta: { requiresLogin: true }
    },{
      path: "/testEnneagram",
      name: "testEnneagram",
      component: TestEnneagram,
      meta: { requiresLogin: true }
    },{
      path: "/testMbti",
      name: "testMbti",
      component: TestMbti,
      meta: { requiresLogin: true }
    },{
      path: "/editUser",
      name: "editUser",
      component: EditUser,
      meta: { requiresLogin: true }
    },{
      path: "/testResults",
      name: "testResults",
      component: TestResults,
      meta: { requiresLogin: true }
    }
  ],
  mode: 'history'
});

//guard clause
router.beforeEach((to, from, next) => {
  const bp = to.name !== "login" ? to.path : store.state.beforePath;

  if (to.matched.some(record => record.meta.requiresLogin) && Object.keys(store.state.loginUser).length === 0) {
      store.commit("setGlobalError", "You need to log in before you can perform this action.")
      store.commit("setBeforeRouterPath", bp)
      next("/login")
  } else {
      next()
  }
})

export default router
