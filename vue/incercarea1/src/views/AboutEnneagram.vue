<template>
  <div id="about-enneagram">
    <b-container>
      <em>
        *The following information was taken from the official
        <a href="https://www.enneagraminstitute.com/">Enneagram Institute</a>
        and from
        <a href="https://www.russellrowe.com/"
          >Russell Rowe's Healthy &amp; Happy Wellness Services</a
        >
        website
      </em>
      <b-card class="mt-4" header-tag="header">
        <template v-slot:header>
          <h2 class="mb-0">How the Enneagram System Works</h2>
        </template>
        <b-card-text class="about-enneagram">
          <p>
            The Enneagram is a profoundly powerful personality system that
            describes nine distinctly different personality types, each with
            unique mental, emotional and behavioral patterns that tend to become
            habitual over time and distort reality as it actually is. The
            Enneagram also describes how and why these patterns arise in the
            first place, although that is too big a topic to get into on this
            website (for more information read any books by Sandra Maitri,
            especially "The Spiritual Dimension of the Enneagram," and/or any
            books by A.H. Almaas). At first the Enneagram may seem like any
            other personality system but it gets much more subtle and deep as
            you probe into it. The Enneagram can act as a powerful mirror to
            help us see the hidden nature of our own personality structure, but
            more importantly, it can be used as a self-awareness tool to help us
            let go of our personality type's habitual ways of being that don't
            serve us.... or the world.
          </p>
          <b-img
            src="../assets/enneagram.png"
            center
            alt="Enneagram"
            style="width: 50%"
          ></b-img>
        </b-card-text>
        <b-col class="my-5">
          <b-card-group deck>
            <!--Type One-->
            <b-card class="type-one" header-tag="header">
              <template v-slot:header>
                <h6 class="mb-0">Type One</h6>
              </template>
              <b-card-text class>
                <p>
                  Ones are conscientious
                  <b>PERFECTIONISTS</b> motivated by a desire to live their life
                  the right way, which includes improving themselves, others,
                  and the world around them. They try to avoid criticism by
                  doing things perfectly. They have a strong inner
                  critic/conscience and live by their internal dictates of
                  "shoulds" and "shouldn'ts." They discipline themselves to do
                  what ought to be done. They do everything they can to avoid:
                  showing anger, losing self-control, or making mistakes.
                  Unconscious focus of attention: noticing imperfections;
                  correcting errors; doing a job well; being competent; having
                  integrity.
                </p>
              </b-card-text>
            </b-card>
            <!--Type Two-->
            <b-card class="type-two" header-tag="header">
              <template v-slot:header>
                <h6 class="mb-0">Type Two</h6>
              </template>
              <b-card-text class>
                <p>
                  Twos are friendly
                  <b>ADVISORS</b> motivated by a desire to be loved and
                  appreciated for their selfless generosity and helpfulness.
                  They take pride in their ability to make people feel special
                  and to anticipate and fulfill other people's needs. They like
                  to express their positive feelings toward others and usually
                  appear cheerful and self-sufficient. They can be so busy
                  taking care of others that they are often unaware of their own
                  real needs. They do everything they can to avoid:
                  disappointing others, feeling rejected, and being seen as
                  needy, clingy or possessive. Unconscious focus of attention:
                  anticipating/fulfilling needs of others; making others feel
                  special; establishing warm, heartfelt connections.
                </p>
              </b-card-text>
            </b-card>
            <!--Type Three-->
            <b-card class="type-three" header-tag="header">
              <template v-slot:header>
                <h6 class="mb-0">Type Three</h6>
              </template>
              <b-card-text class>
                <p>
                  Threes are ambitious
                  <b>ACHIEVERS</b> motivated by a desire to be productive,
                  efficient, admired, and successful at whatever they do. Life
                  is a series of tasks and goals to be completed and they keep
                  pushing themselves to achieve more. Diplomatic,
                  image-conscious Threes like to shine and want to be esteemed
                  by others. They are often disconnected from their deeper
                  feelings and can lose an inner sense of themselves. They do
                  everything they can to avoid: failure and uncomfortable
                  feelings that may arise from slowing down their pace.
                  Unconscious focus of attention: optimal performance; achieving
                  goals; winning; multitasking; efficient functioning; creating
                  a successful image.
                </p>
              </b-card-text>
            </b-card>
          </b-card-group>
        </b-col>

        <b-col class="my-5">
          <b-card-group deck>
            <!--Type Four-->
            <b-card class="type-four" header-tag="header">
              <template v-slot:header>
                <h6 class="mb-0">Type Four</h6>
              </template>
              <b-card-text class>
                <p>
                  Fours are romantic
                  <b>INDIVIDUALISTS</b> motivated by a desire to understand
                  themselves and express their deepest feelings. These sensitive
                  individualists want to create something beautiful and unique
                  that will communicate their authentic feelings. They want to
                  feel special but often feel different and estranged from
                  others. They long for emotional connection and can become very
                  depressed when feeling all alone in the world. They do
                  everything they can to avoid: being rejected, abandoned or
                  seen as ordinary. Unconscious focus of attention: what's
                  missing, lacking or unavailable; finding true love; yearning
                  and fantasizing about the ideal (relationship, job, self,
                  etc).
                </p>
              </b-card-text>
            </b-card>
            <!--Type Five-->
            <b-card class="type-five" header-tag="header">
              <template v-slot:header>
                <h6 class="mb-0">Type Five</h6>
              </template>
              <b-card-text class>
                <p>
                  Fives are cerebral
                  <b>THINKERS</b> motivated by a desire to gain knowledge and be
                  independent and self-sufficient. They observe life from a
                  distance, guard their privacy and space, and avoid being
                  engulfed by others. They feel more safe and in control when
                  thinking and analyzing than when in their feelings. They are
                  individualistic and not influenced by social pressure or
                  material possessions. They can sometimes feel socially
                  awkward. They do everything they can to avoid:
                  intrusive/demanding people, expressing strong feelings, large
                  crowds, feelings of inadequacy and emptiness. Unconscious
                  focus of attention: observing; analyzing; thinking; guarding
                  their privacy of space and time.
                </p>
              </b-card-text>
            </b-card>
            <!--Type Six-->
            <b-card class="type-six" header-tag="header">
              <template v-slot:header>
                <h6 class="mb-0">Type Six</h6>
              </template>
              <b-card-text class>
                <p>
                  Sixes are loyal
                  <b>GUARDIANS</b> motivated by a desire to have security,
                  safety and predictability in their environment as well as feel
                  a sense of belonging. They live with a constant background of
                  anxiety and fear that something might go wrong or that they'll
                  be defenseless against some imagined threat. Some Sixes are
                  phobic and withdraw from fearful situations to protect
                  themselves, whereas others are counterphobic and confront
                  fearful situations head-on, even seek them out. They do
                  everything they can to avoid: unpredictability, being helpless
                  in the face of danger, getting stuck in doubt, alienating
                  people they depend on. Unconscious focus of attention: what
                  could go wrong; potential dangers/threats; who can be
                  trusted/not trusted; looking for hidden meanings/messages;
                  playing the devil's advocate; being loyal to others.
                </p>
              </b-card-text>
            </b-card>
          </b-card-group>
        </b-col>

        <b-col class="my-5">
          <b-card-group deck>
            <!--Type Seven-->
            <b-card class="type-seven" header-tag="header">
              <template v-slot:header>
                <h6 class="mb-0">Type Seven</h6>
              </template>
              <b-card-text class>
                <p>
                  Sevens are vivacious
                  <b>OPTIMISTS</b> motivated by a desire to be upbeat and on the
                  go, to keep their options open, and to plan for new, exciting
                  experiences. They view life as a fun-filled adventure, yet
                  they also want to contribute to the world. Sevens have
                  fantastic imaginations and are constant seekers of excitement.
                  They do everything they can to avoid: boredom; painful
                  emotions and anxiety; limitations, constraints and
                  restrictions on their freedom; the drudgeries of life.
                  Unconscious focus of attention: planning for pleasureful
                  activities; enjoying and experiencing life to the fullest; any
                  new, fascinating information; seeing the interconnection and
                  interrelationship between diverse areas of information; being
                  spontaneous and on the go; new, stimulating people and
                  conversations; what I want to enjoy.
                </p>
              </b-card-text>
            </b-card>
            <!--Type Eight-->
            <b-card class="type-eight" header-tag="header">
              <template v-slot:header>
                <h6 class="mb-0">Type Eight</h6>
              </template>
              <b-card-text class>
                <p>
                  Eights are assertive
                  <b>CHALLENGERS</b> motivated by a desire to be powerful,
                  self-reliant, strong, and to have control over their lives.
                  Being respected for their strength is more important to them
                  than being liked. They are no-nonsense, lusty, robust people
                  who go after whatever they want. They are natural leaders who
                  want to make an impact on the world. They do everything they
                  can to avoid being: weak, vulnerable, controlled, or dependent
                  on others. Unconscious focus of attention: wielding power and
                  taking charge; being in control of my space; correcting
                  injustices; protecting the weak/innocent; action and
                  assertiveness.
                </p>
              </b-card-text>
            </b-card>
            <!--Type Nine-->
            <b-card class="type-nine" header-tag="header">
              <template v-slot:header>
                <h6 class="mb-0">Type Nine</h6>
              </template>
              <b-card-text class>
                <p>
                  Nines are easy-going
                  <b>MEDIATORS</b> motivated by a desire to keep the peace,
                  harmonize with others, and create a comfortable life. These
                  nice people (who can have difficulty saying "no" and making
                  decisions) can easily become distracted and then get off task
                  on the important things they were trying to do. Although they
                  rarely get angry and will accommodate others to avoid
                  conflict, they can be stubborn at times. They like to merge
                  with others and their environment, and they gain their sense
                  of self through these connections. They do everything they can
                  to avoid: confrontation, conflict and discomfort. Unconscious
                  focus of attention: all the things in the environment that
                  beckon attention; keeping life comfortable, peaceful,
                  harmonious, stable; being sensitive to others; doing the less
                  essential, comfortable activities rather than the more
                  important, disturbing ones.
                </p>
              </b-card-text>
            </b-card>
          </b-card-group>
        </b-col>
      </b-card>
    </b-container>
  </div>
