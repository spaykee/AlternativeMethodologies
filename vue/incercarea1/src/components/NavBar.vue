<template>
    <div>
        <b-navbar id="nav-bar" toggleable="lg" type="dark">
            <b-navbar-brand to="/">Team Role Management</b-navbar-brand>

            <b-navbar-toggle target="nav-collapse"></b-navbar-toggle>
            
            <b-collapse id="nav-collapse" is-nav>
                <!-- Right aligned nav items -->
                <b-navbar-nav class="ml-auto">
                    <b-nav-item to="/" :class="this.$route.name == 'home'? 'active' : ''" >
                        <font-awesome-icon icon="home"></font-awesome-icon> <span class=""> Home</span>
                    </b-nav-item>
                    <b-nav-item to="/dashboard" :class="this.$route.name == 'dashboard'? 'active' : ''"  v-if="Object.keys(getLoginUser).length !== 0 && getLoginUser.role === 'EMPLOYER'" >
                        <font-awesome-icon icon="outdent"></font-awesome-icon> <span class=""> Dashboard</span>
                    </b-nav-item>
                    <b-nav-item to="/dashboardemployee" :class="this.$route.name == 'dashboardemployee'? 'active' : ''"  v-if="Object.keys(getLoginUser).length !== 0 && getLoginUser.role === 'EMPLOYEE'" >
                        <font-awesome-icon icon="outdent"></font-awesome-icon> <span class=""> Dashboard</span>
                    </b-nav-item>
                    
                     <b-nav-item-dropdown id="mydiv" ref="myid" :class="checkTestsActiveRoute ? 'active' : ''"  v-if="Object.keys(getLoginUser).length !== 0"  left>
                        <template slot="button-content">
                            <font-awesome-icon icon="file-alt"></font-awesome-icon> <span class=""> Tests</span>
                        </template>
                        <b-dropdown-item to="/testBelbin" :class="this.$route.name == 'testBelbin'? 'active' : ''">Belbin</b-dropdown-item>
                        <b-dropdown-item to="/testMbti" :class="this.$route.name == 'testMbti'? 'active' : ''">MBTI</b-dropdown-item>
                        <b-dropdown-item to="/testEnneagram" :class="this.$route.name == 'testEnneagram'? 'active' : ''">Enneagram</b-dropdown-item>
                    </b-nav-item-dropdown>

                    <b-nav-item-dropdown :class="checkAboutActiveRoute ? 'active' : ''"  left>
                        <template slot="button-content">
                            <font-awesome-icon icon="question-circle"></font-awesome-icon> <span class=""> About</span>
                        </template>
                        <b-dropdown-item to="/aboutBelbin" :class="this.$route.name == 'aboutBelbin'? 'active' : ''">Belbin</b-dropdown-item>
                        <b-dropdown-item to="/aboutMbti" :class="this.$route.name == 'aboutMbti'? 'active' : ''">MBTI</b-dropdown-item>
                        <b-dropdown-item to="/aboutEnneagram" :class="this.$route.name == 'aboutEnneagram'? 'active' : ''">Enneagram</b-dropdown-item>
                        <b-dropdown-divider></b-dropdown-divider>
                        <b-dropdown-item to="/aboutZodiac" :class="this.$route.name == 'aboutZodiac'? 'active' : ''">Zodiac</b-dropdown-item>
                        <b-dropdown-item to="/aboutZodiacAsc" :class="this.$route.name == 'aboutZodiacAsc'? 'active' : ''">Zodiac Ascendents</b-dropdown-item>
                        <b-dropdown-item to="/aboutNumerology" :class="this.$route.name == 'aboutNumerology'? 'active' : ''">Numerology</b-dropdown-item>
                    </b-nav-item-dropdown>

                    <b-nav-item to="/contact" :class="this.$route.name == 'contact'? 'active' : ''" >
                        <font-awesome-icon icon="id-card"></font-awesome-icon> <span class=""> Contact </span>
                    </b-nav-item>
                    <b-nav-item to="/signin" :class="this.$route.name == 'signin'? 'active' : ''" v-if="Object.keys(getLoginUser).length === 0" >
                        <font-awesome-icon icon="clipboard-list"></font-awesome-icon> <span class=""> Sign in </span>
                    </b-nav-item>
                    <b-nav-item to="/login" :class="this.$route.name == 'login'? 'active' : ''"  v-if="Object.keys(getLoginUser).length === 0" >
                        <font-awesome-icon icon="sign-in-alt"></font-awesome-icon> <span class=""> Log in </span>
                    </b-nav-item>           

                    <b-nav-item-dropdown id="mydiv" v-if="Object.keys(getLoginUser).length !== 0" ref="myid" :class="checkUserActiveRoute ? 'active' : ''"  left>
                        <template slot="button-content">
                            <font-awesome-icon icon="user-tie"></font-awesome-icon> <span class=""> {{ getLoginUser.firstName }}  {{ getLoginUser.lastName }}</span>
                        </template>
                        <b-dropdown-item to="/editUser" :class="this.$route.name == 'editUser'? 'active' : ''">
                           <font-awesome-icon icon="user-edit"></font-awesome-icon> <span class=""> Edit account </span> 
                        </b-dropdown-item>
                        <b-dropdown-item to="/testResults" :class="this.$route.name == 'testResults'? 'active' : ''">
                           <font-awesome-icon icon="poll"></font-awesome-icon> <span class=""> Test Results </span> 
                        </b-dropdown-item>
                        <b-dropdown-divider></b-dropdown-divider>
                        <b-dropdown-item @click="logOut">
                            <font-awesome-icon icon="sign-out-alt"></font-awesome-icon> <span class=""> Log out </span> 
                        </b-dropdown-item>
                    </b-nav-item-dropdown>
                </b-navbar-nav>
            </b-collapse>
        </b-navbar>
    </div>
