<template>
  <div id="testBelbin">
    <b-container class="bv-example-row">
      <b-row class="mb-3" id="info">
        <b-col sm="10" offset="1">
          <b-card title="Self Perception Inventory" header-tag="" footer-tag="">
            <b-card-text>
              <p>
                To complete each section of this inventory, tick in the far left
                hand column the one, two or three sentences most applicable to
                yourself.
              </p>
              <p>
                Then in the column on the right, apportion 10 points between
                those sentences that apply to you: one of which you feel sums
                you up well while the other only applies some of the time. In
                this instance you could give your first choice seven points and
                the remaining points to your second choice. In some instances
                you might decide that there are two sentences which apply to you
                equally – if this is the case, award five points to each.
              </p>
              <p>You must allocate all 10 points in each section.</p>
            </b-card-text>
          </b-card>
        </b-col>
      </b-row>

      <b-row class="mb-3" v-for="q in questions" :key="q.questionId">
        <b-col sm="10" offset="1">
          <b-card title="" header-tag="header" footer-tag="footer">
            <h6 slot="header" class="mb-0">
              {{ q.questionId }}) {{ q.questionText | capitalize }}
            </h6>
            <b-card-text>
              <b-row v-for="a in q.answers" :key="a.answerId">
                <b-col sm="10">
                  <label> {{ a.answerText }} </label>
                </b-col>
                <b-col sm="2">
                  <b-button
                    :disabled="a.points === 0"
                    @click="subtract(q.questionId, a.answerId)"
                    variant="light"
                    size="sm"
                  >
                    <font-awesome-icon icon="minus-circle"></font-awesome-icon>
                  </b-button>
                  <span class="mx-2"> {{ a.points }} </span>
                  <b-button
                    :disabled="a.points === 10 || q.remainingPoints <= 0"
                    @click="add(q.questionId, a.answerId)"
                    variant="light"
                    size="sm"
                  >
                    <font-awesome-icon icon="plus-circle"></font-awesome-icon>
                  </b-button>
                </b-col>
              </b-row>
            </b-card-text>
            <span class="float-right" slot="footer"
              >Points remaining:
              <b-badge
                :variant="q.remainingPoints === 0 ? 'success' : 'danger'"
                pill
                >{{ q.remainingPoints }}</b-badge
              >
            </span>
          </b-card>
        </b-col>
      </b-row>

      <b-row class="mb-3">
        <b-col sm="10" offset="1">
          <b-card title="" header-tag="" footer-tag="">
            <b-card-text>
              <b-button @click="resetForm" variant="warning float-left"
                ><font-awesome-icon icon="undo-alt"></font-awesome-icon> Reset
                Test</b-button
              >
              <b-button
                @click="saveForm"
                v-b-tooltip.hover
                :title="
                  !formValid
                    ? 'You must alocate all points in each question'
                    : ''
                "
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
      header-bg-variant="warning"
      title="BELBIN Test completed successfully!"
    >
      <div class="d-block text-center">
        <h3>
          Your BELBIN roles are:
          <span class="testColor"> {{ belbinFirstRole }} </span> and
          <span class="testColor"> {{ belbinSecondRole }} </span>
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
  name: "testBelbin",
  data() {
    return {
      questions: [],
      formValid: false,
      belbinFirstRole: "",
      belbinSecondRole: ""
    };
  },
  methods: {
    ...mapActions([
      "setUserBeblinSequance",
      "addUserBelbin",
      "computeBelbinRole"
    ]),

    subtract(key, aId) {
      this.questions[key - 1].remainingPoints += 1;
      this.questions[key - 1].answers[(aId - 1) % 8].points -= 1;
      this.checkForm();
    },

    add(key, aId) {
      this.questions[key - 1].remainingPoints -= 1;
      this.questions[key - 1].answers[(aId - 1) % 8].points += 1;
      this.checkForm();
    },

    checkForm() {
      this.questions.some((q, i) => {
        this.formValid = true;
        if (q.remainingPoints !== 0) {
          this.formValid = false;
          return q.remainingPoints !== 0;
        }
      });
    },

    saveForm() {
      if (this.formValid) {
        let listUb = [];

        this.questions.forEach((q, i) => {
          q.answers.forEach((a, j) => {
            let ub = {
              questionId: q.questionId,
              answerId: a.answerId,
              answerScore: parseInt(a.points),
              answerBelbinId: parseInt(a.belbinId)
            };

            listUb.push(ub);
          });
        });

        this.addUserBelbin(listUb);
        // this.computeBelbinRole();

        // this.belbinFirstRole = this.getBelbinRoles.first;
        // this.belbinSecondRole = this.getBelbinRoles.second;

        // this.$refs['my-modal'].show();
      }
    },

    resetForm() {
      this.formValid = false;
      this.questions.forEach((q, i) => {
        q.remainingPoints = 10;
        q.answers.forEach(a => {
          a.points = 0;
        });
      });
    }
  },
  watch: {
    getTestCompleted: function(value) {
      this.belbinFirstRole = this.getBelbinRoles.belbin_first_role;
      this.belbinSecondRole = this.getBelbinRoles.belbin_second_role;

      this.$refs['my-modal'].show();
    }
  },
  computed: {
    ...mapGetters([
      "getAllBelbinAnswers",
      "getAllBelbinQuestions",
      "getUserBelbinSequance",
      "getLoginUser",
      "getBelbinRoles",
      "getTestCompleted"
    ])
  },
  filters: {
    capitalize: function(value) {
      if (!value) return "";
      value = value.toString();
      return value.charAt(0).toUpperCase() + value.slice(1);
    }
  },
  mounted() {
    let questions = [];
    this.getAllBelbinQuestions.forEach(q => {
      let question = {};
      question.questionId = q.id;
      question.questionText = q.question;

      let answers = [];

      this.getAllBelbinAnswers.forEach(a => {
        if (a.question_id === q.id) {
          let answer = {};
          answer.belbinId = a.belbin_id;
          answer.answerText = a.answer;
          answer.answerId = a.id;
          answer.points = 0;

          answers.push(answer);
        }
      });

      question.answers = answers;
      question.remainingPoints = 10;

      this.questions.push(question);
    });
    // this.computeBelbinRole(); // for testing
  }
};
</script>

<style lang="scss" scoped>
#testBelbin {
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
  color: #ffc107;
}

input::-webkit-outer-spin-button,
input::-webkit-inner-spin-button {
  /* display: none; <- Crashes Chrome on hover */
  -webkit-appearance: none;
  margin: 0; /* <-- Apparently some margin are still there even though it's hidden */
}

input[type="number"] {
  -moz-appearance: textfield; /* Firefox */
}
</style>
