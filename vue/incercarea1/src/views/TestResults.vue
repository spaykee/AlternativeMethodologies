<template>
  <div id="testResults">
    <b-container fluid class="">
      <b-row>
        <b-col
          style="margin-bottom: 15px;"
          v-for="(b, i) in belbin"
          :key="i + b.name"
          sm="6"
        >
          <b-card
            id="belbin-details"
            :header="'Belbin Role ' + parseInt(i + 1)"
          >
            <h5>{{ b.name }}</h5>
            <b-card-text>
              <b-row class="list-item">
                <b-col class="left" sm="4">
                  Role-type:
                </b-col>
                <b-col class="right" sm="8">
                  {{ b.name }}
                </b-col>
              </b-row>
              <b-row class="list-item">
                <b-col class="left" sm="4">
                  Code:
                </b-col>
                <b-col class="right" sm="8">
                  {{ b.code }}
                </b-col>
              </b-row>
              <b-row class="list-item">
                <b-col class="left" sm="4">
                  Group:
                </b-col>
                <b-col class="right" sm="8">
                  {{ b.group }}
                </b-col>
              </b-row>
              <b-row class="list-item">
                <b-col class="left" sm="4">
                  Description:
                </b-col>
                <b-col class="right" sm="8">
                  {{ b.description }}
                </b-col>
              </b-row>
              <b-row class="list-item">
                <b-col class="left" sm="4">
                  Strengths:
                </b-col>
                <b-col class="right" sm="8">
                  {{ b.strengths }}
                </b-col>
              </b-row>
              <b-row class="list-item">
                <b-col class="left" sm="4">
                  Weaknesses:
                </b-col>
                <b-col class="right" sm="8">
                  {{ b.weaknesses }}
                </b-col>
              </b-row>
            </b-card-text>
          </b-card>
        </b-col>

        <b-col style="margin-bottom: 15px;" v-if="zodiac !== null" sm="6">
          <b-card id="zodiac-details" header="Zodiac">
            <h5>{{ zodiac.zodiac }}</h5>
            <b-card-text>
              <b-row class="list-item">
                <b-col class="left" sm="4">
                  Element:
                </b-col>
                <b-col class="right" sm="8">
                  {{ zodiac.element }}
                </b-col>
              </b-row>
              <b-row class="list-item">
                <b-col class="left" sm="4">
                  color:
                </b-col>
                <b-col class="right" sm="8">
                  {{ zodiac.color }}
                </b-col>
              </b-row>
              <b-row class="list-item">
                <b-col class="left" sm="4">
                  Ruler:
                </b-col>
                <b-col class="right" sm="8">
                  {{ zodiac.ruler }}
                </b-col>
              </b-row>
              <b-row class="list-item">
                <b-col class="left" sm="4">
                  Date Range:
                </b-col>
                <b-col class="right" sm="8">
                  {{ zodiac.date_range }}
                </b-col>
              </b-row>
              <b-row class="list-item">
                <b-col class="left" sm="4">
                  Day:
                </b-col>
                <b-col class="right" sm="8">
                  {{ zodiac.day }}
                </b-col>
              </b-row>
              <b-row class="list-item">
                <b-col class="left" sm="4">
                  Compatibility:
                </b-col>
                <b-col class="right" sm="8">
                  {{ zodiac.compatibility }}
                </b-col>
              </b-row>
              <b-row class="list-item">
                <b-col class="left" sm="4">
                  Lucky numbers:
                </b-col>
                <b-col class="right" sm="8">
                  {{ zodiac.lucky_numbers }}
                </b-col>
              </b-row>
              <b-row class="list-item">
                <b-col class="left" sm="4">
                  Description:
                </b-col>
                <b-col class="right" sm="8">
                  {{ zodiac.description }}
                </b-col>
              </b-row>
            </b-card-text>
          </b-card>
        </b-col>

        <b-col style="margin-bottom: 15px;" v-if="mbti !== null" sm="6">
          <b-card id="mbti-details" header="MBTI">
            <h5>{{ mbti.code }}</h5>
            <b-card-text>
              <b-row class="list-item">
                <b-col class="left" sm="4">
                  Code:
                </b-col>
                <b-col class="right" sm="8">
                  {{ mbti.code }}
                </b-col>
              </b-row>
              <b-row class="list-item">
                <b-col class="left" sm="4">
                  Description:
                </b-col>
                <b-col class="right" sm="8">
                  {{ mbti.description }}
                </b-col>
              </b-row>
            </b-card-text>
          </b-card>
        </b-col>

        <b-col
          style="margin-bottom: 15px;"
          v-for="(e, j) in enneagram"
          :key="j + j * j"
          sm="6"
        >
          <b-card
            id="enneagram-details"
            :header="'Enneagram type ' + parseInt(j + 1)"
          >
            <h5>{{ e.name }}</h5>
            <b-card-text>
              <b-row class="list-item">
                <b-col class="left" sm="4">
                  Name:
                </b-col>
                <b-col class="right" sm="8">
                  {{ e.name }}
                </b-col>
              </b-row>
              <b-row class="list-item">
                <b-col class="left" sm="4">
                  Description:
                </b-col>
                <b-col class="right" sm="8">
                  {{ e.description }}
                </b-col>
              </b-row>
            </b-card-text>
          </b-card>
        </b-col>

        <b-col style="margin-bottom: 15px;" v-if="numerology !== null" sm="6">
          <b-card id="numerology-details" header="Numerology">
            <h5>{{ numerology.day_of_month }}</h5>
            <b-card-text>
              <b-row class="list-item">
                <b-col class="left" sm="4">
                  Day of month:
                </b-col>
                <b-col class="right" sm="8">
                  {{ numerology.day_of_month }}
                </b-col>
              </b-row>
              <b-row class="list-item">
                <b-col class="left" sm="4">
                  Description:
                </b-col>
                <b-col class="right" sm="8">
                  {{ numerology.description }}
                </b-col>
              </b-row>
            </b-card-text>
          </b-card>
        </b-col>

        <b-col style="margin-bottom: 15px;" v-if="ascendant !== null" sm="6">
          <b-card id="ascendant-details" header="Zodiac ascendant">
            <h5>{{ ascendant.zodiac }}</h5>
            <b-card-text>
              <b-row class="list-item">
                <b-col class="left" sm="4">
                  Element:
                </b-col>
                <b-col class="right" sm="8">
                  {{ ascendant.element }}
                </b-col>
              </b-row>
              <b-row class="list-item">
                <b-col class="left" sm="4">
                  color:
                </b-col>
                <b-col class="right" sm="8">
                  {{ ascendant.color }}
                </b-col>
              </b-row>
              <b-row class="list-item">
                <b-col class="left" sm="4">
                  Ruler:
                </b-col>
                <b-col class="right" sm="8">
                  {{ ascendant.ruler }}
                </b-col>
              </b-row>
              <b-row class="list-item">
                <b-col class="left" sm="4">
                  Date Range:
                </b-col>
                <b-col class="right" sm="8">
                  {{ ascendant.date_range }}
                </b-col>
              </b-row>
              <b-row class="list-item">
                <b-col class="left" sm="4">
                  Day:
                </b-col>
                <b-col class="right" sm="8">
                  {{ ascendant.day }}
                </b-col>
              </b-row>
              <b-row class="list-item">
                <b-col class="left" sm="4">
                  Compatibility:
                </b-col>
                <b-col class="right" sm="8">
                  {{ ascendant.compatibility }}
                </b-col>
              </b-row>
              <b-row class="list-item">
                <b-col class="left" sm="4">
                  Lucky numbers:
                </b-col>
                <b-col class="right" sm="8">
                  {{ ascendant.lucky_numbers }}
                </b-col>
              </b-row>
              <b-row class="list-item">
                <b-col class="left" sm="4">
                  Description:
                </b-col>
                <b-col class="right" sm="8">
                  {{ ascendant.description }}
                </b-col>
              </b-row>
            </b-card-text>
          </b-card>
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
  data() {
    return {
      zodiac: {},
      ascendant: {},
      numerology: {},
      enneagram: [],
      belbin: [],
      mbti: {}
    };
  },
  computed: {
    ...mapGetters([
      "getLoginUser",
      "getAllUserDatasets",
      "getAllZodiacs",
      "getAllZodiacAscendants",
      "getAllEnneagrams",
      "getAllMbtis",
      "getAllBelbins",
      "getAllNumerologys"
    ])
  },
  methods: {},
  mounted() {
    let dataset = this.getAllUserDatasets.filter(
      ds => ds.userId === this.getLoginUser.id
    )[0];

    let belbinFirstRole =
      dataset.belbin_first_role !== null
        ? this.getAllBelbins.filter(x => x.id === dataset.belbin_first_role)[0]
        : null;
    let belbinSecondRole =
      dataset.belbin_second_role !== null
        ? this.getAllBelbins.filter(x => x.id === dataset.belbin_second_role)[0]
        : null;

    this.belbin.push(belbinFirstRole);
    this.belbin.push(belbinSecondRole);

    let zodiac =
      dataset.zodiac_id !== null
        ? this.getAllZodiacs.filter(x => x.id === dataset.zodiac_id)[0]
        : null;
    this.zodiac = zodiac;

    let mbti =
      dataset.MBTI_role !== null
        ? this.getAllMbtis.filter(x => x.code === dataset.MBTI_role)[0]
        : null;
    this.mbti = mbti;

    let enneagramFirstRole =
      dataset.eneagram_first_role !== null
        ? this.getAllEnneagrams.filter(
            x => x.id === dataset.eneagram_first_role
          )[0]
        : null;
    let enneagramSecondRole =
      dataset.eneagram_second_role !== null
        ? this.getAllEnneagrams.filter(
            x => x.id === dataset.eneagram_second_role
          )[0]
        : null;
    let enneagramThirddRole =
      dataset.eneagram_third_role !== null
        ? this.getAllEnneagrams.filter(
            x => x.id === dataset.eneagram_third_role
          )[0]
        : null;

    this.enneagram.push(enneagramFirstRole);
    this.enneagram.push(enneagramSecondRole);
    this.enneagram.push(enneagramThirddRole);

    let numerology =
      dataset.numerology !== null
        ? this.getAllNumerologys.filter(x => x.id === dataset.numerology)[0]
        : null;
    this.numerology = numerology;

    let asc =
      dataset.zodiac_ascendant_id !== null
        ? this.getAllZodiacAscendants.filter(
            x => x.id === dataset.zodiac_ascendant_id
          )[0]
        : null;
    let zodiacAsc =
      asc !== null
        ? this.getAllZodiacs.filter(x => x.id === asc.ascendant)[0]
        : null;
    this.ascendant = zodiacAsc;
  }
};
</script>

