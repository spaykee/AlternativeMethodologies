<template>
  <div id="about-belbin">
    <b-container>
      <em>
        *The following information was taken from the official
        <a href="https://www.belbin.com/">Belbin</a> website
      </em>

      <b-card class="mt-4" header-tag="header">
        <template v-slot:header>
          <h2 class="mb-0">The Nine Belbin Team Roles</h2>
          <br />
          <p>
            <small
              >A team is not a bunch of people with job titles, but a
              congregation of individuals, each of whom has a role which is
              understood by other members.</small
            >
          </p>
        </template>
        <b-card-text class="about-belbin">
          <h5 class="lead">
            Research showed that the most successful teams were made up of a
            diverse mix of behaviours.
          </h5>
          <br />
          <p>
            Dr Meredith Belbin and his team discovered that there are nine
            clusters of behaviour - these were called 'Team Roles' (see
            descriptions below).
          </p>
          <p>
            Each team needs access to each of the nine Team Role behaviours to
            become a high performing team. However, this doesn't mean that every
            team requires nine people! Most people will have two or three Team
            Roles that they are most comfortable with, and this can change over
            time. Each Team Role has its strengths and weaknesses, and each has
            equal importance.
          </p>
          <p>
            However, not all are always required at the same time - it is
            important to first look at the team objectives, and work out which
            tasks need to be undertaken. Once this has been done, discussions
            can take place regarding which and when each Team Role behaviour
            should be utilised.
          </p>
          <p>
            By using Belbin, individuals have a greater self-understanding of
            their strengths, which leads to more effective communication between
            colleagues and managers. Great teams can be put together, existing
            teams can be understood and improved, and everyone can feel that
            they are making a difference in the workplace.
          </p>
        </b-card-text>

        <b-col class="my-5">
          <b-card-group deck>
            <b-card
              class="resource-investigator"
              header-tag="header"
              footer-tag="footer"
            >
              <template v-slot:header>
                <h6 class="mb-0">Resource Investigator</h6>
              </template>
              <b-card-text class>
                <p>
                  Uses their inquisitive nature to find ideas to bring back to
                  the team.
                </p>
                <p>
                  <b>Strengths:</b> Outgoing, enthusiastic. Explores
                  opportunities and develops contacts.
                </p>
                <p>
                  <b>Allowable weaknesses:</b> Might be over-optimistic, and can
                  lose interest once the initial enthusiasm has passed.
                </p>
                <p>
                  <b>Don't be surprised to find that:</b> They might forget to
                  follow up on a lead.
                </p>
              </b-card-text>
              <template v-slot:footer>
                <b-button
                  v-b-modal.resource-investigator
                  class="details-btn mx-auto"
                  variant="info"
                  size="sm"
                  >Details</b-button
                >
              </template>

              <b-modal
                id="resource-investigator"
                size="lg"
                title="Resource Investigator"
                hide-footer
              >
                <p class="lead">
                  <b>Objective:</b> To explore external resources and develop
                  contacts on behalf of the team.
                </p>
                <b-tabs content-class="mt-2 text-justify" pills vertical small>
                  <b-tab title="Strengths" style="text-indent: 40px;" active>
                    <p>
                      Resource Investigators are natural communicators, who are
                      able to establish a rapport quickly, to extend the range
                      of the team’s useful contacts and partnerships.
                    </p>
                    <p>
                      Outgoing and inquisitive, Resource Investigators are
                      likely to be found at conferences and exhibitions,
                      exploring new ideas and opportunities. They are best
                      placed to go out and discover new possibilities that they
                      can report back to the team. In this way, Resource
                      Investigators can ensure that the team capitalizes on new
                      developments and keeps a handle on their competitors.
                      Without them, the team risks stagnating – becoming too
                      inward-looking and losing track of their marketplace.
                    </p>
                    <p>
                      Since they are both persuasive and affable, Resource
                      Investigators make strong and capable negotiators. They
                      are good at thinking on their feet and, because of their
                      boundless enthusiasm, they enjoy convincing others of the
                      benefits of a potential idea or possibility.
                    </p>
                  </b-tab>
                  <b-tab
                    title="Potential weaknesses"
                    style="text-indent: 40px;"
                  >
                    <p>
                      Resource Investigators thrive on the excitement of
                      novelty, and whilst this allows them to respond quickly to
                      new developments, their enthusiasm can fade as quickly as
                      it arose. While they move on to the ‘next big thing’, this
                      can leave others in the team to pick up the pieces, and
                      this expedience can cause resentment – or worse, lead to a
                      missed opportunity.
                    </p>
                    <p>
                      Even with the best of intentions, their natural optimism
                      can be misplaced. Resource Investigators focus on the
                      potential and not necessarily on the detail. If the ideas
                      they present are not sufficiently vetted by others in the
                      team, this can lead to unnecessary work and wasted time.
                    </p>
                    <p>
                      Resource Investigators enjoy talking, but this can have an
                      adverse impact on the team too. Sometimes, they are
                      over-talkative, which means that others aren’t given
                      sufficient time to air their views. Whilst they may enjoy
                      a lively workspace, others who need a quieter working
                      environment may struggle.
                    </p>
                  </b-tab>
                  <b-tab
                    title="Non-negotiable weaknesses"
                    style="text-indent: 40px;"
                  >
                    <p>
                      Whilst Resource Investigators are likely to want to move
                      on to the next exciting possibility, this shouldn’t be at
                      the expense of the client. It’s not acceptable for them to
                      let customers down by failing to follow up – or make
                      arrangements for someone else in the team to do so.
                    </p>
                  </b-tab>
                  <b-tab
                    title="Team Role compatibility"
                    style="text-indent: 40px;"
                  >
                    <p>
                      Resource Investigators are likely to get along with most
                      colleagues, but may work well for a Shaper manager who
                      appreciates their ability to think on their feet. As
                      managers, Resource Investigators often need a Completer
                      Finisher to follow up on the details.
                    </p>
                  </b-tab>
                  <b-tab title="How to handle">
                    <font-awesome-icon icon="thumbs-up"></font-awesome-icon>
                    <span class="mx-2">Do...</span>
                    <ul>
                      <li>
                        <p>
                          Allow them to enthuse and discuss with others when a
                          new possibility has caught their attention.
                        </p>
                      </li>
                    </ul>
                    <font-awesome-icon icon="thumbs-down"></font-awesome-icon>
                    <span class="mx-2">Don't...</span>
                    <ul>
                      <li>
                        <p>
                          Ask for too much detail about a new venture, or expect
                          them to carry out in-depth research.
                        </p>
                      </li>
                    </ul>
                  </b-tab>
                  <b-tab
                    title="Optimum working environment"
                    style="text-indent: 40px;"
                  >
                    <p>
                      Resource Investigators need to work with others – they
                      thrive on the buzz, and are likely to become bored when
                      working alone. They are often adept at working in
                      fast-paced working environments where they can act on
                      opportunities as they arise.
                    </p>
                  </b-tab>
                </b-tabs>
                <b-button
                  class="mt-3 float-right"
                  @click="$bvModal.hide('resource-investigator')"
                  >Close</b-button
                >
              </b-modal>
            </b-card>

            <b-card class="teamworker" header-tag="header" footer-tag="footer">
              <template v-slot:header>
                <h6 class="mb-0">Teamworker</h6>
              </template>
              <b-card-text>
                <p>
                  Helps the team to gel, using their versatility to identify the
                  work required and complete it on behalf of the team.
                </p>
                <p>
                  <b>Strengths:</b> Co-operative, perceptive and diplomatic.
                  Listens and averts friction.
                </p>
                <p>
                  <b>Allowable weaknesses:</b> Can be indecisive in crunch
                  situations and tends to avoid confrontation.
                </p>
                <p>
                  <b>Don't be surprised to find that:</b> They might be hesitant
                  to make unpopular decisions.
                </p>
              </b-card-text>
              <template v-slot:footer>
                <b-button
                  v-b-modal.teamworker
                  class="details-btn mx-auto"
                  variant="info"
                  size="sm"
                  >Details</b-button
                >
              </template>
              <b-modal id="teamworker" size="lg" title="Teamworker" hide-footer>
                <p class="lead">
                  <b>Objective:</b> To support others, and promote harmony and
                  unity within the team.
                </p>
                <b-tabs content-class="mt-2 text-justify" pills vertical small>
                  <b-tab title="Strengths" style="text-indent: 40px;" active>
                    <p>
                      The most supportive members of a team, Teamworkers help to
                      maintain a positive team atmosphere. They’re sensitive to
                      emotional undertones that can affect the way the team is
                      working together, and can be instrumental in resolving
                      difficulties.
                    </p>
                    <p>
                      Teamworkers are adept at responding to people and
                      situations with diplomacy and sensitivity. They have a key
                      role to play in defusing conflict, keeping things running
                      smoothly and helping all team members to contribute
                      effectively. Versatile and willing, they do whatever is
                      needed to support others.
                    </p>
                    <p>
                      As well as being good listeners and proficient at internal
                      communication, they are sympathetic and personable
                      individuals, making them popular amongst their colleagues.
                      Their influence on the team may be subtle, but when they
                      are not present, their loss is certainly felt.
                    </p>
                  </b-tab>
                  <b-tab
                    title="Potential weaknesses"
                    style="text-indent: 40px;"
                  >
                    <p>
                      Teamworkers dislike conflict – interpersonal conflict
                      especially – and will try to avoid it. This can be a
                      valuable attribute, but sometimes heated debate is
                      healthy, and necessary for the team to move forward. The
                      Teamworker may be the one best placed to defuse the
                      friction in a tense situation. Whilst they are not
                      necessarily comfortable in this environment, it’s
                      important that they do not avoid all confrontation at the
                      team’s expense, as this may mean either that important
                      discussions do not take place, or that they take place
                      without the Teamworker’s calming influence, which can lead
                      to further discord in the team.
                    </p>
                    <p>
                      Teamworkers can also be hesitant in taking important
                      decisions in crunch situations, especially if the decision
                      is difficult and likely to alienate or upset certain team
                      members. Where the Teamworker is in a position of
                      responsibility, this may undermine their authority.
                    </p>
                    <p>
                      If there are too many Teamworkers in a team, whilst the
                      team is likely to get along well, there is a risk that it
                      may coast, with important decisions delayed or avoided in
                      order to save people’s feelings.
                    </p>
                  </b-tab>
                  <b-tab
                    title="Non-negotiable weaknesses"
                    style="text-indent: 40px;"
                  >
                    <p>
                      Whilst Teamworkers seek to minimise conflict, they should
                      not avoid all situations which entail necessary pressure
                      or useful debate.
                    </p>
                  </b-tab>
                  <b-tab
                    title="Team Role compatibility"
                    style="text-indent: 40px;"
                  >
                    <p>
                      Teamworkers can work well when managed by any other role,
                      but might perhaps be most valuable to a Shaper manager who
                      needs help defusing conflicts arising. Again, Teamworkers
                      are likely to make popular managers for most other roles,
                      but may struggle to prevent a dominant Co-ordinator or
                      Shaper from taking the reins.
                    </p>
                  </b-tab>
                  <b-tab title="How to handle">
                    <font-awesome-icon icon="thumbs-up"></font-awesome-icon>
                    <span class="mx-2">Do...</span>
                    <ul>
                      <li>
                        <p>
                          Harness their supportive qualities for the team’s
                          benefit; ensure that feelings are not overlooked.
                        </p>
                      </li>
                    </ul>
                    <font-awesome-icon icon="thumbs-down"></font-awesome-icon>
                    <span class="mx-2">Don't...</span>
                    <ul>
                      <li>
                        <p>
                          Take them for granted, assume that they will agree to
                          everything or force them to make big decisions alone.
                        </p>
                      </li>
                    </ul>
                  </b-tab>
                  <b-tab
                    title="Optimum working environment"
                    style="text-indent: 40px;"
                  >
                    <p>
                      Teamworkers need to work in a positive, caring environment
                      where there is an opportunity to provide support, whether
                      to clients or colleagues.
                    </p>
                  </b-tab>
                </b-tabs>
                <b-button
                  class="mt-3 float-right"
                  @click="$bvModal.hide('teamworker')"
                  >Close</b-button
                >
              </b-modal>
            </b-card>

            <b-card class="coordinator" header-tag="header" footer-tag="footer">
              <template v-slot:header>
                <h6 class="mb-0">Co-ordinator</h6>
              </template>
              <b-card-text>
                <p>
                  Needed to focus on the team's objectives, draw out team
                  members and delegate work appropriately.
                </p>
                <p>
                  <b>Strengths:</b> Mature, confident, identifies talent.
                  Clarifies goals.
                </p>
                <p>
                  <b>Allowable weaknesses:</b> Can be seen as manipulative and
                  might offload their own share of the work.
                </p>
                <p>
                  <b>Don't be surprised to find that:</b> They might
                  over-delegate, leaving themselves little work to do.
                </p>
              </b-card-text>
              <template v-slot:footer>
                <b-button
                  v-b-modal.coordinator
                  class="details-btn mx-auto"
                  variant="info"
                  size="sm"
                  >Details</b-button
                >
              </template>
              <b-modal
                id="coordinator"
                size="lg"
                title="Co-ordinator"
                hide-footer
              >
                <p class>
                  <b>Objective:</b> To combine the team’s efforts, promote
                  consensus and manage talent.
                </p>
                <b-tabs content-class="mt-2 text-justify" pills vertical small>
                  <b-tab title="Strengths" style="text-indent: 40px;" active>
                    <p>
                      Mature, calm and confident, Co-ordinators are responsible
                      for pulling the group together towards a shared objective.
                      In a team with diverse skills and behaviours,
                      Co-ordinators are able to identify and use the talents of
                      each individual to best effect, delegating work
                      accordingly and encouraging each person to give of their
                      best for the team.
                    </p>
                    <p>
                      Co-ordinators are often adept at facilitating meetings,
                      ensuring that all important contributions are drawn out,
                      and that consensus is achieved to allow the team to move
                      forward.
                    </p>
                    <p>
                      With a blend of tact, insight and control, Co-ordinators
                      are sometimes required to play a political role, smoothing
                      over disagreements in such a way that the team will
                      benefit.
                    </p>
                  </b-tab>
                  <b-tab
                    title="Potential weaknesses"
                    style="text-indent: 40px;"
                  >
                    <p>
                      Owing to their considerable abilities to influence others,
                      at worst, Co-ordinators can create a negative atmosphere
                      through ‘office politics’. There is a difference between
                      orchestrating the best situation for the team, and
                      manipulating others for the Co-ordinator’s own benefit.
                    </p>
                    <p>
                      Proficient delegators, Co-ordinators can end up being too
                      ‘hands off’ and simply allowing others in the team to take
                      the lion’s share of the work. If they fail to pull their
                      weight in the team, this can cause resentment and
                      frustration, leaving others less likely to do their
                      bidding.
                    </p>
                    <p>
                      In order to play their role effectively, Co-ordinators
                      need to recognise and develop talent without seeking to
                      compete with others. Good Co-ordinators recognise that the
                      team’s successes reflect well on them without the need for
                      self-aggrandizement.
                    </p>
                  </b-tab>
                  <b-tab
                    title="Non-negotiable weaknesses"
                    style="text-indent: 40px;"
                  >
                    <p>
                      Whilst delegating work appropriately is an important part
                      of the role, Co-ordinators should ensure that they do
                      their part and do not take sole credit for the team’s
                      efforts.
                    </p>
                  </b-tab>
                  <b-tab
                    title="Team Role compatibility"
                    style="text-indent: 40px;"
                  >
                    <p>
                      Co-ordinators can work well for a Plant or Shaper manager
                      who is willing to give them control of organising people
                      while they focus on ideas or goals, respectively. As
                      managers, Co-ordinators can work well with any other role,
                      but may find themselves grappling with a Shaper who is
                      intent on taking charge.
                    </p>
                  </b-tab>
                  <b-tab title="How to handle">
                    <font-awesome-icon icon="thumbs-up"></font-awesome-icon>
                    <span class="mx-2">Do...</span>
                    <ul>
                      <li>
                        <p>
                          Give them the opportunity to bring out the best in
                          others.
                        </p>
                      </li>
                      <li>
                        <p>
                          Approach them to ensure that your ideas and views are
                          taken forward.
                        </p>
                      </li>
                    </ul>
                    <font-awesome-icon icon="thumbs-down"></font-awesome-icon>
                    <span class="mx-2">Don't...</span>
                    <ul>
                      <li>
                        <p>
                          Undermine them with hidden agendas or by pursuing
                          personal conflicts and vendettas.
                        </p>
                      </li>
                    </ul>
                  </b-tab>
                  <b-tab
                    title="Optimum working environment"
                    style="text-indent: 40px;"
                  >
                    <p>
                      Co-ordinators require a collaborative environment in which
                      they are given responsibility and can exercise some
                      autonomy and control. They may become detached if given
                      work requiring extensive detail or focus.
                    </p>
                  </b-tab>
                </b-tabs>
                <b-button
                  class="mt-3 float-right"
                  @click="$bvModal.hide('coordinator')"
                  >Close</b-button
                >
              </b-modal>
            </b-card>
          </b-card-group>
        </b-col>

        <b-col class="mb-5">
          <b-card-group deck>
            <b-card class="plant" header-tag="header" footer-tag="footer">
              <template v-slot:header>
                <h6 class="mb-0">Plant</h6>
              </template>
              <b-card-text>
                <p>
                  Tends to be highly creative and good at solving problems in
                  unconventional ways.
                </p>
                <p>
                  <b>Strengths:</b> Creative, imaginative, free-thinking,
                  generates ideas and solves difficult problems.
                </p>
                <p>
                  <b>Allowable weaknesses:</b> Might ignore incidentals, and may
                  be too preoccupied to communicate effectively.
                </p>
                <p>
                  <b>Don't be surprised to find that:</b> They could be
                  absent-minded or forgetful.
                </p>
              </b-card-text>
              <template v-slot:footer>
                <b-button
                  v-b-modal.plant
                  class="details-btn mx-auto"
                  variant="info"
                  size="sm"
                  >Details</b-button
                >
              </template>
              <b-modal id="plant" size="lg" title="Plant" hide-footer>
                <p class>
                  <b>Objective:</b> To act as a prime source of innovation and
                  ideas for the team.
                </p>
                <b-tabs content-class="mt-2 text-justify" pills vertical small>
                  <b-tab title="Strengths" style="text-indent: 40px;" active>
                    <p>
                      Creative and inventive individuals, Plants are the ones in
                      the team most likely to come up with new ideas and
                      suggestions. The name comes from Dr Belbin’s original
                      research. It was discovered that there was no initial
                      spark of an idea in a team unless a creative person was
                      “planted” in each team..
                    </p>
                    <p>
                      Plants can tackle complex problems in new and interesting
                      ways – they’re lateral thinkers who can provide
                      imaginative and original lines of thought when the team is
                      stuck for ideas. As a result, they need to be given the
                      space and time to think, producing ideas the team can put
                      to good use.
                    </p>
                    <p>
                      Plants are not always appreciated in very structured
                      organizations, because their way of thinking can cause
                      disruption and change the way things are done. But that’s
                      what makes them essential. It is the Plant who offers the
                      germ of an idea which can lead to success, and without
                      this, teams can stagnate.
                    </p>
                  </b-tab>
                  <b-tab
                    title="Potential weaknesses"
                    style="text-indent: 40px;"
                  >
                    <p>
                      When they’re preoccupied with whatever they’re working on,
                      they can be unaware of what is going on elsewhere in the
                      team. They’re one of the Team Roles who can seem at a
                      distance from the rest of the team, off in their own
                      little world, and may have difficulties communicating with
                      others in the team who do not see things the same way they
                      do.
                    </p>
                    <p>
                      Because of their original way of thinking, Plants’ ideas
                      may be radical and lacking practicalities. In addition,
                      they might focus on an idea that interests them, rather
                      than the one that meets the team’s requirements. This is
                      why they must depend on others in the team to evaluate
                      their ideas and put them into practice. But it isn’t
                      always plain sailing. Plants can reject criticism or take
                      offence if their chosen idea is not taken on by the rest
                      of the team.
                    </p>
                    <p>
                      Too many Plants in a team can cause problems too, because
                      each person will be more concerned with their own ideas,
                      rather than working with others to bring one idea to
                      fruition.
                    </p>
                  </b-tab>
                  <b-tab
                    title="Non-negotiable weaknesses"
                    style="text-indent: 40px;"
                  >
                    <p>
                      Whilst Plants are bound to want to take ownership of their
                      ideas, this can be taken too far. Plants shouldn’t be
                      allowed to try and take over, when collaboration with
                      others would offer better results for the team.
                    </p>
                  </b-tab>
                  <b-tab
                    title="Team Role compatibility"
                    style="text-indent: 40px;"
                  >
                    <p>
                      Plants are best managed by a Co-ordinator who can make
                      best use of their talents and help keep their ideas in
                      line with the team’s needs. As managers, Plants work well
                      when supported by a Monitor Evaluator, whom they can use
                      as a sounding board, or an Implementer, who can transform
                      their ideas into practical action.
                    </p>
                  </b-tab>
                  <b-tab title="How to handle">
                    <font-awesome-icon icon="thumbs-up"></font-awesome-icon>
                    <span class="mx-2">Do...</span>
                    <ul>
                      <li>
                        <p>Give them time and space to be creative.</p>
                      </li>
                      <li>
                        <p>
                          Listen to their ideas and encourage them to explain
                          them.
                        </p>
                      </li>
                    </ul>
                    <font-awesome-icon icon="thumbs-down"></font-awesome-icon>
                    <span class="mx-2">Don't...</span>
                    <ul>
                      <li>
                        <p>
                          Impose too many restrictions, or be overly critical
                          before they’ve had the chance to explore an idea
                          fully.
                        </p>
                      </li>
                    </ul>
                  </b-tab>
                  <b-tab
                    title="Optimum working environment"
                    style="text-indent: 40px;"
                  >
                    <p>
                      Plants need space and time to think. They can struggle
                      with bureaucracy and find very structured workplaces too
                      restrictive.
                    </p>
                  </b-tab>
                </b-tabs>
                <b-button
                  class="mt-3 float-right"
                  @click="$bvModal.hide('plant')"
                  >Close</b-button
                >
              </b-modal>
            </b-card>

            <b-card
              class="monitor-evaluator"
              header-tag="header"
              footer-tag="footer"
            >
              <template v-slot:header>
                <h6 class="mb-0">Monitor Evaluator</h6>
              </template>
              <b-card-text>
                <p>
                  Provides a logical eye, making impartial judgements where
                  required and weighs up the team's options in a dispassionate
                  way.
                </p>
                <p>
                  <b>Strengths:</b> Sober, strategic and discerning. Sees all
                  options and judges accurately.
                </p>
                <p>
                  <b>Allowable weaknesses:</b> Sometimes lacks the drive and
                  ability to inspire others and can be overly critical.
                </p>
                <p>
                  <b>Don't be surprised to find that:</b> They could be slow to
                  come to decisions.
                </p>
              </b-card-text>
              <template v-slot:footer>
                <b-button
                  v-b-modal.monitor-evaluator
                  class="details-btn mx-auto"
                  variant="info"
                  size="sm"
                  >Details</b-button
                >
              </template>
              <b-modal
                id="monitor-evaluator"
                size="lg"
                title="Monitor Evaluator"
                hide-footer
              >
                <p class="lead">
                  <b>Objective:</b> To analyse ideas and suggestions, and
                  evaluate their feasibility.
                </p>
                <b-tabs content-class="mt-2 text-justify" pills vertical small>
                  <b-tab title="Strengths" style="text-indent: 40px;" active>
                    <p>
                      Monitor Evaluators are serious-minded, prudent individuals
                      best suited to analysing problems and evaluating ideas and
                      suggestions to determine their viability, and help develop
                      them further. To this end, if they can develop a strong
                      working relationship with the team’s Plant, this is likely
                      to serve the team well.
                    </p>
                    <p>
                      Fair-minded and proficient at critical thinking, they are
                      adept at weighing up the pros and cons of a situation,
                      reaching decisions using logic, rather than being swayed
                      by enthusiasm or personal and emotional considerations.
                      Accordingly, they may keep a distance from the team in
                      meetings or other group settings, allowing them to observe
                      proceedings whilst remaining impartial.
                    </p>
                    <p>
                      Monitor Evaluators enjoy debate and are likely to pride
                      themselves on taking their time to get the big decisions
                      right. As such, they should be the arbiters of
                      decision-making within the team. The more complex the
                      decision-making process – and the more variables involved
                      – the more important this role becomes to the team’s
                      chances of success.
                    </p>
                  </b-tab>
                  <b-tab
                    title="Potential weaknesses"
                    style="text-indent: 40px;"
                  >
                    <p>
                      With an in-built immunity to enthusiasm, Monitor
                      Evaluators may be perceived as dry and boring to
                      colleagues. As a result, they often lack the ability to
                      inspire others in the team. It is the Monitor Evaluator’s
                      low sense of drive which allows impartiality, but this may
                      be perceived as lacklustre.
                    </p>
                    <p>
                      Monitor Evaluators are likely to take their time when
                      deliberating over a decision, which may be frustrating to
                      others in the team who want things to move faster. At
                      worst, they can become caught up in academic debate
                      without reaching a judgement.
                    </p>
                    <p>
                      They can also be tactless and overly critical when
                      debunking unsound ideas, which can cause friction with the
                      Plant or Resource Investigator who offers it for
                      consideration, and lower team morale. This upset may not
                      be apparent to a Monitor Evaluator who expects to see his
                      or her own detachment mirrored in others.
                    </p>
                  </b-tab>
                  <b-tab
                    title="Non-negotiable weaknesses"
                    style="text-indent: 40px;"
                  >
                    <p>
                      Whilst Monitor Evaluators may be skeptical about new
                      ideas, responding with cynicism – and without any
                      underlying logic – is unacceptable.
                    </p>
                  </b-tab>
                  <b-tab
                    title="Team Role compatibility"
                    style="text-indent: 40px;"
                  >
                    <p>
                      Monitor Evaluators are best managed by a Co-ordinator who
                      can ensure they are consulted at the relevant points They
                      manage most other roles well, with the possible exception
                      of Shapers (who are likely to become frustrated with the
                      pace of change) and fellow Monitor Evaluators, since the
                      relationship is likely to result in prolonged debate
                      without conclusion.
                    </p>
                  </b-tab>
                  <b-tab title="How to handle">
                    <font-awesome-icon icon="thumbs-up"></font-awesome-icon>
                    <span class="mx-2">Do...</span>
                    <ul>
                      <li>
                        <p>
                          Invite them to assess an idea thoroughly, express
                          their concerns and resist hasty decision-making.
                        </p>
                      </li>
                    </ul>
                    <font-awesome-icon icon="thumbs-down"></font-awesome-icon>
                    <span class="mx-2">Don't...</span>
                    <ul>
                      <li>
                        <p>
                          Attempt to influence them with optimism or emotional
                          appeals.
                        </p>
                      </li>
                      <li>
                        <p>Avoid pressuring them to make a quick judgement.</p>
                      </li>
                    </ul>
                  </b-tab>
                  <b-tab
                    title="Optimum working environment"
                    style="text-indent: 40px;"
                  >
                    <p>
                      Monitor Evaluators fare best in strategic situations where
                      success or failure depends on taking a small number of
                      crucial decisions.
                    </p>
                  </b-tab>
                </b-tabs>
                <b-button
                  class="mt-3 float-right"
                  @click="$bvModal.hide('monitor-evaluator')"
                  >Close</b-button
                >
              </b-modal>
            </b-card>

            <b-card class="specialist" header-tag="header" footer-tag="footer">
              <template v-slot:header>
                <h6 class="mb-0">Specialist</h6>
              </template>
              <b-card-text>
                <p>Brings in-depth knowledge of a key area to the team.</p>
                <p>
                  <b>Strengths:</b> Single-minded, self-starting and dedicated.
                  They provide specialist knowledge and skills.
                </p>
                <p>
                  <b>Allowable weaknesses:</b> Tends to contribute on a narrow
                  front and can dwell on the technicalities.
                </p>
                <p>
                  <b>Don't be surprised to find that:</b> They overload you with
                  information.
                </p>
              </b-card-text>
              <template v-slot:footer>
                <b-button
                  v-b-modal.specialist
                  class="details-btn mx-auto"
                  variant="info"
                  size="sm"
                  >Details</b-button
                >
              </template>
              <b-modal id="specialist" size="lg" title="Specialist" hide-footer>
                <p class="lead">
                  <b>Objective:</b> To provide in-depth knowledge on a
                  particular subject.
                </p>
                <b-tabs content-class="mt-2 text-justify" pills vertical small>
                  <b-tab title="Strengths" style="text-indent: 40px;" active>
                    <p>
                      Dedicated to a specific interest or field, Specialists
                      pride themselves on acquiring knowledge in their
                      particular subject area, and offer rare skills which are
                      often essential to the successful operation of the team.
                    </p>
                    <p>
                      Specialists love learning for its own sake, and their
                      attention is focused on honing their knowledge and
                      understanding, ensuring they are up-to-date with the
                      latest developments in their field and maintaining high
                      professional standards.
                    </p>
                    <p>
                      Specialists often enjoy talking about their subject with
                      others, particularly those who share their interests. They
                      are likely to be keen to attend training in their subject
                      area, not just because of a sense of obligation, but out
                      of love for their subject. For some Specialists, work is
                      just like a hobby, because they derive such enjoyment from
                      what they do.
                    </p>
                  </b-tab>
                  <b-tab
                    title="Potential weaknesses"
                    style="text-indent: 40px;"
                  >
                    <p>
                      Because of their narrow focus, Specialists may struggle to
                      take a broader view. Colleagues may find that they tend to
                      focus on the technicalities of a new idea, before the
                      wider issues and viability has been addressed.
                    </p>
                    <p>
                      Since they work in a particular area, Specialists may
                      become isolated from others in the team, and may gain a
                      distorted view of the team’s function or purpose, based on
                      their own interests and priorities. An effective
                      Co-ordinator can help make the most of the Specialist’s
                      unique expertise, whilst situating this within the team’s
                      wider goals.
                    </p>
                    <p>
                      Owing to the love of their subject, Specialists can find
                      it difficult to judge how much detail or explanation is
                      required. As a result, they may be over-informative when
                      explaining an issue to the team, losing others’ interest
                      and potentially causing unwelcome delay in meetings.
                    </p>
                  </b-tab>
                  <b-tab
                    title="Non-negotiable weaknesses"
                    style="text-indent: 40px;"
                  >
                    <p>
                      Whilst Specialists contribute on a narrow front, they
                      should not be permitted to ignore – or downplay the
                      importance of – all factors outside their own area of
                      expertise.
                    </p>
                  </b-tab>
                  <b-tab
                    title="Team Role compatibility"
                    style="text-indent: 40px;"
                  >
                    <p>
                      Specialists are likely to work well for a Co-ordinator who
                      can draw out – and show appreciation for – their
                      contributions or for an Implementer or Teamworker who
                      values their specific knowledge and can help build it into
                      the everyday running of the team. As managers, Specialists
                      are likely to do best when managing other Specialists,
                      since their expertise and experience is likely to be most
                      valued by those who share their interests.
                    </p>
                  </b-tab>
                  <b-tab title="How to handle">
                    <font-awesome-icon icon="thumbs-up"></font-awesome-icon>
                    <span class="mx-2">Do...</span>
                    <ul>
                      <li>
                        <p>
                          Demonstrate that you value their contribution as a
                          source of information.
                        </p>
                      </li>
                      <li>
                        <p>Involve them when undertaking research or study.</p>
                      </li>
                    </ul>
                    <font-awesome-icon icon="thumbs-down"></font-awesome-icon>
                    <span class="mx-2">Don't...</span>
                    <ul>
                      <li>
                        <p>Neglect or underestimate their area of expertise.</p>
                      </li>
                      <li>
                        <p>
                          Don’t allow them to become too isolated from the team.
                        </p>
                      </li>
                    </ul>
                  </b-tab>
                  <b-tab
                    title="Optimum working environment"
                    style="text-indent: 40px;"
                  >
                    <p>
                      Specialists may need a quiet work space which allows them
                      to focus on their subject in depth and without
                      distraction. This said, they may benefit from working
                      alongside others who share their interests and expertise.
                    </p>
                  </b-tab>
                </b-tabs>
                <b-button
                  class="mt-3 float-right"
                  @click="$bvModal.hide('specialist')"
                  >Close</b-button
                >
              </b-modal>
            </b-card>
          </b-card-group>
        </b-col>

        <b-col class="mb-5">
          <b-card-group deck>
            <b-card class="shaper" header-tag="header" footer-tag="footer">
              <template v-slot:header>
                <h6 class="mb-0">Shaper</h6>
              </template>
              <b-card-text>
                <p>
                  Provides the necessary drive to ensure that the team keeps
                  moving and does not lose focus or momentum.
                </p>
                <p>
                  <b>Strengths:</b> Challenging, dynamic, thrives on pressure.
                  Has the drive and courage to overcome obstacles.
                </p>
                <p>
                  <b>Allowable weaknesses:</b> Can be prone to provocation, and
                  may sometimes offend people's feelings.
                </p>
                <p>
                  <b>Don't be surprised to find that:</b> They could risk
                  becoming aggressive and bad-humoured in their attempts to get
                  things done.
                </p>
              </b-card-text>
              <template v-slot:footer>
                <b-button
                  v-b-modal.shaper
                  class="details-btn mx-auto"
                  variant="info"
                  size="sm"
                  >Details</b-button
                >
              </template>
              <b-modal id="shaper" size="lg" title="Shaper" hide-footer>
                <p class="lead">
                  <b>Objective:</b> To challenge and drive the team forward to
                  achieve its goals and objectives.
                </p>
                <b-tabs content-class="mt-2 text-justify" pills vertical small>
                  <b-tab title="Strengths" style="text-indent: 40px;" active>
                    <p>
                      Shapers are dynamic and highly-motivated individuals with
                      a lot of nervous energy and a great need for achievement.
                      They’re primarily interested in getting things done – as
                      quickly as possible.
                    </p>
                    <p>
                      Headstrong and assertive, Shapers enjoy competition and
                      challenges, and they’re determined to overcome obstacles
                      and win. They’re likely to come across as self-confident,
                      even if they have doubts that they don’t allow others to
                      see.
                    </p>
                    <p>
                      Shapers like to lead and push others into action. They’re
                      impatient to get things done and they don’t mind taking
                      unpopular decisions to make things happen. They thrive
                      under pressure and are well suited to managing change. As
                      the name implies, they exert a directive influence and can
                      shape group discussion or activities into objectives and
                      targets. They are good at tackling inertia and complacency
                      in teams, or intervening when a team is straying too far
                      from its original brief.
                    </p>
                  </b-tab>
                  <b-tab
                    title="Potential weaknesses"
                    style="text-indent: 40px;"
                  >
                    <p>
                      In their eagerness to get things done, Shapers can neglect
                      other people’s feelings and ruffle a few feathers. They
                      can be argumentative and are often to be found in the
                      centre of a team conflict.
                    </p>
                    <p>
                      Because they are deeply invested in the team’s success,
                      they also tend to show a strong emotional response to
                      disappointment or frustration, which may need to be
                      managed by the team.
                    </p>
                    <p>
                      Too many Shapers in a team can cause problems too, because
                      they’re likely to lock horns and end up in heated
                      arguments. To work successfully together in teams, Shapers
                      often need to demarcate their areas of authority clearly,
                      and to stick to work on parallel lines.
                    </p>
                  </b-tab>
                  <b-tab
                    title="Non-negotiable weaknesses"
                    style="text-indent: 40px;"
                  >
                    <p>
                      The Shaper’s impetus to shake things up can help
                      rejuvenate an apathetic team, but it can also result in
                      arguments. Where conflict arises, Shapers shouldn’t hold
                      grudges, but should be encouraged to recover the situation
                      with good humour or an apology.
                    </p>
                  </b-tab>
                  <b-tab
                    title="Team Role compatibility"
                    style="text-indent: 40px;"
                  >
                    <p>
                      Shapers are best managed by a Co-ordinator who can channel
                      their drive, or a Monitor Evaluator who can help them to
                      think before acting. As managers, Shapers work well when
                      supported by an Implementer (whose efficiency and task
                      focus will be appreciated) or a Teamworker, who can smooth
                      over any misunderstandings that might arise.
                    </p>
                  </b-tab>
                  <b-tab title="How to handle">
                    <font-awesome-icon icon="thumbs-up"></font-awesome-icon>
                    <span class="mx-2">Do...</span>
                    <ul>
                      <li>
                        <p>Use a factual and goal-oriented approach.</p>
                      </li>
                      <li>
                        <p>
                          Talk in terms of what can be achieved and when the
                          deadline might be.
                        </p>
                      </li>
                    </ul>
                    <font-awesome-icon icon="thumbs-down"></font-awesome-icon>
                    <span class="mx-2">Don't...</span>
                    <ul>
                      <li>
                        <p>
                          Make personal attacks in arguments, or allow yourself
                          to get off-topic in discussions.
                        </p>
                      </li>
                      <li>
                        <p>Avoid ambiguity wherever possible.</p>
                      </li>
                    </ul>
                  </b-tab>
                  <b-tab
                    title="Optimum working environment"
                    style="text-indent: 40px;"
                  >
                    <p>
                      Shapers are well suited to working in a changing,
                      fast-paced team, where there are no ambiguities of
                      leadership and they are accountable for the results they
                      produce.
                    </p>
                  </b-tab>
                </b-tabs>
                <b-button
                  class="mt-3 float-right"
                  @click="$bvModal.hide('shaper')"
                  >Close</b-button
                >
              </b-modal>
            </b-card>

            <b-card class="implementer" header-tag="header" footer-tag="footer">
              <template v-slot:header>
                <h6 class="mb-0">Implementer</h6>
              </template>
              <b-card-text>
                <p>
                  Needed to plan a workable strategy and carry it out as
                  efficiently as possible.
                </p>
                <p>
                  <b>Strengths:</b> Practical, reliable, efficient. Turns ideas
                  into actions and organises work that needs to be done.
                </p>
                <p>
                  <b>Allowable weaknesses:</b> Can be a bit inflexible and slow
                  to respond to new possibilities.
                </p>
                <p>
                  <b>Don't be surprised to find that:</b> They might be slow to
                  relinquish their plans in favour of positive changes.
                </p>
              </b-card-text>
              <template v-slot:footer>
                <b-button
                  v-b-modal.implementer
                  class="details-btn mx-auto"
                  variant="info"
                  size="sm"
                  >Details</b-button
                >
              </template>
              <b-modal
                id="implementer"
                size="lg"
                title="Implementer"
                hide-footer
              >
                <p class="lead">
                  <b>Objective:</b> To translate concepts and plans into a
                  working brief, and carry it out.
                </p>
                <b-tabs content-class="mt-2 text-justify" pills vertical small>
                  <b-tab title="Strengths" style="text-indent: 40px;" active>
                    <p>
                      Hard-working and practical, Implementers turn ideas into
                      working plans. They focus on what is feasible, and then
                      get on with the task at hand. No stranger to a spreadsheet
                      or Gantt chart, they tend to tackle work in a systematic,
                      methodical fashion that ensures maximum efficiency.
                    </p>
                    <p>
                      Implementers are reliable and disciplined members of the
                      team and are useful to an organization because of their
                      inclination and capacity to do whatever work needs to be
                      done. Where others may struggle to maintain interest in
                      routine tasks, Implementers are ideally suited to this
                      kind of work and are likely to develop a reputation for
                      getting things done on time.
                    </p>
                    <p>
                      Typically, Implementers are recognized for their loyalty
                      to the organization in which they work. In Meredith’s
                      Belbin’s original research, Implementers were referred to
                      as ‘Company Workers’.
                    </p>
                  </b-tab>
                  <b-tab
                    title="Potential weaknesses"
                    style="text-indent: 40px;"
                  >
                    <p>
                      Once plans are in place, Implementers can be reluctant to
                      entertain new suggestions, in case the disruption
                      threatens productivity and leads to inefficiency. As such,
                      they may object to changes without due consideration and
                      can be seen as rigid and inflexible.
                    </p>
                    <p>
                      They might be seen as unadventurous by other members of
                      the team, who wonder why their Implementer colleagues are
                      content to keep doing things the same way without
                      considering the greater purpose or objective in their
                      work. Implementers are most effective when they are able
                      to strike a balance between accommodating important
                      changes and maintaining productivity.
                    </p>
                    <p>
                      If there are too many Implementers in a team, there is a
                      risk that the team simply continues along its track and
                      fails to respond to stimuli which demand change and
                      threaten the status quo.
                    </p>
                  </b-tab>
                  <b-tab
                    title="Non-negotiable weaknesses"
                    style="text-indent: 40px;"
                  >
                    <p>
                      Whilst the Implementer’s drive for efficiency and
                      stability is commendable, they must not be allowed to
                      obstruct change altogether, or the team is likely to
                      become stagnant and unable to adapt to its environment.
                    </p>
                  </b-tab>
                  <b-tab
                    title="Team Role compatibility"
                    style="text-indent: 40px;"
                  >
                    <p>
                      Implementers may work well with a Shaper manager who will
                      appreciate their task focus and productivity, or equally a
                      Plant manager who will welcome their ability to translate
                      ideas into action plans. As managers, Implementers can
                      benefit from support from a Monitor Evaluator, who can
                      advise on the logistics of a plan, or a Completer
                      Finisher, who can ensure that efficiency does not come at
                      the expense of accuracy.
                    </p>
                  </b-tab>
                  <b-tab title="How to handle">
                    <font-awesome-icon icon="thumbs-up"></font-awesome-icon>
                    <span class="mx-2">Do...</span>
                    <ul>
                      <li>
                        <p>
                          Give responsibility for organizing things, and
                          delegate in a way that leaves no room for ambiguity.
                        </p>
                      </li>
                    </ul>
                    <font-awesome-icon icon="thumbs-down"></font-awesome-icon>
                    <span class="mx-2">Don't...</span>
                    <ul>
                      <li>
                        <p>
                          Use them as a sounding board for new or vague ideas,
                          or delegate in broad, conceptual terms.
                        </p>
                      </li>
                    </ul>
                  </b-tab>
                  <b-tab
                    title="Optimum working environment"
                    style="text-indent: 40px;"
                  >
                    <p>
                      Implementers like to know what to expect from their
                      working day. They need organization and structure, and a
                      role that includes routine work.
                    </p>
                  </b-tab>
                </b-tabs>
                <b-button
                  class="mt-3 float-right"
                  @click="$bvModal.hide('implementer')"
                  >Close</b-button
                >
              </b-modal>
            </b-card>

            <b-card
              class="completer-finisher"
              header-tag="header"
              footer-tag="footer"
            >
              <template v-slot:header>
                <h6 class="mb-0">Completer Finisher</h6>
              </template>
              <b-card-text>
                <p>
                  Most effectively used at the end of tasks to polish and
                  scrutinise the work for errors, subjecting it to the highest
                  standards of quality control.
                </p>
                <p>
                  <span>
                    <b class>Strengths:</b>
                  </span>
                  Painstaking, conscientious, anxious. Searches out errors.
                  Polishes and perfects.
                </p>
                <p>
                  <b>Allowable weaknesses:</b> Can be inclined to worry unduly,
                  and reluctant to delegate.
                </p>
                <p>
                  <b>Don't be surprised to find that:</b> They could be accused
                  of taking their perfectionism to extremes.
                </p>
              </b-card-text>
              <template v-slot:footer>
                <b-button
                  v-b-modal.completer-finisher
                  class="details-btn mx-auto"
                  variant="info"
                  size="sm"
                  >Details</b-button
                >
              </template>
              <b-modal
                id="completer-finisher"
                size="lg"
                title="Completer Finisher"
                hide-footer
              >
                <p class="lead">
                  <b>Objective:</b> To correct mistakes and ensure that
                  important details are not overlooked.
                </p>
                <b-tabs content-class="mt-2 text-justify" pills vertical small>
                  <b-tab title="Strengths" style="text-indent: 40px;" active>
                    <p>
                      With an eye for detail and always striving to reach the
                      highest possible standards, Completer Finishers are adept
                      at areas of work which require careful follow-through,
                      close concentration and a high degree of accuracy, such as
                      proofreading or checking figures.
                    </p>
                    <p>
                      Within the team, Completer Finishers may be relied upon as
                      “quality control”, catching mistakes – of omission or
                      commission – which might otherwise threaten to spoil the
                      end product or outcome. This can be especially important
                      for work which falls between the responsibilities of two
                      people or teams.
                    </p>
                    <p>
                      Motivated by an internal anxiety to get things right,
                      Completer Finishers need little external impetus in their
                      quest for perfection. Given their own high standards, they
                      hold themselves accountable and are unlikely to hand work
                      over to others, for fear that someone else may not bring
                      the same care and attention to the task.
                    </p>
                  </b-tab>
                  <b-tab
                    title="Potential weaknesses"
                    style="text-indent: 40px;"
                  >
                    <p>
                      Completer Finishers ‘finish’ in terms of adding polish to
                      work, rather than finishing it off. Whilst they might be
                      called in at the end of a task to apply a finish to the
                      work, they may struggle to keep to deadlines, because they
                      place more importance on getting something right than on
                      getting it done in time.
                    </p>
                    <p>
                      The anxiety that drives the Completer Finisher can also
                      work to their detriment, leading them to commit to an
                      unmanageable workload and potentially letting the team
                      down. Since the anxiety operates internally and may not be
                      expressed, the team may not be aware until the last moment
                      that a deadline is going to be missed. Equally, Completer
                      Finishers expressing excessive worries may lower team
                      morale.
                    </p>
                    <p>
                      Completer Finishers can pursue finer details to the point
                      of fussiness or “splitting hairs”. Whilst these qualities
                      might be useful at the end of a project, they are likely
                      to prove an unwelcome distraction when the team is trying
                      to determine an overall plan or direction. They might also
                      be dismissive of others in the team for what they see as a
                      more cavalier or sweeping approach.
                    </p>
                  </b-tab>
                  <b-tab
                    title="Non-negotiable weaknesses"
                    style="text-indent: 40px;"
                  >
                    <p>
                      Whilst Completer Finishers may be admired for their
                      perseverance in getting every little detail right, this
                      tendency shouldn’t be allowed to spill over into obsessive
                      behaviour.
                    </p>
                  </b-tab>
                  <b-tab
                    title="Team Role compatibility"
                    style="text-indent: 40px;"
                  >
                    <p>
                      Completer Finishers are likely to work well for Resource
                      Investigator, Shaper or Plant managers – each of whom may
                      need help with handling details. A Completer Finisher
                      manager leads by raising the standards of others in the
                      team, but may struggle to manage an expedient Resource
                      Investigator who values excitement and innovation over
                      detail.
                    </p>
                  </b-tab>
                  <b-tab title="How to handle">
                    <font-awesome-icon icon="thumbs-up"></font-awesome-icon>
                    <span class="mx-2">Do...</span>
                    <ul>
                      <li>
                        <p>Clarify priorities to help them manage workload.</p>
                      </li>
                      <li>
                        <p>
                          Allow them adequate time to complete work thoroughly
                          and carefully.
                        </p>
                      </li>
                    </ul>
                    <font-awesome-icon icon="thumbs-down"></font-awesome-icon>
                    <span class="mx-2">Don't...</span>
                    <ul>
                      <li>
                        <p>
                          Overload them with work or set unrealistic deadlines.
                        </p>
                      </li>
                      <li>
                        <p>
                          Don’t make light of their anxiety about getting things
                          right.
                        </p>
                      </li>
                    </ul>
                  </b-tab>
                  <b-tab
                    title="Optimum working environment"
                    style="text-indent: 40px;"
                  >
                    <p>
                      Completer Finishers work best in an environment conducive
                      to concentration and where they are given adequate time to
                      check things through.
                    </p>
                  </b-tab>
                </b-tabs>
                <b-button
                  class="mt-3 float-right"
                  @click="$bvModal.hide('completer-finisher')"
                  >Close</b-button
                >
              </b-modal>
            </b-card>
          </b-card-group>
        </b-col>
      </b-card>
    </b-container>
  </div>
