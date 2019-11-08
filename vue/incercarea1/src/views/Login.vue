<template>
  <div>
    <b-container class="bv-example-row">
      <b-row>
        <b-col sm="4" offset="4">
          <b-jumbotron header="" lead="Log in form">
            <b-form @submit.prevent="checkForm">
              <label for="feedback-user">Username</label>
              <b-input v-model="username" id="feedback-user"></b-input>
              <b-form-invalid-feedback :state="!loginUserError">
                This username does not exist.
              </b-form-invalid-feedback>

              <label for="text-password">Password</label>
              <b-input
                type="password"
                v-model="password"
                id="text-password"
                aria-describedby="password-help-block"
              ></b-input>
              <b-form-invalid-feedback :state="!loginPassError">
                Wrong password
              </b-form-invalid-feedback>

              <b-form-group class="sign-in">
                Don't have an account?
                <router-link to="/signin"> Sign in </router-link> here!
              </b-form-group>

              <hr class="my-4" />
              <b-button variant="success" type="submit">Log in</b-button>
            </b-form>
          </b-jumbotron>
        </b-col>
      </b-row>
    </b-container>
  </div>
</template>

<script>
import { mapGetters } from "vuex";
import { mapActions } from "vuex";

export default {
  name: "login",
  data() {
    return {
      username: "",
      password: "",
      formState: false
    };
  },
  computed: {
    ...mapGetters([
      "getAllUsers",
      "getLoginUser",
      "getBeforeRouterPath",
      "getToast",
      "loginPassError",
      "loginUserError",
      "loginSuccess",
      "token"
    ])
  },
  watch: {
    loginSuccess: function(val) {
      this.changeToast({
        text: `Welcome ${this.username}!`,
        title: "Loged in successfull!",
        autoHideDelay: 4000,
        variant: "success",
        solid: true,
        toaster: "b-toaster-top-full"
      });

      localStorage.setItem("token", this.token);

      if (
        localStorage.getItem("token") !== null &&
        Object.entries(this.getLoginUser).length === 0 &&
        this.getLoginUser.constructor === Object
      ) {
        this.setLoginUser(localStorage.getItem("token"));
      }

      this.$router.push({ path: this.getBeforeRouterPath });
      this.setLoginSuccess(false);
    }
  },
  mounted() {
    const toast = this.getToast;

    this.$bvToast.toast(toast.text, {
      title: toast.title,
      autoHideDelay: toast.autoHideDelay,
      variant: toast.variant,
      solid: toast.solid,
      toaster: toast.toaster
    });

    this.clearToaster();
  },
  methods: {
    ...mapActions([
      "login",
      "clearToaster",
      "setLoginSuccess",
      "changeToast",
      "setLoginUser"
    ]),
    checkForm() {
      this.formState = this.username.length !== 0 && this.password.length !== 0;

      if (this.formState) {
        this.login({ username: this.username, password: this.password });
      }
    }
  }
};
</script>

<style lang="scss" scoped>
.jumbotron {
  padding: 2rem 1rem;
  margin-top: 10px;
}
.sign-in {
  margin-top: 10px;
}
</style>