<style lang="scss" scoped>
$belbin-color: #28a745;
$belbin-bk-color: #60f883;

$zodiac-color: #6328a7;
$zodiac-bk-color: #b460f8;

$mbti-color: #ffc107;
$mbti-bk-color: #f5d26b;

$enneagram-color: #17a2b8;
$enneagram-bk-color: #59dff3;

$numerology-color: #dc3545;
$numerology-bk-color: #fa919c;

$ascendant-color: #006eff;
$ascendant-bk-color: #4d9aff;

#testResults {
  height: 85vh;
  overflow: auto;
}

#belbin-details {
  .card-header {
    background-color: $belbin-bk-color;
    color: black;
    font-weight: 700;
  }
  .list-item {
    margin-bottom: 10px;
  }
  .left {
    font-weight: 700;
    color: black;
  }
  .right {
    text-indent: 30px;
    text-align: justify;
  }
  h5 {
    color: $belbin-color;
    font-weight: 700;
  }
}

#zodiac-details {
  .card-header {
    background-color: $zodiac-bk-color;
    color: black;
    font-weight: 700;
  }
  .list-item {
    margin-bottom: 10px;
  }
  .left {
    font-weight: 700;
    color: black;
  }
  .right {
    text-indent: 30px;
    text-align: justify;
  }
  h5 {
    color: $zodiac-color;
    font-weight: 700;
  }
}

