<template>
    <div>
        <b-container class="bv-example-row">
            <b-row>
                <b-col sm="4" offset="4">
                    <b-jumbotron header="" lead="Log in form">
                        <b-form @submit.prevent="checkForm">
                            <label for="feedback-user">Username</label>
                            <b-input v-model="username" id="feedback-user"></b-input>
                            <b-form-invalid-feedback :state="userError">
                                This username does not exist.
                            </b-form-invalid-feedback>

                            <label for="text-password">Password</label>
                            <b-input type="password" v-model="password" id="text-password" aria-describedby="password-help-block"></b-input>
                            <b-form-invalid-feedback :state="passError">
                                Wrong password
                            </b-form-invalid-feedback>

                            <b-form-group class="sign-in">
                                    Don't have an account? <router-link to="/signin"> Sign in </router-link> here!
                            </b-form-group>

                            <hr class="my-4">
                            <b-button variant="success" type="submit">Log in</b-button>
                        </b-form>
                    </b-jumbotron>                    
                </b-col>
            </b-row>
        </b-container>    
         <!-- <b-button variant="success" @click.prevent="makeToast('success', 'Title', 3000)" >test toast</b-button>    -->
    </div>
</template>

<script>
 import { mapGetters } from 'vuex';
 import { mapActions } from 'vuex';

 export default {
    name: "login",
    data() {
      return {
        username: '',
        password: '',
        userError: true,
        passError: true,
        formState: false
      }
    },
    computed: {
      ...mapGetters(["getAllUsers", "getLoginUser", "getBeforeRouterPath", "getToast"]),
    },
    mounted() {        
        const toast = this.getToast;

        this.$bvToast.toast(toast.text, {
            title: toast.title,
            autoHideDelay: toast.autoHideDelay,
            variant: toast.variant,
            solid: toast.solid,
            toaster: toast.toaster,
        });     
        
        this.clearToaster();
    },
    methods: {
        ...mapActions(["login", "clearToaster"]),
        checkForm(){
            const users = this.getAllUsers
            let userNamesArray = [];
            let userPassArray = [];

            users.forEach(user => {
                userNamesArray.push(user.username);
                userPassArray.push(user.password);
            });

            this.userError = userNamesArray.includes(this.username);

            this.passError = !this.userError || userPassArray.includes(this.password);
            this.password = "";

            this.formState = this.userError && this.passError;

            if(this.formState){
                const filteredUser = users.filter(user => {
                    return user.username == this.username ? user : null;
                })

                this.login(filteredUser[0]);

                this.$bvToast.toast(`Welcome ${this.username}!`, {
                    title: "Loged in successfull!",
                    autoHideDelay: 3000,
                   variant: "success",
                    solid: true,
                    toaster: "b-toaster-top-full"
                });     

                this.$router.push({path: this.getBeforeRouterPath});
            }
        }
    }
  }
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