</template>

<script>
import { mapGetters } from 'vuex';
import { mapActions } from 'vuex';

export default {    
    mounted() {
        if (localStorage.getItem("token") !== null && Object.entries(this.getLoginUser).length === 0 && this.getLoginUser.constructor === Object) {
            console.log("intra");
            this.setLoginUser(localStorage.getItem("token"));
        }
    },
    computed: {
       ...mapGetters(["getLoginUser"]),        

        checkTestsActiveRoute() {
           switch(this.$route.name){
               case "testBelbin" :
                   return true;
                   break;
                case "testMbti" :
                   return true;
                   break;
                case "testEnneagram" :
                   return true;
                   break;
                default :                    
                   return false;
                   break;   
           }
       },

       checkAboutActiveRoute() {
           switch(this.$route.name){
                case "aboutBelbin" :
                   return true;
                   break;
                case "aboutMbti" :
                   return true;
                   break;
                case "aboutEnneagram" :
                   return true;
                   break;
                case "aboutZodiac" :             
                   return true;
                   break;   
                case "aboutZodiacAsc" :
                   return true;
                   break;
                case "aboutNumerology" :
                   return true;
                   break;                            
                default :                    
                   return false;
                   break;      
           }
       },

        checkUserActiveRoute() {
            switch(this.$route.name){
                case "editUser" :
                   return true;
                   break;   
                case "testResults" :
                   return true;
                   break;   
                default :                    
                    return false;
                    break;      
            }
        },
   },
   methods: {
       ...mapActions(["logout", "setLoginUser"]),
       logOut(){
           localStorage.clear();
           this.logout();
       },
   }
}
</script>


<style lang="scss" scoped>

#nav-bar {
    background-color: #0e577f;
    padding: 0px 30px;

    li.nav-item {
        padding: 5px;
    }

    li.nav-item.active {
        background-color: #06334b;
    }

    .dropdown-menu.show li.active {
          background-color: #77b5d7
    }

}

</style>
