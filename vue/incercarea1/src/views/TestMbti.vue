<template>
    <div id="testMbti" :key="componentKey">
         <b-container class="bv-example-row">
             <b-row class="mb-3" id="info">
                <b-col sm="10" offset="1">      
                    <b-card title="MBTI Personality Test" header-tag="" footer-tag="">
                        <b-card-text>        
                             <p>The following test is designed to measure your MBTI Personality type.</p>          
                             <p>There are no right answers to any of these questions.</p>                   
                             <p>Answer the questions quickly, do not over-analyze them. Some seem worded poorly. Go with what feels best.</p>                   
                             <p>Answer the questions as “the way you are”, not “the way you’d like to be seen by others”</p>        
                        </b-card-text>
                    </b-card>
                </b-col>
            </b-row>

            <b-row class="mb-3">
                <b-col sm="10" offset="1">      
                      <b-card title="" header-tag="header" footer-tag="footer">
                        <b-card-text>
                           <b-row>
                                <b-col sm="6" v-for="(q, key) in questions" :key="key">
                                    <b-form-group>
                                        <template slot="label"><b>{{ key+1 }})</b> <span style="color: #0e577f;"> {{ q.questionText }}:</span></template>                                       
                                        <b-form-radio class="ml-4" @change="checkForm" v-for="(a, j) in q.answers" :key="j" v-model="q.selectedAnswerId" :name="'answer-'+key+'-'+'j'" :value="a.answerId">{{a.answerText}}</b-form-radio>                                                                                
                                    </b-form-group>
                                </b-col>                                 
                            </b-row>
                        </b-card-text>
                    </b-card>
                </b-col>
            </b-row>

             <b-row class="mb-3">
                <b-col sm="10" offset="1">      
                    <b-card title="" header-tag="" footer-tag="">
                        <b-card-text>        
                            <b-button @click="resetForm" variant="warning float-left"><font-awesome-icon icon="undo-alt"></font-awesome-icon> Reset Test</b-button>                  
                            <b-button @click="saveForm" :disabled="!formValid" variant="primary float-right"><font-awesome-icon icon="share-square"></font-awesome-icon> End Test</b-button>                                
                        </b-card-text>
                    </b-card>
                </b-col>
            </b-row>
        </b-container>        


        <b-modal ref="my-modal" hide-footer header-bg-variant="danger" title="MBTI test completed successfully!">
            <div class="d-block text-center">
                <h3>Your type is: <span class="testColor"> {{mbtiRole}} </span></h3>
            </div>
            <b-button v-if="!this.getTestCompleted.belbin" class="mt-3" variant="outline-warning" block to="/testBelbin">Belbin</b-button>
            <b-button v-if="!this.getTestCompleted.mbti" class="mt-3" variant="outline-danger" block to="/testMbti">MBTI</b-button>
            <b-button v-if="!this.getTestCompleted.enneagram" class="mt-2" variant="outline-primary" block to="/testEnneagram">Enneagram</b-button>
        </b-modal>
    </div>
</template>

<script>
import { mapGetters } from 'vuex';
import { mapActions } from 'vuex';

export default {
    name: "testMbti",
     data() {
        return {
            formValid: false,
            questions: [],
            clear: false,
            componentKey: 0,
            mbtiRole: ""
        }
    },
    methods: {
        ...mapActions(["setUserMbtiSequance", "addUserMbti", "computeMbtiType"]),

        resetForm() {
            this.componentKey++;
            this.questions = [];
            let questions = [];

            this.getAllMbtiQuestions.forEach(q => {
                let question = {};
                question.questionId = q.id;
                question.questionText = q.question;
                question.selectedAnswerId = 0;

                let answers = [];

                this.getAllMbtiAnswers.forEach(a => {
                    if (a.question_id === q.id){
                        let answer = {};
                        answer.mbtiType = a.mbti_type;
                        answer.answerText = a.answer;
                        answer.answerId = a.id;

                        answers.push(answer);
                    }
                });

                question.answers = answers;

                this.questions.push(question);
            });
        },
        saveForm() {
           if (this.formValid){
                this.questions.forEach((q, i) => {                                            
                    let um = {
                        id: this.getUserMbtiSequance,
                        userId: this.getLoginUser.id,
                        questionId: q.questionId,
                        answerId: q.selectedAnswerId,
                        answerMbtiType: q.answers.filter(a => a.answerId === q.selectedAnswerId)[0].mbtiType
                    }                

                    this.addUserMbti(um);
                    this.setUserMbtiSequance();
                   
                });

                this.computeMbtiType();

                this.mbtiRole = this.getMbtiRole;
                this.$refs['my-modal'].show(); // todo aici sa nu apara testele deja date
            }
        },
        checkForm(){
            this.questions.forEach(q => {
                if(q.selectedAnswerId === 0){
                    this.formValid = false;
                } else {
                    this.formValid = true;
                }
            });
        }
    },
    computed: {
        ...mapGetters(["getAllMbtiAnswers", "getAllMbtiQuestions", "getUserMbtiSequance", "getLoginUser", "getMbtiRole", "getTestCompleted"]),
    },
    mounted() {  
        let questions = [];

        this.getAllMbtiQuestions.forEach(q => {
            let question = {};
            question.questionId = q.id;
            question.questionText = q.question;
            question.selectedAnswerId = 0;           

            let answers = [];

            this.getAllMbtiAnswers.forEach(a => {
                if (a.question_id === q.id){
                    let answer = {};
                    answer.mbtiType = a.mbti_type;
                    answer.answerText = a.answer;
                    answer.answerId = a.id;

                    answers.push(answer);
                }
            });

            question.answers = answers;

            this.questions.push(question);
        });

        // this.computeMbtiType();
    }
}
</script>

<style lang="scss" scoped>
#testMbti {
    height: 85vh;
    overflow: auto;
    padding: 0 20px;
}

.list-group.list-group-horizontal  {
    .first-item-group {
        width: 90%;
    }

    .second-item-group {
        width: 13%;
    }
}

#info {
    .card-title {
        color: #0e577f;
        text-align: center;
    }
}

.testColor {
    color: #dc3545;
}

</style>