</template>

<script>
export default {
  name: "aboutBelbin"
};
</script>

<style lang="scss" scoped>
#about-belbin {
  height: 85vh;
  overflow: auto;
  padding: 0 20px;
  p {
    text-align: justify;
  }
}

.about-belbin {
  text-indent: 40px;
}

.details-btn {
  width: 150px;
  display: block;
}

.card-footer {
  padding: 0.5rem 1.25rem;
}

.resource-investigator {
  .card-header {
    color: #fff;
    background-color: #983767;
  }
  .card-text p b {
    color: #983767;
  }
}

.teamworker {
  .card-header {
    color: #fff;
    background-color: #73a158;
  }
  .card-text p b {
    color: #73a158;
  }
}

.coordinator {
  .card-header {
    color: #fff;
    background-color: #85a1c0;
  }
  .card-text p b {
    color: #85a1c0;
  }
}

.plant {
  .card-header {
    color: #fff;
    background-color: #d6c559;
  }
  .card-text p b {
    color: #d6c559;
  }
}

.monitor-evaluator {
  .card-header {
    color: #fff;
    background-color: #9d95a5;
  }
  .card-text p b {
    color: #9d95a5;
  }
}

.specialist {
  .card-header {
    color: #fff;
    background-color: #aca989;
  }
  .card-text p b {
    color: #aca989;
  }
}

.shaper {
  .card-header {
    color: #fff;
    background-color: #aa3c2d;
  }
  .card-text p b {
    color: #aa3c2d;
  }
}

.implementer {
  .card-header {
    color: #fff;
    background-color: #435b8b;
  }
  .card-text p b {
    color: #435b8b;
  }
}

.completer-finisher {
  .card-header {
    color: #fff;
    background-color: #77422d;
  }
  .card-text p b {
    color: #77422d;
  }
}
</style>
