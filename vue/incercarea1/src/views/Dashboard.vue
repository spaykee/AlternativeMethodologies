<template>
  <div id="dashboard">
    <b-container fluid class="">
      <b-row>
        <b-col sm="7" id="users">
          <div>
            <b-card no-body>
              <b-tabs v-model="tabIndex" card>
                <b-tab active class="scrollable">
                  <template slot="title">
                    Unassigned employees
                    <b-badge pill variant="danger">{{
                      unasignedUsersItems.length
                    }}</b-badge>
                  </template>
                  <div>
                    <b-form-group label-cols-sm="6" label="" class="mt-1">
                      <b-input-group>
                        <b-input-group-append>
                          <b-form-select
                            v-model="searchKey"
                            :options="searchKeyOptions"
                          ></b-form-select>
                        </b-input-group-append>
                        <b-form-input
                          v-model="filter"
                          placeholder="Search..."
                        ></b-form-input>
                        <b-input-group-append>
                          <b-button :disabled="!filter" @click="filter = ''"
                            >Clear</b-button
                          >
                        </b-input-group-append>
                      </b-input-group>
                    </b-form-group>

                    <b-table
                      small
                      show-empty
                      stacked="md"
                      :items="unasignedUsersItems"
                      :fields="unasignedUsersFields"
                      :current-page="currentPage"
                      :per-page="perPage"
                      :filter="filter"
                      :sort-by.sync="sortBy"
                      :sort-desc.sync="sortDesc"
                      :sort-direction="sortDirection"
                      @filtered="onFiltered"
                    >
                      <template v-slot:cell(name)="row">
                        {{ row.value }}
                      </template>

                      <template v-slot:cell(position)="row">
                        {{ row.value }}
                      </template>

                      <template v-slot:cell(belbin)="row">
                        {{ row.value.name }}
                      </template>

                      <template v-slot:cell(mbti)="row">
                        {{ row.value.code }}
                      </template>

                      <template v-slot:cell(enneagram)="row">
                        {{ row.value.name }}
                      </template>

                      <template v-slot:cell(actions)="row">
                        <b-button
                          :variant="
                            row.detailsShowing ? 'info' : 'outline-info'
                          "
                          size="sm"
                          @click="row.toggleDetails"
                        >
                          <font-awesome-icon
                            icon="info-circle"
                          ></font-awesome-icon>
                        </b-button>
                        <b-button
                          v-if="!row.item.selected"
                          variant="outline-secondary"
                          size="sm"
                          @click="selectRow(row.item)"
                        >
                          <font-awesome-icon icon="circle"></font-awesome-icon>
                        </b-button>
                        <b-button
                          v-if="row.item.selected"
                          variant="success"
                          size="sm"
                          @click="selectRow(row.item)"
                        >
                          <font-awesome-icon
                            icon="check-circle"
                          ></font-awesome-icon>
                        </b-button>
                      </template>

                      <template slot="row-details" slot-scope="row">
                        <b-card>
                          <b-card-text>
                            <b-row>
                              <b-col
                                sm="6"
                                v-for="(val, key) in row.item.info"
                                :key="key"
                              >
                                <b-row>
                                  <b-col
                                    sm="6"
                                    style="font-size: 14px; font-weight: 700;"
                                    >{{ key | deCamelCase }}</b-col
                                  >
                                  <b-col sm="6">{{ val }}</b-col>
                                </b-row>
                              </b-col>
                            </b-row>
                          </b-card-text>
                        </b-card>
                      </template>
                    </b-table>
                  </div>
                </b-tab>

                <b-tab class="scrollable">
                  <template slot="title">
                    All employees
                    <b-badge pill variant="primary">{{
                      allUsersItems.length
                    }}</b-badge>
                  </template>
                  <div>
                    <b-form-group label-cols-sm="6" label="" class="mt-1">
                      <b-input-group>
                        <b-input-group-append>
                          <b-form-select
                            v-model="searchAllUsersKey"
                            :options="searchAllUsersKeyOptions"
                          ></b-form-select>
                        </b-input-group-append>
                        <b-form-input
                          v-model="allUsersFilter"
                          placeholder="Search..."
                        ></b-form-input>
                        <b-input-group-append>
                          <b-button
                            :disabled="!allUsersFilter"
                            @click="allUsersFilter = ''"
                            >Clear</b-button
                          >
                        </b-input-group-append>
                      </b-input-group>
                    </b-form-group>

                    <b-table
                      small
                      show-empty
                      stacked="md"
                      :items="allUsersItems"
                      :fields="allUsersFields"
                      :current-page="currentAllUsersPage"
                      :per-page="perAllUsersPage"
                      :filter="allUsersFilter"
                      :sort-by.sync="allUsersSortBy"
                      :sort-desc.sync="allUsersSortDesc"
                      :sort-direction="allUsersSortDirection"
                      @filtered="onAllUsersFiltered"
                    >
                      <template v-slot:cell(name)="row">
                        {{ row.value }}
                      </template>

                      <template v-slot:cell(position)="row">
                        {{ row.value }}
                      </template>

                      <template v-slot:cell(assigned)="row">
                        <font-awesome-icon
                          class="success"
                          v-if="row.value"
                          icon="check"
                        ></font-awesome-icon>
                        <font-awesome-icon
                          class="danger"
                          v-if="!row.value"
                          icon="minus"
                        ></font-awesome-icon>
                      </template>

                      <template v-slot:cell(actions)="row">
                        <b-button
                          :variant="
                            row.detailsShowing ? 'info' : 'outline-info'
                          "
                          size="sm"
                          @click="row.toggleDetails"
                        >
                          <font-awesome-icon
                            icon="info-circle"
                          ></font-awesome-icon>
                        </b-button>
                        <b-button
                          variant="outline-danger"
                          size="sm"
                          @click="removeUser(row.item)"
                        >
                          <font-awesome-icon icon="minus"></font-awesome-icon>
                        </b-button>
                        <!-- <b-button v-if="row.item.teamName !== ''" variant="outline-info" size="sm" @click="showTeam(row.item.teamName)">
                                                <font-awesome-icon icon="sign-in-alt"></font-awesome-icon>
                                            </b-button> -->
                      </template>

                      <template slot="row-details" slot-scope="row">
                        <b-card>
                          <b-card-text>
                            <b-row>
                              <b-col
                                sm="6"
                                v-for="(val, key) in row.item.info"
                                :key="key"
                              >
                                <b-row>
                                  <b-col
                                    sm="6"
                                    style="font-size: 14px; font-weight: 700;"
                                    >{{ key | deCamelCase }}</b-col
                                  >
                                  <b-col sm="6">{{ val }}</b-col>
                                </b-row>
                              </b-col>
                            </b-row>
                          </b-card-text>
                        </b-card>
                      </template>
                    </b-table>
                  </div>
                </b-tab>

                <b-tab class="scrollable">
                  <template slot="title">
                    Assigned employees
                    <b-badge pill variant="success">{{
                      assignedUsersItems.length
                    }}</b-badge>
                  </template>
                  <div>
                    <b-form-group label-cols-sm="6" label="" class="mt-1">
                      <b-input-group>
                        <b-input-group-append>
                          <b-form-select
                            v-model="searchAssignedKey"
                            :options="searchAssignedKeyOptions"
                          ></b-form-select>
                        </b-input-group-append>
                        <b-form-input
                          v-model="assignedFilter"
                          placeholder="Search..."
                        ></b-form-input>
                        <b-input-group-append>
                          <b-button
                            :disabled="!assignedFilter"
                            @click="assignedFilter = ''"
                            >Clear</b-button
                          >
                        </b-input-group-append>
                      </b-input-group>
                    </b-form-group>

                    <b-table
                      small
                      show-empty
                      stacked="md"
                      :items="assignedUsersItems"
                      :fields="assignedUsersFields"
                      :current-page="currentAssignedPage"
                      :per-page="perAssignedPage"
                      :filter="assignedFilter"
                      :sort-by.sync="assignedSortBy"
                      :sort-desc.sync="assignedSortDesc"
                      :sort-direction="assignedSortDirection"
                      @filtered="onAssignedFiltered"
                    >
                      <template v-slot:cell(name)="row">
                        {{ row.value }}
                      </template>

                      <template v-slot:cell(position)="row">
                        {{ row.value }}
                      </template>

                      <template v-slot:cell(teamName)="row">
                        <b-link @click="showTeam(row.value)">{{
                          row.value
                        }}</b-link>
                      </template>

                      <template v-slot:cell(actions)="row">
                        <b-button
                          :variant="
                            row.detailsShowing ? 'info' : 'outline-info'
                          "
                          size="sm"
                          @click="row.toggleDetails"
                        >
                          <font-awesome-icon
                            icon="info-circle"
                          ></font-awesome-icon>
                        </b-button>
                        <b-button
                          variant="outline-danger"
                          size="sm"
                          @click="removeUserFormTeam(row.item)"
                        >
                          <font-awesome-icon
                            icon="sign-out-alt"
                          ></font-awesome-icon>
                        </b-button>
                      </template>

                      <template slot="row-details" slot-scope="row">
                        <b-card>
                          <b-card-text>
                            <b-row>
                              <b-col
                                sm="6"
                                v-for="(val, key) in row.item.info"
                                :key="key"
                              >
                                <b-row>
                                  <b-col
                                    sm="6"
                                    style="font-size: 14px; font-weight: 700;"
                                    >{{ key | deCamelCase }}</b-col
                                  >
                                  <b-col sm="6">{{ val }}</b-col>
                                </b-row>
                              </b-col>
                            </b-row>
                          </b-card-text>
                        </b-card>
                      </template>
                    </b-table>
                  </div>
                </b-tab>
              </b-tabs>
              <div slot="footer">
                <b-row v-if="tabIndex === 0">
                  <b-col md="4" class="my-1">
                    <b-form-group
                      label-cols-sm="7"
                      label="Records / page"
                      class="mb-0"
                    >
                      <b-form-select
                        v-model="perPage"
                        :options="pageOptions"
                      ></b-form-select>
                    </b-form-group>
                  </b-col>
                  <b-col md="8" class="my-1">
                    <b-pagination
                      v-model="currentPage"
                      :total-rows="totalRows"
                      :per-page="perPage"
                      class="my-0"
                      align="right"
                    ></b-pagination>
                  </b-col>
                </b-row>

                <b-row v-if="tabIndex === 1">
                  <b-col md="4" class="my-1">
                    <b-form-group
                      label-cols-sm="7"
                      label="Records / page"
                      class="mb-0"
                    >
                      <b-form-select
                        v-model="perAllUsersPage"
                        :options="pageOptions"
                      ></b-form-select>
                    </b-form-group>
                  </b-col>
                  <b-col md="8" class="my-1">
                    <b-pagination
                      v-model="currentAllUsersPage"
                      :total-rows="totalAllUsersRows"
                      :per-page="perAllUsersPage"
                      class="my-0"
                      align="right"
                    ></b-pagination>
                  </b-col>
                </b-row>

                <b-row v-if="tabIndex === 2">
                  <b-col md="4" class="my-1">
                    <b-form-group
                      label-cols-sm="7"
                      label="Records / page"
                      class="mb-0"
                    >
                      <b-form-select
                        v-model="perAssignedPage"
                        :options="pageOptions"
                      ></b-form-select>
                    </b-form-group>
                  </b-col>
                  <b-col md="8" class="my-1">
                    <b-pagination
                      v-model="currentAssignedPage"
                      :total-rows="totalAssignedRows"
                      :per-page="perAssignedPage"
                      class="my-0"
                      align="right"
                    ></b-pagination>
                  </b-col>
                </b-row>
              </div>
            </b-card>
          </div>
        </b-col>
        <b-col sm="5" id="team">
          <div>
            <b-card no-body>
              <b-tabs card>
                <b-tab title="Create a team" class="scrollable">
                  <div>
                    <b-form-group
                      label-cols-sm="6"
                      label="Team title"
                      class="mt-1"
                    >
                      <b-input-group>
                        <b-form-input v-model="newTeamName"></b-form-input>
                        <b-input-group-append>
                          <b-button
                            variant="primary"
                            :disabled="!newTeamName"
                            @click="submitNewTeam"
                            >Create</b-button
                          >
                        </b-input-group-append>
                      </b-input-group>
                    </b-form-group>
                  </div>
                </b-tab>

                <!-- echipa formata! -->

                <b-tab title="All teams" active class="scrollable">
                  <div>
                    <b-form-group
                      label-cols-sm="6"
                      label="Team title"
                      class="mt-1"
                    >
                      <b-input-group>
                        <b-form-input
                          :disabled="true"
                          v-model="teamTitle"
                        ></b-form-input>
                      </b-input-group>
                    </b-form-group>

                    <b-table
                      small
                      show-empty
                      stacked="md"
                      :items="teamUsersItems"
                      :fields="teamdUsersFields"
                      v-if="selectedTeam !== ''"
                    >
                      <template v-slot:cell(name)="row">
                        {{ row.value }}
                      </template>

                      <template v-slot:cell(position)="row">
                        {{ row.value }}
                      </template>

                      <template v-slot:cell(actions)="row">
                        <b-button
                          :variant="
                            row.detailsShowing ? 'info' : 'outline-info'
                          "
                          size="sm"
                          @click="row.toggleDetails"
                        >
                          <font-awesome-icon
                            icon="info-circle"
                          ></font-awesome-icon>
                        </b-button>
                        <b-button
                          variant="outline-danger"
                          size="sm"
                          @click="removeUserFormTeam(row.item)"
                        >
                          <font-awesome-icon
                            icon="sign-out-alt"
                          ></font-awesome-icon>
                        </b-button>
                      </template>

                      <template slot="row-details" slot-scope="row">
                        <b-card>
                          <b-card-text>
                            <b-row>
                              <b-col
                                sm="6"
                                v-for="(val, key) in row.item.info"
                                :key="key"
                              >
                                <b-row>
                                  <b-col
                                    sm="6"
                                    style="font-size: 14px; font-weight: 700;"
                                    >{{ key | deCamelCase }}</b-col
                                  >
                                  <b-col sm="6">{{ val }}</b-col>
                                </b-row>
                              </b-col>
                            </b-row>
                          </b-card-text>
                        </b-card>
                      </template>
                    </b-table>
                  </div>
                </b-tab>
              </b-tabs>
              <div slot="footer">
                <b-row>
                  <b-col md="2" class="my-1">
                    <b-button
                      variant="success"
                      :disabled="teamTitle === ''"
                      @click="addUserToTeam"
                      ><font-awesome-icon icon="sign-in-alt"></font-awesome-icon
                    ></b-button>
                  </b-col>
                  <b-col md="5" class="my-1">
                    <b-form-group
                      label-cols-sm="6"
                      label="Select a team"
                      class="my-0"
                    >
                      <b-form-input
                        list="input-list"
                        v-model="selectedTeam"
                        @change="selectTeam"
                        placeholder="Search..."
                        id="input-with-list"
                      ></b-form-input>
                      <b-form-datalist
                        id="input-list"
                        :options="allTeams"
                      ></b-form-datalist>
                    </b-form-group>
                  </b-col>
                  <b-col md="5" class="my-1">
                    <b-row>
                      <b-col md="6" class="">
                        <b-form-input
                          min="0"
                          v-model="teamMembersCount"
                          type="number"
                        ></b-form-input>
                      </b-col>
                      <b-col md="6" class="">
                        <b-button
                          :disabled="
                            teamTitle === '' ||
                              parseInt(teamMembersCount) === 0 ||
                              unasignedUsersItems.length <
                                parseInt(teamMembersCount)
                          "
                          @click="autoTeamGenerator"
                          variant="warning"
                          ><font-awesome-icon icon="cogs"></font-awesome-icon>
                          Auto</b-button
                        >
                      </b-col>
                    </b-row>
                  </b-col>
                </b-row>
              </div>
            </b-card>
          </div>
        </b-col>
      </b-row>
    </b-container>
  </div>
