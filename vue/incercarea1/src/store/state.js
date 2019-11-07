import users from "@/data/users"
import belbinAnswers from "@/data/belbinAnswers";
import belbinQuestions from "@/data/belbinQuestions";
import belbins from "@/data/belbins";
import enneagramAnswers from "@/data/enneagramAnswers";
import enneagramQuestions from "@/data/enneagramQuestions";
import enneagrams from "@/data/enneagrams";
import mbtiAnswers from "@/data/mbtiAnswers";
import mbtiQuestions from "@/data/mbtiQuestions";
import mbtis from "@/data/mbtis";
import numerology from "@/data/numerology";
import parameter from "@/data/parameter";
import userBelbin from "@/data/userBelbin";
import userDataset from "@/data/userDataset";
import userEnneagram from "@/data/userEnneagram";
import userMbti from "@/data/userMbti";
import zodiac from "@/data/zodiac";
import zodiacAscendants from "@/data/zodiacAscendants";
import teams from "@/data/teams";


import loginUser from "@/data/login";

export default {
    users,
    loginUser,
    globalError: "",
    beforePath: "/",
    toast: {},

    belbinAnswers,
    belbinQuestions,
    belbins,
    enneagramAnswers,
    enneagramQuestions,
    enneagrams,
    mbtiAnswers,
    mbtiQuestions,
    mbtis,
    numerology,
    parameter,
    userBelbin,
    userDataset,
    userEnneagram,
    userMbti,
    zodiac,
    zodiacAscendants,
    teams,

    userBelbinSequance: 1,
    userDataSetSequance: 1,
    userMbtiSequance: 1,
    userEnneagramSequance: 1,

    belbinCompleted: false,
    mbtiCompleted: false,
    enneagramCompleted: false,

    userError: false,
    codeError: false,
    isUserAdded: false,
}