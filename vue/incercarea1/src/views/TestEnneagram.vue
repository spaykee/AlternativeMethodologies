<template>
  <div id="testEnneagram" :key="componentKey">
    <b-container class="bv-example-row">
      <b-row class="mb-3" id="info">
        <b-col sm="12">
          <b-card
            title="The Riso-Hudson Enneagram Type Indicator"
            header-tag=""
            footer-tag=""
          >
            <b-card-text>
              <p>
                The RHETI Sampler’s 36 questions are only a part of the full,
                independently scientifically validated 144-question Riso-Hudson
                Enneagram Type Indicator (RHETI, Version 2.5) personality
                inventory.
              </p>
              <p>
                Short personality quizzes such as the RHETI Sampler cannot
                guarantee that your basic personality type will be indicated,
                although your type will most likely be one of the top three
                scores in this free quiz.
              </p>
              <p>
                We recommend that you read the type descriptions at the end of
                this test, and in Riso-Hudson Enneagram books, to help you
                identify your basic personality type.
              </p>
              <p>
                Remember that there are no “right” answers and that no
                personality type is better than any other. Furthermore, the
                RHETI does not indicate how healthy or unhealthy a person is, so
                relax and answer the statements simply and honestly.
              </p>
            </b-card-text>
          </b-card>
        </b-col>
      </b-row>

      <b-row class="mb-3">
        <b-col sm="12">
          <b-card title="" header-tag="header" footer-tag="footer">
            <b-card-text>
              <b-row>
                <b-col sm="6" v-for="(q, key) in questions" :key="key">
                  <b-form-group>
                    <template slot="label"
                      ><span style="color: #0e577f;">
                        <b>{{ q.questionText }}.</b></span
                      ></template
                    >
                    <b-form-radio
                      class="ml-4"
                      @input="checkForm"
                      v-for="(a, j) in q.answers"
                      :key="j"
                      v-model="q.selectedAnswerId"
                      :name="'answer-' + key + '-' + 'j'"
                      :value="a.answerId"
                    >
                      <span class="pointer">{{ a.answerText }}</span>
                    </b-form-radio>
                  </b-form-group>
                </b-col>
              </b-row>
            </b-card-text>
          </b-card>
        </b-col>
      </b-row>

      <b-row class="mb-3">
        <b-col sm="12">
          <b-card title="" header-tag="" footer-tag="">
            <b-card-text>
              <b-button @click="resetForm" variant="warning float-left"
                ><font-awesome-icon icon="undo-alt"></font-awesome-icon> Reset
                Test</b-button
              >
              <b-button
                @click="saveForm"
                v-b-tooltip.hover
                :title="!formValid ? 'You must answer all questions' : ''"
                :disabled="!formValid"
                variant="primary float-right"
                ><font-awesome-icon icon="share-square"></font-awesome-icon> End
                Test</b-button
              >
            </b-card-text>
          </b-card>
        </b-col>
      </b-row>
    </b-container>

    <b-modal
      ref="my-modal"
      hide-footer
      header-bg-variant="danger"
      title="Enneagram test completed successfully!"
    >
      <div class="d-block text-center">
        <h3>
          Your type is: <span class="testColor"> {{ mbtiRole }} </span>
        </h3>
      </div>
      <b-button
        v-if="!this.getTestCompleted.belbin"
        class="mt-3"
        variant="outline-warning"
        block
        to="/testBelbin"
        >Belbin</b-button
      >
      <b-button
        v-if="!this.getTestCompleted.mbti"
        class="mt-3"
        variant="outline-danger"
        block
        to="/testMbti"
        >MBTI</b-button
      >
      <b-button
        v-if="!this.getTestCompleted.enneagram"
        class="mt-2"
        variant="outline-primary"
        block
        to="/testEnneagram"
        >Enneagram</b-button
      >
    </b-modal>
  </div>
</template>

<script>
import { mapGetters } from "vuex";
import { mapActions } from "vuex";

export default {
  name: "testEnneagram",
  data() {
    return {
      formValid: false,
      questions: [],
      clear: false,
      componentKey: 0,
      mbtiRole: ""
    };
  },
  methods: {
    ...mapActions([
      "setUserEnneagramSequance",
      "addUserEnneagram",
      "computeEnneagramType"
    ]),

    resetForm() {
      this.componentKey++;
      this.questions = [];
      let questions = [];

      this.getAllEnneagramQuestions.forEach(q => {
        let question = {};
        question.questionId = q.id;
        question.questionText = q.question;
        question.selectedAnswerId = 0;

        let answers = [];

        this.getAllEnneagramAnswers.forEach(a => {
          if (a.question_id === q.id) {
            let answer = {};
            answer.enneagramType = a.enneagram_type;
            answer.answerText = a.answer;
            answer.answerId = a.id;

            answers.push(answer);
          }
        });

        question.answers = answers;

        this.questions.push(question);
      });
      this.formValid = false;
    },
    saveForm() {
      if (this.formValid) {
        this.questions.forEach((q, i) => {
          let ue = {
            id: this.getUserEnneagramSequance,
            userId: this.getLoginUser.id,
            questionId: q.questionId,
            answerId: q.selectedAnswerId,
            answerEnneagramType: q.answers.filter(
              a => a.answerId === q.selectedAnswerId
            )[0].enneagramType
          };

          this.addUserEnneagram(ue);
          this.setUserEnneagramSequance();
        });

        this.computeEnneagramType();

        console.log(this.questions);

        this.mbtiRole = this.getMbtiRole;
        this.$refs["my-modal"].show(); // todo aici sa nu apara testele deja date
      }
    },
    checkForm() {
      this.questions.some(q => {
        this.formValid = true;
        if (q.selectedAnswerId === 0) {
          this.formValid = false;
          return q.selectedAnswerId === 0;
        }
      });
    }
  },
  computed: {
    ...mapGetters([
      "getAllEnneagramAnswers",
      "getAllEnneagramQuestions",
      "getUserEnneagramSequance",
      "getLoginUser",
      "getTestCompleted"
    ])
  },
  mounted() {
    let questions = [];

    this.getAllEnneagramQuestions.forEach(q => {
      let question = {};
      question.questionId = q.id;
      question.questionText = q.question;
      question.selectedAnswerId = 0;

      let answers = [];

      this.getAllEnneagramAnswers.forEach(a => {
        if (a.question_id === q.id) {
          let answer = {};
          answer.enneagramType = a.enneagram_type;
          answer.answerText = a.answer;
          answer.answerId = a.id;

          answers.push(answer);
        }
      });

      question.answers = answers;

      this.questions.push(question);
    });

    this.computeEnneagramType();
  }
};
</script>

<style lang="scss" scoped>
#testMbti {
  height: 85vh;
  overflow: auto;
  padding: 0 20px;
}

.list-group.list-group-horizontal {
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

  p {
    text-indent: 40px;
    text-align: justify;
  }
}

.testColor {
  color: #dc3545;
}

.pointer {
  cursor: pointer;
}
</style>