</template>

<script>
import { mapGetters } from "vuex";
import { mapActions } from "vuex";

export default {
  name: "dashboard",
  data() {
    return {
      searchText: "",
      searchUnassignedText: "",
      searchAssignedText: "",
      searchAllUsersText: "",

      searchKey: "All",
      searchUnassignedKey: "All",
      searchAssignedKey: "All",
      searchAllUsersKey: "All",

      searchKeyOptions: [
        "All",
        "Name",
        "Position",
        "Belbin",
        "MBTI",
        "Enneagram"
      ],
      searchUnassignedKeyOptions: [
        "All",
        "Name",
        "Position",
        "Belbin",
        "MBTI",
        "Enneagram"
      ],
      searchAssignedKeyOptions: ["All", "Name", "Position", "Assigned"],
      searchAllUsersKeyOptions: ["All", "Name", "Position", "Team Name"],

      totalRows: 1,
      totalAssignedRows: 1,
      totalUnassignedRows: 1,
      totalAllUsersRows: 1,

      currentPage: 1,
      currentUnassignedPage: 1,
      currentAssignedPage: 1,
      currentAllUsersPage: 1,

      perPage: 7,
      perUnassignedPage: 7,
      perAssignedPage: 7,
      perAllUsersPage: 7,
      pageOptions: [5, , 7, 10, 15],

      filter: null,
      sortBy: null,
      sortDesc: false,
      sortDirection: "asc",

      assignedFilter: null,
      assignedSortBy: null,
      assignedSortDesc: false,
      assignedSortDirection: "asc",

      allUsersFilter: null,
      allUsersSortBy: null,
      allUsersSortDesc: false,
      allUsersSortDirection: "asc",

      unasignedUsers: [],
      unasignedUsersItems: [],
      unasignedUsersFields: [
        {
          key: "name",
          label: "Employee full name",
          sortable: true,
          sortDirection: "asc",
          class: "text-center"
        },
        {
          key: "position",
          label: "Position",
          sortable: true,
          sortDirection: "asc",
          class: "text-center"
        },
        {
          key: "belbin",
          label: "Belbin",
          sortable: true,
          sortDirection: "asc",
          class: "text-center"
        },
        {
          key: "mbti",
          label: "MBTI",
          sortable: true,
          sortDirection: "asc",
          class: "text-center"
        },
        {
          key: "enneagram",
          label: "Enneagram",
          sortable: true,
          sortDirection: "asc",
          class: "text-center"
        },
        { key: "actions", label: "Actions", class: "text-center" }
      ],

      newTeamName: "",
      allTeams: [],
      selectedTeam: "",
      teamTitle: "",

      tabIndex: 1,

      teamMembersCount: 0,

      teamUsersItems: [],
      teamdUsersFields: [
        {
          key: "name",
          label: "Employee full name",
          sortable: true,
          sortDirection: "asc",
          class: "text-center"
        },
        {
          key: "position",
          label: "Position",
          sortable: true,
          sortDirection: "asc",
          class: "text-center"
        },
        { key: "actions", label: "Actions", class: "text-center" }
      ],

      allUsersItems: [],
      allUsersFields: [
        {
          key: "name",
          label: "Employee full name",
          sortable: true,
          sortDirection: "asc",
          class: "text-center"
        },
        {
          key: "position",
          label: "Position",
          sortable: true,
          sortDirection: "asc",
          class: "text-center"
        },
        {
          key: "assigned",
          label: "Assigned",
          sortable: true,
          sortDirection: "asc",
          class: "text-center"
        },
        { key: "actions", label: "Actions", class: "text-center" }
      ],

      assignedUsersItems: [],
      assignedUsersFields: [
        {
          key: "name",
          label: "Employee full name",
          sortable: true,
          sortDirection: "asc",
          class: "text-center"
        },
        {
          key: "position",
          label: "Position",
          sortable: true,
          sortDirection: "asc",
          class: "text-center"
        },
        {
          key: "teamName",
          label: "Team Name",
          sortable: true,
          sortDirection: "asc",
          class: "text-center"
        },
        { key: "actions", label: "Actions", class: "text-center" }
      ]
    };
  },
  methods: {
    ...mapActions(["setNewTeam", "updateUser"]),

    selectTeam() {
      this.teamTitle = this.selectedTeam;

      this.getTeamUsers();
    },
    onFiltered(filteredItems) {
      this.totalRows = filteredItems.length;
      this.currentPage = 1;
    },
    onAssignedFiltered(filteredItems) {
      this.totalAssignedRows = filteredItems.length;
      this.currentAssignedPage = 1;
    },
    onAllUsersFiltered(filteredItems) {
      this.totalAllUsersRows = filteredItems.length;
      this.currentAllUsersPage = 1;
    },
    selectRow(item) {
      this.unasignedUsersItems.filter(
        i => i.key === item.key
      )[0].selected = !this.unasignedUsersItems.filter(
        i => i.key === item.key
      )[0].selected;
    },

    submitNewTeam() {
      this.setNewTeam(this.newTeamName);

      this.$bvToast.toast("New team created successfully!", {
        title: "SUCCESS!",
        variant: "success",
        solid: true
      });

      this.setTeams();
      this.newTeamName = "";
    },

    setTablesData(users, tableToPush) {
      let key = 0;
      users.forEach(u => {
        let item = {};
        let dataset = this.getAllUserDatasets.filter(
          ds => ds.userId === u.id
        )[0];

        let belbinFirstRole =
          dataset.belbin_first_role !== null
            ? this.getAllBelbins.filter(
                x => x.id === dataset.belbin_first_role
              )[0]
            : null;
        let belbinSecondRole =
          dataset.belbin_second_role !== null
            ? this.getAllBelbins.filter(
                x => x.id === dataset.belbin_second_role
              )[0]
            : null;

        let mbti =
          dataset.MBTI_role !== null
            ? this.getAllMbtis.filter(x => x.code === dataset.MBTI_role)[0]
            : null;

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

        let zodiac =
          dataset.zodiac_id !== null
            ? this.getAllZodiacs.filter(x => x.id === dataset.zodiac_id)[0]
            : null;

        let numerology =
          dataset.numerology !== null
            ? this.getAllNumerologys.filter(x => x.id === dataset.numerology)[0]
            : null;

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

        var date = u.birthDate.split("/");
        var ageDifMs = Date.now() - new Date(date[2], date[1], date[0]);
        var ageDate = new Date(ageDifMs);
        let returnedDate = Math.abs(ageDate.getUTCFullYear() - 1970);

        item.assigned = u.assigned;
        item.teamName = u.teamName;
        item.key = key;
        item.id = u.id;
        item.name = u.firstName + " " + u.lastName;
        item.position = u.position;
        item.belbin = belbinFirstRole;
        item.mbti = mbti;
        item.enneagram = enneagramFirstRole;
        item.selected = false;
        item.info = {
          age: returnedDate,
          belbinFirstRole: belbinFirstRole.name,
          belbinSecondRole: belbinSecondRole.name,
          mbti: mbti.code,
          enneagramFirstRole: enneagramFirstRole.name,
          enneagramSecondRole: enneagramSecondRole.name,
          enneagramThirddRole: enneagramThirddRole.name,
          zodiac: zodiac.zodiac,
          zodiacAsc: zodiacAsc.zodiac,
          numerology: numerology.day_of_month
        };

        key++;
        tableToPush.push(item);
      });
    },

    getAssignedUsers() {
      let employerUsers = this.getAllUsers.filter(
        us => us.employerCode === this.getLoginUser.code
      );

      const users = employerUsers.filter(eu => eu.assigned);

      this.setTablesData(users, this.assignedUsersItems);

      this.totalAssignedRows = this.assignedUsersItems.length;
    },

    getUnsignedUsersData() {
      let employerUsers = this.getAllUsers.filter(
        us => us.employerCode === this.getLoginUser.code
      );

      this.unasignedUsers = employerUsers.filter(eu => !eu.assigned);

      this.setTablesData(this.unasignedUsers, this.unasignedUsersItems);

      this.totalRows = this.unasignedUsersItems.length;
    },

    getTeamUsers() {
      let employerUsers = this.getAllUsers.filter(
        us => us.employerCode === this.getLoginUser.code
      );

      let teamUsers = employerUsers.filter(
        eu => eu.teamName === this.teamTitle
      );

      this.teamUsersItems = [];
      this.setTablesData(teamUsers, this.teamUsersItems);
    },

    getAllUsersData() {
      let employerUsers = this.getAllUsers.filter(
        us => us.employerCode === this.getLoginUser.code
      );

      this.setTablesData(employerUsers, this.allUsersItems);

      this.totalAllUsersRows = this.allUsersItems.length;
    },

    setTeams() {
      this.allTeams = [];
      this.getTeams.forEach(element => {
        this.allTeams.push(element.name);
      });
    },

    addUserToTeam() {
      let newUsers = this.unasignedUsersItems.filter(i => i.selected);

      newUsers.forEach(nu => {
        let toUpdateUser = this.getAllUsers.filter(u => u.id === nu.id)[0];

        toUpdateUser.teamName = this.teamTitle;
        toUpdateUser.assigned = true;

        this.updateUser(toUpdateUser);
      });

      this.unasignedUsersItems = [];
      this.assignedUsersItems = [];
      this.allUsersItems = [];
      this.getUnsignedUsersData();
      this.getTeamUsers();
      this.getAssignedUsers();
      this.getAllUsersData();
    },

    removeUserFormTeam(item) {
      this.$bvModal
        .msgBoxConfirm(
          "Please confirm that you want to remove this user from this team?",
          {
            title: "Please Confirm!",
            buttonSize: "sm",
            okVariant: "danger",
            okTitle: "YES",
            cancelTitle: "NO",
            footerClass: "p-2",
            hideHeaderClose: false,
            centered: true
          }
        )
        .then(value => {
          if (value) {
            let toUpdateUser = this.getAllUsers.filter(
              u => u.id === item.id
            )[0];

            toUpdateUser.teamName = "";
            toUpdateUser.assigned = false;

            this.updateUser(toUpdateUser);

            this.unasignedUsersItems = [];
            this.teamUsersItems = [];
            this.allUsersItems = [];
            this.assignedUsersItems = [];
            this.getUnsignedUsersData();
            this.getTeamUsers();
            this.getAssignedUsers();
            this.getAllUsersData();
          }
        })
        .catch(err => {
          // An error occurred
        });
    },

    showTeam(teamName) {
      this.selectedTeam = teamName;
      this.teamTitle = this.selectedTeam;

      this.getTeamUsers();
    },

    removeUser(item) {
      this.$bvModal
        .msgBoxConfirm(
          "Please confirm that you want to remove this user from your emplyment?",
          {
            title: "Please Confirm!",
            buttonSize: "sm",
            okVariant: "danger",
            okTitle: "YES",
            cancelTitle: "NO",
            footerClass: "p-2",
            hideHeaderClose: false,
            centered: true
          }
        )
        .then(value => {
          if (value) {
            let toUpdateUser = this.getAllUsers.filter(
              u => u.id === item.id
            )[0];

            toUpdateUser.teamName = "";
            toUpdateUser.assigned = false;
            toUpdateUser.employerCode = 0;

            this.updateUser(toUpdateUser);

            this.unasignedUsersItems = [];
            this.teamUsersItems = [];
            this.allUsersItems = [];
            this.assignedUsersItems = [];
            this.getUnsignedUsersData();
            this.getTeamUsers();
            this.getAssignedUsers();
            this.getAllUsersData();
          }
        })
        .catch(err => {
          // An error occurred
        });
    },

    autoTeamGenerator() {
      let users = this.unasignedUsersItems;
      const count = this.teamMembersCount;

      // functia de permutari
      function cartesian(arg) {
        let r = [];
        let max = arg.length - 1;
        function helper(arr, i) {
          for (var j = 0, l = arg[i].length; j < l; j++) {
            var a = arr.slice(0);
            a.push(arg[i][j]);
            if (i == max) {
              let checkDuplicates = new Set(a).size !== a.length;
              if (!checkDuplicates) {
                r.push(a);
              }
            } else helper(a, i + 1);
          }
        }
        helper([], 0);
        return r;
      }

      // functia de combinari
      function k_combinations(set, k) {
        var i, j, combs, head, tailcombs;
        if (k > set.length || k <= 0) {
          return [];
        }
        if (k == set.length) {
          return [set];
        }
        if (k == 1) {
          combs = [];
          for (i = 0; i < set.length; i++) {
            combs.push([set[i]]);
          }
          return combs;
        }
        combs = [];
        for (i = 0; i < set.length - k + 1; i++) {
          head = set.slice(i, i + 1);
          tailcombs = k_combinations(set.slice(i + 1), k - 1);
          for (j = 0; j < tailcombs.length; j++) {
            combs.push(head.concat(tailcombs[j]));
          }
        }
        return combs;
      }

      let possibleTeams = [];

      // algoritm de selectie dupa belbin a nr de membrii doriti
      let actionOrientedUsers = [];
      let pplOrientedUsers = [];
      let thoughtOrientedUsers = [];

      users.forEach(u => {
        if (u.belbin.group === "Thought Oriented Role") {
          thoughtOrientedUsers.push(u);
        }

        if (u.belbin.group === "People Oriented Role") {
          pplOrientedUsers.push(u);
        }

        if (u.belbin.group === "Action Oriented Role") {
          actionOrientedUsers.push(u);
        }
      });

      let args = [];

      let belbGroup = [
        pplOrientedUsers,
        actionOrientedUsers,
        thoughtOrientedUsers
      ];

      belbGroup.sort(function(a, b) {
        return b.length - a.length;
      });

      console.log("belbGroup");
      console.log(belbGroup);

      for (let i = 0; i < count; i++) {
        let j = i % 3;
        args.push(belbGroup[j]);
      }

      console.log("args");
      console.log(args);

      possibleTeams = cartesian(args);

      console.log("possibleTeams");
      console.log(possibleTeams);

      // end - algoritm de selectie dupa belbin a nr de membrii doriti

      // algortim pt MBTI si ENNEAGRAM ai membrilor selectati dupa belbin
      let mbticompObj = this.getMbtiCompatibility;
      let enneagramcompObj = this.getEnneagramCompatibility;
      let newPossibleTeams = [];

      possibleTeams.forEach(group => {
        let mbtiGroupScore = 0;
        let enneagramGroupScore = 0;

        let comb = k_combinations(group, 2);

        comb.forEach(c => {
          mbtiGroupScore += parseInt(
            mbticompObj.matrix[mbticompObj.x.indexOf(c[0].mbti.code)][
              mbticompObj.x.indexOf(c[1].mbti.code)
            ]
          );
          enneagramGroupScore += parseInt(
            enneagramcompObj[parseInt(c[0].enneagram.id) - 1][
              parseInt(c[1].enneagram.id) - 1
            ]
          );
        });

        let newGroup = {
          users: group,
          mbtiScore: mbtiGroupScore,
          enneagramScore: enneagramGroupScore / 2,
          totalScore: mbtiGroupScore + enneagramGroupScore / 2
        };

        newPossibleTeams.push(newGroup);
      });
      // end - algortim pt MBTI si ENNEAGRAM ai membrilor selectati dupa belbin

      newPossibleTeams.sort(function(a, b) {
        return b.totalScore - a.totalScore;
      });

      console.log("newPossibleTeams");
      console.log(newPossibleTeams);

      let newUsers = newPossibleTeams[0].users;

      newUsers.forEach(nu => {
        let toUpdateUser = this.getAllUsers.filter(u => u.id === nu.id)[0];

        toUpdateUser.teamName = this.teamTitle;
        toUpdateUser.assigned = true;

        this.updateUser(toUpdateUser);
      });

      this.unasignedUsersItems = [];
      this.assignedUsersItems = [];
      this.allUsersItems = [];
      this.getUnsignedUsersData();
      this.getTeamUsers();
      this.getAssignedUsers();
      this.getAllUsersData();
    }
  },
  computed: {
    ...mapGetters([
      "getEnneagramCompatibility",
      "getMbtiCompatibility",
      "getLoginUser",
      "getTeams",
      "getAllUsers",
      "getAllUserDatasets",
      "getAllZodiacs",
      "getAllZodiacAscendants",
      "getAllEnneagrams",
      "getAllMbtis",
      "getAllBelbins",
      "getAllNumerologys"
    ]),
    sortOptions() {
      // Create an options list from our field
      return this.fields
        .filter(f => f.sortable)
        .map(f => {
          return { text: f.label, value: f.key };
        });
    }
  },
  mounted() {
    this.getUnsignedUsersData();
    this.setTeams();
    this.getAssignedUsers();
    this.getAllUsersData();
  },
  filters: {
    deCamelCase: function(value) {
      return value.replace(/[A-Z]/g, " $&");
    }
  }
};
</script>

<style lang="scss" scoped>
#dashboard {
  height: 85vh;
  overflow: auto;
}

.success {
  color: #28a745;
}

.danger {
  color: #dc3545;
}

.scrollable {
  height: 66vh;
  overflow-y: auto;
  overflow-x: hidden;
}

.rotated {
  -ms-transform: skewY(180deg); /* IE 9 */
  -webkit-transform: skewY(180deg); /* Safari 3-8 */
  transform: skewY(180deg);
}

.table td,
.table th {
  padding: 0.4rem;
  vertical-align: top;
  border-top: 1px solid #dee2e6;
}
</style>
