import router from "@/router";

export default {
    login: ({commit}, user) => {
        commit("login", user);
    },
    logout: ({commit}) => {
        commit("logout");
        router.push("/login");
    },

    addUser: ({commit}, user) => {
        commit("addUser", user);
    },

    changeToast: ({commit}, toast) => {
        commit("changeToast", toast)
    },
    clearToaster: ({commit}) => {
        commit("clearToaster");
    },

    setUserBeblinSequance: ({commit}) => {
        commit("setUserBeblinSequance");
    },

    setUserMbtiSequance: ({commit}) => {
        commit("setUserMbtiSequance");
    },

    setUserDatasetSequance: ({commit}) => {
        commit("setUserDatasetSequance");
    },

    setUserEnneagramSequance: ({commit}) => {
        commit("setUserEnneagramSequance");
    },

    addUserBelbin : ({commit}, userBelbin) => {
        commit("addUserBelbin", userBelbin);
    },

    addUserMbti : ({commit}, userMbti) => {
        commit("addUserMbti", userMbti);
    },   
    
    addUserEnneagram : ({commit}, userEnneagram) => {
        commit("addUserEnneagram", userEnneagram);
    },   

    computeBelbinRole: ({state, dispatch}) => {
        let belbinScore = [0,0,0,0,0,0,0,0]; // rezultatele inițiale fiecărei întrebări
        let belbinScoreObj = [{id:1,score:0},{id:2,score:0},{id:3,score:0},{id:4,score:0},{id:5,score:0},{id:6,score:0},{id:7,score:0},{id:8,score:0},];

        const filteredUserBelbin = state.userBelbin.filter(ub => ub.userId === state.loginUser.id);

        filteredUserBelbin.forEach(ub => { // însumarea rezultatelor. Ex: belbinScore va deveni [4,8,5,7,2,1,4,9]
            if (ub.answerScore > 0){
                belbinScore[ub.answerBelbinId-1] += ub.answerScore;   
                belbinScoreObj[ub.answerBelbinId-1].score += ub.answerScore;   
            }
        });

        const firstRoleScore = Math.max(...belbinScore); // se extrage din belbinScore cel mai mare număr, deoarece el reprezintă rolul principal
        let firstRoleId = 0; 

        belbinScoreObj.forEach(bso => {
            if (bso.score === firstRoleScore){
                firstRoleId = bso.id; // id-ul din baza de date a rolului belbin principal
            }
        });

        belbinScore.splice(belbinScore.indexOf(firstRoleScore), 1); // se elimină din vectorul belbinScore, rolul principal pentru a-l alfa pe cel secundar

        const secondRoleScore = Math.max(...belbinScore); // daca sunt doua valori egale?
        let secondRoleId = 0;

        belbinScoreObj.forEach(bso => {
            if (bso.score === secondRoleScore){ // daca sunt doua valori egale o ia pe ultima din array
                secondRoleId = bso.id; // id-ul din baza de date a rolului belbin principal
            }
        });

        const roles = {
            firstRoleId: firstRoleId,
            secondRoleId: secondRoleId,
            userId: state.loginUser.id
        };

        dispatch("setBelbinUserDataSet", roles);
    },

    setBelbinUserDataSet: ({commit, state, dispatch}, roles) => {   
        let userDatasetExists = false;

        state.userDataset.forEach(uds => {
            if (uds.userId === roles.userId){
                userDatasetExists = true;

                uds.belbin_first_role = roles.firstRoleId;
                uds.belbin_second_role = roles.secondRoleId;
        
                commit("updateUserDataSet", uds);

            }
        });

        if (!userDatasetExists) {
            let userDataSet = {
                id : state.userDataSetSequance,
                userId : roles.userId,
                zodiac_id : null,
                zodiac_ascendant_id : null,
                numerology : null,
                belbin_first_role : roles.firstRoleId,
                belbin_second_role : roles.secondRoleId,
                MBTI_role : null,
                eneagram_first_role : null,
                eneagram_second_role : null,
                eneagram_third_role : null,
            }
    
            commit("addUserDataSet", userDataSet);
            dispatch("setUserDatasetSequance");
        }

        commit("testBelbinCompleted");
    },

    computeMbtiType: ({state, dispatch}) => {   
        const userMbtis = state.userMbti.filter(um => um.userId === state.loginUser.id);;

        let a = {"E": 0, "I":0};
        let b = {"S": 0, "N":0};
        let c = {"T": 0, "F":0};
        let d = {"J": 0, "P":0};

        userMbtis.forEach(um => {
            const umType = um.answerMbtiType

            if (umType in a){
                a[umType] += 1;
            }
            if (umType in b){
                b[umType] += 1;
            }
            if (umType in c){
                c[umType] += 1;
            }
            if (umType in d){
                d[umType] += 1;
            }
        });

        let aType = a["E"] >= a["I"] ? "E" : "I";
        let bType = b["S"] >= b["N"] ? "S" : "N";
        let cType = c["T"] >= c["F"] ? "T" : "F";
        let dType = d["J"] >= d["P"] ? "J" : "P";

        let mbtiType = aType + bType + cType + dType;

        const role = {
            role: mbtiType,
            userId: state.loginUser.id
        };

        dispatch("setMbtiUserDataSet", role);

    },

    setMbtiUserDataSet: ({commit, state, dispatch}, role) => {   
        let userDatasetExists = false;

        state.userDataset.forEach(uds => {
            if (uds.userId === role.userId){
                userDatasetExists = true;

                uds.MBTI_role = role.role;
        
                commit("updateUserDataSet", uds);
            }
        });

        if (!userDatasetExists) {
            let userDataSet = {
                id : state.userDataSetSequance,
                userId : role.userId,
                zodiac_id : null,
                zodiac_ascendant_id : null,
                numerology : null,
                belbin_first_role : null,
                belbin_second_role : null,
                MBTI_role : role.role,
                eneagram_first_role : null,
                eneagram_second_role : null,
                eneagram_third_role : null,
            }
    
            commit("addUserDataSet", userDataSet);
            dispatch("setUserDatasetSequance");
        }

        commit("testMbtiCompleted");
    },

    computeEnneagramType: ({state, dispatch}) => {   
        const userEnneagram = state.userEnneagram.filter(ue => ue.userId === state.loginUser.id);
        const enneagrams = state.enneagrams;
        let scoreObj = [];
        let firstRoleId = 0;
        let secondRoleId = 0;
        let thirdRoleId = 0;
        let score = [0,0,0,0,0,0,0,0,0];

        userEnneagram.forEach(eu => {
            const ueType = eu.answerEnneagramType
            score[ueType-1] += 1;
        });

        score.forEach((s, i) =>{
            scoreObj.push({id: i+1, score: s});
        });

        let maxScore = Math.max(...score);
        scoreObj.forEach(so => {
            if (so.score === maxScore){
                firstRoleId = so.id;
            }
        });
        score.splice(score.indexOf(maxScore), 1);

        maxScore = Math.max(...score);
        scoreObj.forEach(so => {
            if (so.score === maxScore){
                secondRoleId = so.id;
            }
        });
        score.splice(score.indexOf(maxScore), 1);

        maxScore = Math.max(...score);
        scoreObj.forEach(so => {
            if (so.score === maxScore){
                thirdRoleId = so.id;
            }
        });

        const roles = {
            firstRoleId: firstRoleId,
            secondRoleId: secondRoleId,
            thirdRoleId: thirdRoleId,
            userId: state.loginUser.id
        };

        dispatch("setEnneagramUserDataSet", roles);

    },

    setEnneagramUserDataSet: ({commit, state}, roles) => {   
        let userDatasetExists = false;

        state.userDataset.forEach(uds => {
            if (uds.userId === roles.userId){
                userDatasetExists = true;

                uds.eneagram_first_role = roles.firstRoleId,
                uds.eneagram_second_role = roles.secondRoleId,
                uds.eneagram_third_role = roles.thirdRoleId,
        
                commit("updateUserDataSet", uds);
            }
        });

        if (!userDatasetExists) {
            let userDataSet = {
                id : state.userDataSetSequance,
                userId : roles.userId,
                zodiac_id : null,
                zodiac_ascendant_id : null,
                numerology : null,
                belbin_first_role : null,
                belbin_second_role : null,
                MBTI_role : null,
                eneagram_first_role : roles.firstRoleId,
                eneagram_second_role : roles.secondRoleId,
                eneagram_third_role : roles.thirdRoleId,
            }
    
            commit("addUserDataSet", userDataSet);
            commit("setUserDatasetSequance");
        }      

        commit("testEnneagramCompleted");
    },

    computeZodiac: ({state, commit}) => {  
        let userDatasetExists = false;
        const userDate = state.loginUser.birthDate;
        const zodiac = state.zodiac;

        let userZodiacId = 0;

        zodiac.forEach(z => {
            const dateFrom = z.from;
            const dateTo = z.to;
            const dateCheck = userDate;

            const d1 = dateFrom.split("/");
            const d2 = dateTo.split("/");
            const c = dateCheck.split("/");

    
            const from = new Date(2000, parseInt(d1[0])-1, d1[1]);  // -1 because months are from 0 to 11
            const to   = new Date(2000, parseInt(d2[0])-1, d2[1]);
            const check = new Date(2000, parseInt(c[1])-1, c[0]);

            if(check >= from && check <= to){    
                userZodiacId = z.id;
            }
        });

        state.userDataset.forEach(uds => {
            if (uds.userId === state.loginUser.id){
                userDatasetExists = true;

                uds.zodiac_id = userZodiacId;
        
                commit("updateUserDataSet", uds);
            }
        });

        if (!userDatasetExists) {
            let userDataSet = {
                id : state.userDataSetSequance,
                userId : state.loginUser.id,
                zodiac_id : userZodiacId,
                zodiac_ascendant_id : null,
                numerology : null,
                belbin_first_role : null,
                belbin_second_role : null,
                MBTI_role : null,
                eneagram_first_role : null,
                eneagram_second_role : null,
                eneagram_third_role : null,
            }
    
            commit("addUserDataSet", userDataSet);
            commit("setUserDatasetSequance");
        }      

    },

    computeZodiacAscendants: ({state, commit}) => {  
        let userDatasetExists = false;
        const loginUser = state.loginUser;
        const userTime = loginUser.time;
        const zodiacAsc = state.zodiacAscendants;

        let userZodiacId = 0;

        zodiacAsc.filter(za => za.zodiac === state.userDataset.filter(ud => ud.userId === loginUser.id)[0].zodiac_id).forEach(z => {
            const splitUserTime = userTime.split(":");
            const time = z.time_range.split("-");
            const timeFrom = time[0].trim();
            const timeTo = time[1].trim();

            const splitTimeFrom = timeFrom.split(":");
            const splitTimeTo = timeTo.split(":");

            const fromTimeMins = parseInt(splitTimeFrom[0]) * 60 + parseInt(splitTimeFrom[1]);
            const toTimeMins = parseInt(splitTimeTo[0]) * 60 + parseInt(splitTimeTo[1]);
            const userTimeMins = parseInt(splitUserTime[0]) * 60 + parseInt(splitUserTime[1]);


            if(userTimeMins >= fromTimeMins && userTimeMins <= toTimeMins){    
                userZodiacId = z.id;
            }
        });

        state.userDataset.forEach(uds => {
            if (uds.userId === state.loginUser.id){
                userDatasetExists = true;

                uds.zodiac_ascendant_id = userZodiacId;
        
                commit("updateUserDataSet", uds);
            }
        });

        if (!userDatasetExists) {
            let userDataSet = {
                id : state.userDataSetSequance,
                userId : state.loginUser.id,
                zodiac_id : null,
                zodiac_ascendant_id : userZodiacId,
                numerology : null,
                belbin_first_role : null,
                belbin_second_role : null,
                MBTI_role : null,
                eneagram_first_role : null,
                eneagram_second_role : null,
                eneagram_third_role : null,
            }
    
            commit("addUserDataSet", userDataSet);
            commit("setUserDatasetSequance");
        }      

    },

    computeNumerology: ({state, commit}) => { 
        const loginUser = state.loginUser;
        const numerology = state.numerology;
        let userDatasetExists = false;

        const userDay = loginUser.birthDate.split("/")[0];
        let numerologyId = 0;

        numerology.forEach(n => {
            if(parseInt(n.day_of_month) === parseInt(userDay)){
                numerologyId = n.id
            }
        });

        state.userDataset.forEach(uds => {
            if (uds.userId === state.loginUser.id){
                userDatasetExists = true;

                uds.numerology = numerologyId;
        
                commit("updateUserDataSet", uds);
            }
        });

        if (!userDatasetExists) {
            let userDataSet = {
                id : state.userDataSetSequance,
                userId : state.loginUser.id,
                zodiac_id : null,
                zodiac_ascendant_id : null,
                numerology : numerologyId,
                belbin_first_role : null,
                belbin_second_role : null,
                MBTI_role : null,
                eneagram_first_role : null,
                eneagram_second_role : null,
                eneagram_third_role : null,
            }
    
            commit("addUserDataSet", userDataSet);
            commit("setUserDatasetSequance");
        }      
        
    },

    setNewTeam: ({commit}, teamName) => {
        let team = {
            name: teamName
        };
        commit("setNewTeam", team);
    },

    updateUser: ({commit}, user) => {
        commit("updateUser", user)
    },


}