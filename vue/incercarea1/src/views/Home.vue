<template>
  <div class="home">
    <b-container fluid class="">
      <h1>Welcome to Team Role Management application!</h1>

      <div class="form-group">
        <p>
          Here you can sign in as an employee or an employer to take tests, see
          your employees test results and create a team based on their roles
        </p>
        <p>
          As an employee, you must have your employer CODE, so you can be
          conected to your emplyers company directive
        </p>
        <p>
          In order to take tests and see your results, you must create an
          emplyee account
        </p>
      </div>

      <b-row>
        <b-col sm="4">
          <b-jumbotron
            header="Sign In!"
            lead="You can log in if you have an account"
          >
            <p>
              Here you can sign to create an account and chose what do you want
              to be, an emplyer or an employee.
            </p>
            <hr class="my-4" />
            <b-button-group>
              <b-button variant="success" to="/signin">Sign in!</b-button>
            </b-button-group>
          </b-jumbotron>
        </b-col>

        <b-col sm="4">
          <b-jumbotron
            header="Whats your personality?"
            lead="You can take all 3 tests"
          >
            <p>
              Know your weeknesses and your strengths! Here you can take all 3
              tests so you and your employer may know your personality.
            </p>
            <hr class="my-4" />
            <b-button-group>
              <b-button variant="success" to="/testBelbin">Belbin</b-button>
              <b-button variant="warning" to="/testMbti">MBTI</b-button>
              <b-button variant="info" to="/testEnneagram">Enneagram</b-button>
            </b-button-group>
          </b-jumbotron>
        </b-col>

        <b-col sm="4">
          <b-jumbotron
            header="All you need to know"
            lead="Read about us / contact us"
          >
            <p>
              You can read all about us and about this tests! or you can contact
              us for every information you want to know and we will answer!
            </p>
            <hr class="my-4" />
            <b-button-group>
              <b-button variant="success" to="/contact">Contact us!</b-button>
            </b-button-group>
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
  name: "home",
  computed: {
    ...mapGetters(["getLoginUser", "getToast"])
  },
  methods: {
    ...mapActions(["setLoginUser", "clearToaster"])
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
    // if (localStorage.getItem("token") !== null && Object.entries(this.getLoginUser).length === 0 && this.getLoginUser.constructor === Object) {
    //   this.setLoginUser(localStorage.getItem("token"));
    // }
  }
};
</script>

<style lang="scss" scoped>
.jumbotron {
  h1 {
    text-align: center;
    font-size: 40px;
  }

  .btn-group {
    display: flex;
    align-items: center;
    justify-content: center;
  }
}
</style>