#mbti-details {
  .card-header {
    background-color: $mbti-bk-color;
    color: black;
    font-weight: 700;
  }
  .list-item {
    margin-bottom: 10px;
  }
  .left {
    font-weight: 700;
    color: black;
  }
  .right {
    text-indent: 30px;
    text-align: justify;
  }
  h5 {
    color: $mbti-color;
    font-weight: 700;
  }
}

#enneagram-details {
  .card-header {
    background-color: $enneagram-bk-color;
    color: black;
    font-weight: 700;
  }
  .list-item {
    margin-bottom: 10px;
  }
  .left {
    font-weight: 700;
    color: black;
  }
  .right {
    text-indent: 30px;
    text-align: justify;
  }
  h5 {
    color: $enneagram-color;
    font-weight: 700;
  }
}

#numerology-details {
  .card-header {
    background-color: $numerology-bk-color;
    color: black;
    font-weight: 700;
  }
  .list-item {
    margin-bottom: 10px;
  }
  .left {
    font-weight: 700;
    color: black;
  }
  .right {
    text-indent: 30px;
    text-align: justify;
  }
  h5 {
    color: $numerology-color;
    font-weight: 700;
  }
}

#ascendant-details {
  .card-header {
    background-color: $ascendant-bk-color;
    color: black;
    font-weight: 700;
  }
  .list-item {
    margin-bottom: 10px;
  }
  .left {
    font-weight: 700;
    color: black;
  }
  .right {
    text-indent: 30px;
    text-align: justify;
  }
  h5 {
    color: $ascendant-color;
    font-weight: 700;
  }
}
</style>