</template>

<script>
export default {
  name: "aboutEnneagram"
};
</script>

<style lang="scss" scoped>
#about-enneagram {
  height: 85vh;
  overflow: auto;
  padding: 0 20px;
  p {
    text-align: justify;
  }
  .card-text p {
    text-indent: 40px;
  }
}

.about-enneagram {
  text-indent: 40px;
}

.type-one {
  .card-header {
    color: #fff;
    background-color: #1f537e;
  }
  .card-text p b {
    color: #1f537e;
  }
}

.type-two {
  .card-header {
    color: #fff;
    background-color: #40b39f;
  }
  .card-text p b {
    color: #40b39f;
  }
}

.type-three {
  .card-header {
    color: #fff;
    background-color: #21703b;
  }
  .card-text p b {
    color: #21703b;
  }
}

.type-four {
  .card-header {
    color: #fff;
    background-color: #77ac4e;
  }
  .card-text p b {
    color: #77ac4e;
  }
}

.type-five {
  .card-header {
    color: #fff;
    background-color: #f4c141;
  }
  .card-text p b {
    color: #f4c141;
  }
}

.type-six {
  .card-header {
    color: #fff;
    background-color: #f77822;
  }
  .card-text p b {
    color: #f77822;
  }
}

.type-seven {
  .card-header {
    color: #fff;
    background-color: #c72439;
  }
  .card-text p b {
    color: #c72439;
  }
}

.type-eight {
  .card-header {
    color: #fff;
    background-color: #811246;
  }
  .card-text p b {
    color: #811246;
  }
}

.type-nine {
  .card-header {
    color: #fff;
    background-color: #6b2683;
  }
  .card-text p b {
    color: #6b2683;
  }
}
</style>
