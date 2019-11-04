<template>
  <div id="dashboardemployee">
    <b-container class="">       
        <b-card no-body>
            <b-tabs  v-model="tabIndex" card>
                <b-tab active class="scrollable">
                    <template slot="title">
                        {{title}} 
                        <!-- <b-badge pill variant="danger">{{unasignedUsersItems.length}}</b-badge> -->
                    </template>
                    <div >
                        <b-form-group label-cols-sm="6" label="" class="mt-1">
                            <b-input-group>
                                <b-input-group-append>
                                    <b-form-select v-model="searchKey" :options="searchKeyOptions"></b-form-select>
                                </b-input-group-append>
                                <b-form-input v-model="filter" placeholder="Search..."></b-form-input>
                                <b-input-group-append>
                                    <b-button :disabled="!filter" @click="filter = ''">Clear</b-button>
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
                                <b-button :variant=" row.detailsShowing ? 'info' : 'outline-info'" size="sm" @click="row.toggleDetails">
                                    <font-awesome-icon icon="info-circle"></font-awesome-icon>
                                </b-button>
                            </template>

                            <template slot="row-details" slot-scope="row">
                                <b-card>
                                    <b-card-text>
                                        <b-row>
                                            <b-col sm="6" v-for="(val, key) in row.item.info" :key="key">                                                        
                                                <b-row> 
                                                    <b-col sm="6" style="font-size: 14px; font-weight: 700;">{{ key | deCamelCase}}</b-col>
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
        </b-card>                
    </b-container>       
  </div>
</template>

<script>

import { mapGetters } from 'vuex';
import { mapActions } from 'vuex';

export default {
    name: "dashboardemployee",
    data() {
        return {
            searchText: "",
            searchUnassignedText: "",
            searchAssignedText: "",
            searchAllUsersText: "",

            searchKey: "All",
            searchUnassignedKey: "All",

            searchKeyOptions: ["All", "Name", "Position", "Belbin", "MBTI", "Enneagram"],  
            searchUnassignedKeyOptions: ["All", "Name", "Position", "Belbin", "MBTI", "Enneagram"],

            totalRows: 1,
            totalUnassignedRows: 1,

            currentPage: 1,
            currentUnassignedPage: 1,

            perPage: 7,
            perUnassignedPage: 7,
            pageOptions: [5, ,7, 10, 15],        

            filter: null,      
            sortBy: null,
            sortDesc: false,
            sortDirection: 'asc',           
            
            unasignedUsers: [],
            unasignedUsersItems: [],
            unasignedUsersFields: [
                { key: 'name', label: 'Employee full name', sortable: true, sortDirection: 'asc', class: 'text-center' },
                { key: 'position', label: 'Position', sortable: true, sortDirection: 'asc', class: 'text-center' },
                { key: 'belbin', label: 'Belbin', sortable: true, sortDirection: 'asc', class: 'text-center' },
                { key: 'mbti', label: 'MBTI', sortable: true, sortDirection: 'asc', class: 'text-center' },
                { key: 'enneagram', label: 'Enneagram', sortable: true, sortDirection: 'asc', class: 'text-center' },
                { key: 'actions', label: 'Actions', class: 'text-center' }
            ],           

            title: "This will display your team name",

            tabIndex: 1,            
        }
    },
    methods: {
        ...mapActions(["setNewTeam", "updateUser"]),

        onFiltered(filteredItems) {
            this.totalRows = filteredItems.length
            this.currentPage = 1
        },

        setTablesData(users, tableToPush) {
            let key = 0;
            users.forEach(u => {
                let item = {};

                // console.log(this.getAllUserDatasets);

                let dataset = this.getAllUserDatasets.filter(ds => ds.userId === u.id)[0];
        
                let belbinFirstRole = dataset.belbin_first_role !== null ? this.getAllBelbins.filter(x => x.id === dataset.belbin_first_role)[0] : null;
                let belbinSecondRole = dataset.belbin_second_role !== null ? this.getAllBelbins.filter(x => x.id === dataset.belbin_second_role)[0] : null;

                let mbti = dataset.MBTI_role !== null ? this.getAllMbtis.filter(x => x.code === dataset.MBTI_role)[0] : null;

                let enneagramFirstRole = dataset.eneagram_first_role !== null ? this.getAllEnneagrams.filter(x => x.id === dataset.eneagram_first_role)[0] : null;
                let enneagramSecondRole = dataset.eneagram_second_role !== null ? this.getAllEnneagrams.filter(x => x.id === dataset.eneagram_second_role)[0] : null;
                let enneagramThirddRole = dataset.eneagram_third_role !== null ? this.getAllEnneagrams.filter(x => x.id === dataset.eneagram_third_role)[0] : null;

                let zodiac = dataset.zodiac_id !== null ? this.getAllZodiacs.filter(x => x.id === dataset.zodiac_id)[0] : null;

                let numerology = dataset.numerology !== null ? this.getAllNumerologys.filter(x => x.id === dataset.numerology)[0] : null;

                let asc = dataset.zodiac_ascendant_id !== null ? this.getAllZodiacAscendants.filter(x => x.id === dataset.zodiac_ascendant_id)[0] : null;
                let zodiacAsc = asc !== null ? this.getAllZodiacs.filter(x => x.id === asc.ascendant)[0] : null;

                var date = u.birthDate.split("/");
                var ageDifMs = Date.now() - new Date(date[2], date[1], date[0]);
                var ageDate = new Date(ageDifMs);
                let returnedDate = Math.abs(ageDate.getUTCFullYear() - 1970);

                // console.log(dataset);

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
                }

                key++;
                tableToPush.push(item);
            });        
        },

        getYourTeam() {
            let employer = this.getAllUsers.filter(us => us.code === this.getLoginUser.employerCode)[0];
            let fellows = this.getAllUsers.filter(us => us.teamName === this.getLoginUser.teamName);            

            if (employer){
                fellows.unshift(employer);
                this.title = this.getLoginUser.teamName;
                this.setTablesData(fellows, this.unasignedUsersItems);
            }
        },      
    },
    computed: {
        ...mapGetters(["getLoginUser", "getTeams", "getAllUsers", "getAllUserDatasets", "getAllZodiacs", "getAllZodiacAscendants", "getAllEnneagrams", "getAllMbtis", "getAllBelbins", "getAllNumerologys"]),
        sortOptions() {
            // Create an options list from our field
            return this.fields
            .filter(f => f.sortable)
            .map(f => {
                return { text: f.label, value: f.key }
            })
        }
    },
    mounted() {
        this.getYourTeam();
        console.log(this.getAllUserDatasets);
    },
    filters: {
        deCamelCase : function (value) {           
            return value.replace(/[A-Z]/g, ' $&');
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

.table td, .table th {
    padding: .4rem;
    vertical-align: top;
    border-top: 1px solid #dee2e6;
}
</style>
