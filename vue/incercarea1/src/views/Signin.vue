<template>
  <div>
    <b-container fluid >
      <b-form @submit.prevent="checkForm">
        <b-row>
            <b-col sm="4" offset="2">
                <b-jumbotron header="" lead="Register form">                      
                  <b-form-group>
                    <b-form-radio-group id="radio-group" v-model="role" name="role">
                        <b-form-radio value="employee">Employee</b-form-radio>
                        <b-form-radio value="employer">Employer</b-form-radio>
                    </b-form-radio-group>
                  </b-form-group>

                  <b-form-group label="Username*">
                    <b-input v-model="username" id="feedback-user"></b-input>
                    <b-form-invalid-feedback :state="userError">
                        This username already exists!. Please chose other unsername
                    </b-form-invalid-feedback>
                  </b-form-group>

                  <b-form-group label="Password*">
                    <b-input type="password" v-model="password" @keyup="checkPass" id="text-password" aria-describedby="password-help-block"></b-input>
                  </b-form-group>

                  <b-form-group label="Confirm Password*">
                    <b-input type="password" @keyup="checkPass" v-model="confirmPassword" id="text-confirm-password" aria-describedby="password-help-block"></b-input>
                    <b-form-invalid-feedback :state="passError">
                        passwords do not match
                    </b-form-invalid-feedback>
                  </b-form-group>         

                  <b-form-group label="Employer's CODE*" v-if="role === 'employee'">
                    <b-input v-model="code" id="code"></b-input>
                    <b-form-invalid-feedback :state="userError">
                        This code is invalid!
                    </b-form-invalid-feedback>
                  </b-form-group>             

                  <b-form-group label="Company*" v-if="role === 'employer'">
                    <b-input v-model="company" id="company"></b-input>
                  </b-form-group>             

                  <hr class="space">
                </b-jumbotron>                    
            </b-col>

            <b-col sm="4">
                <b-jumbotron header="" lead="">          

                  <b-form-group label="Birthdate" inline>
                    <b-form-select
                      class="mb-2 mr-sm-2 mb-sm-0"
                      :value="null"
                      :options="dayOptions"
                      v-model="day"
                      id="day"
                      style="width: 15%"
                    ></b-form-select>/
                     <b-form-select
                      class="mb-2 mr-sm-2 mb-sm-0"
                      :value="null"
                      :options="monthOptions"
                      v-model="month"
                      id="month"
                      style="width: 15%"
                    ></b-form-select>/
                     <b-form-select
                      class="mb-2 mr-sm-2 mb-sm-0"
                      :value="null"
                      :options="yearOptions"
                      v-model="year"
                      id="year"
                      style="width: 20%"
                    ></b-form-select>

                      &nbsp;

                     <b-form-select
                      class="mb-2 mr-sm-2 mb-sm-0"
                      :value="null"
                      :options="hourOptions"
                      v-model="hour"
                      id="year"
                      style="width: 15%"
                    ></b-form-select>:
                     <b-form-select
                      class="mb-2 mr-sm-2 mb-sm-0"
                      :value="null"
                      :options="minuteOptions"
                      v-model="minute"
                      id="year"
                      style="width: 15%"
                    ></b-form-select>
                  </b-form-group>

                  <b-form-group label="First Name">
                    <b-input type="text" v-model="firstName" id="first-name" ></b-input>
                  </b-form-group>

                  <b-form-group label="Last Name">
                    <b-input type="text" v-model="lastName" id="last-name" ></b-input>                    
                  </b-form-group>    

                  <b-form-group label="Phone">
                    <b-input type="number" v-model="phone" id="last-name" maxlength="10" ></b-input>                    
                  </b-form-group>  

                  <b-form-group label="Email">
                    <b-input type="email" v-model="email" id="last-name" ></b-input>                    
                  </b-form-group>                  

                  <hr class="my-4">
                  <b-button variant="success" type="submit">Register</b-button>
                </b-jumbotron>                    
            </b-col>
        </b-row>
      </b-form>
    </b-container>       
  </div>
</template>

<script>
import { mapGetters } from 'vuex';
import { mapActions } from 'vuex';

export default {
    name: "signin",
    data() {
      return {
        role: "employee",

        username: "",
        password: "",
        code: "",
        company: "",
        confirmPassword: "",
        firstName: "",
        lastName: "",
        phone: "",
        email: "",

        passError: true,
        userError: true,
        formState: false,

        dayOptions: ["01", "02", "03", "04", "05", "06", "07", "08", "09", "10", "11", "12","13", "14", "15", "16","17", "18", "19", "20","21", "22", "23", "24", "23", "25", "26", "27", "28", "29", "30", "31"],
        day: "",
        monthOptions: ["01", "02", "03", "04", "05", "06", "07", "08", "09", "10", "11", "12"],
        month: "",        
        yearOptions: ["2019", "2018", "2017", "2016","2015", "2014", "2013", "2012","2011", "2010", "2009", "2008", "2007", "2006", "2005", "2004", "2003", "2002", "2001", "200", "1999", "1998"],
        year: "",

        hourOptions: ["00", "01", "02", "03", "04", "05", "06", "07", "08", "09", "10", "11", "12","13", "14", "15", "16","17", "18", "19", "20","21", "22", "23"],
        hour: "",
        minuteOptions: ["00", "05", "10", "15", "20", "25", "30", "35", "40", "45", "50", "55"],
        minute: "",
      }
    },
     computed: {
      ...mapGetters(["getAllUsers"])
    },
    methods: {
       ...mapActions(["addUser", "changeToast"]),

      checkPass() {
        this.passError = this.password === this.confirmPassword;
      },
      checkUser(){
        const users = this.getAllUsers
        let userNamesArray = [];

        users.forEach(user => {
            userNamesArray.push(user.username);
        });

        this.userError = userNamesArray.includes(this.username);
      },
      checkForm(){  
            this.formState = this.userError && this.passError;

            const date = this.year + "/" + this.month + "/" + this.day;
            const time = this.hour !== "" && this.minute !== "" ? this.hour + ":" + this.minute : ""; 
            const id = this.getAllUsers.length + 1;

            if(this.formState){
              const user = {
                id: id,
                username: this.username,
                password: this.password,
                firstName: this.firstName,
                lastName: this.lastName,
                code: "",
                employerCode: this.code,
                company: this.company,
                phone: this.phone,
                email: this.email,
                birthDate: date,
                time: time,
                dataSet: "",
                enabled: true,
                role: this.role.toUpperCase()
              }

              this.addUser(user);
              this.changeToast({
                text: "Register successfull!",
                title: "You have register successfully! All you have to do is log in now!",
                autoHideDelay: 3000,
                variant: "success",
                solid: true,
                toaster: "b-toaster-top-full",
              });
              this.$router.push({path: "/login"});
            }
        },
    }
  }
</script>

<style lang="scss" scoped>
hr.space {
  margin-bottom: 68px;
}
</style>
