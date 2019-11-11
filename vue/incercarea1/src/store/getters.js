export default {
  getAllUsers: state => state.users,
  getLoginUser: state => state.loginUser,
  getBeforeRouterPath: state => state.beforePath,
  getToast: state => state.toast,

  getAllBelbinAnswers: state => state.belbinAnswers,
  getAllBelbinQuestions: state => state.belbinQuestions,
  getAllBelbins: state => state.belbins,
  getAllEnneagramAnswers: state => state.enneagramAnswers,
  getAllEnneagramQuestions: state => state.enneagramQuestions,
  getAllEnneagrams: state => state.enneagrams,
  getAllMbtiAnswers: state => state.mbtiAnswers,
  getAllMbtiQuestions: state => state.mbtiQuestions,
  getAllMbtis: state => state.mbtis,
  getAllNumerologys: state => state.numerology,
  getAllParameters: state => state.parameter,
  getAllUserBelbins: state => state.userBelbin,
  getAllUserDatasets: state => state.userDataset,
  getAllUserEnneagrams: state => state.userEnneagram,
  getAllUserMbtis: state => state.userMbti,
  getAllZodiacs: state => state.zodiac,
  getAllZodiacAscendants: state => state.zodiacAscendants,
  getTeams: state => state.teams,

  userError: state => state.userError,
  codeError: state => state.codeError,
  isUserAdded: state => state.isUserAdded,
  loginUserError: state => state.loginUserError,
  loginPassError: state => state.loginPassError,
  loginSuccess: state => state.loginSuccess,
  token: state => state.token,

  getUserBelbinSequance: state => state.userBelbinSequance,
  getUserMbtiSequance: state => state.userMbtiSequance,
  getUserEnneagramSequance: state => state.userEnneagramSequance,

  getBelbinRoles: state => {
    const loginUserId = state.loginUser.id;
    const userDataSet = state.userDataset.filter(
      ud => ud.userId === loginUserId
    )[0];

    return {
      first:
        typeof userDataSet !== "undefined"
          ? state.belbins.filter(b => b.id === userDataSet.belbin_first_role)[0]
              .name
          : "",
      second:
        typeof userDataSet !== "undefined"
          ? state.belbins.filter(
              b => b.id === userDataSet.belbin_second_role
            )[0].name
          : ""
    };
  },

  getMbtiRole: state => {
    return state.userMbtiRole;
  },

  getTestCompleted: state => {
    return {
      belbin: state.belbinCompleted,
      mbti: state.mbtiCompleted,
      enneagram: state.enneagramCompleted
    };
  },

  getMbtiCompatibility: () => {
    let x = [
      "INFP",
      "ENFP",
      "INFJ",
      "ENFJ",
      "INTJ",
      "ENTJ",
      "INTP",
      "ENTP",
      "ISFP",
      "ESFP",
      "ISTP",
      "ESTP",
      "ISFJ",
      "ESFJ",
      "ISTJ",
      "ESTJ"
    ];

    let matrix = [
      [4, 4, 4, 5, 4, 5, 4, 4, 1, 1, 1, 1, 1, 1, 1, 1],
      [4, 4, 5, 4, 5, 4, 4, 4, 1, 1, 1, 1, 1, 1, 1, 1],
      [4, 5, 4, 4, 4, 4, 4, 5, 1, 1, 1, 1, 1, 1, 1, 1],
      [5, 4, 4, 4, 4, 4, 4, 4, 5, 1, 1, 1, 1, 1, 1, 1],
      [4, 5, 4, 4, 4, 4, 4, 5, 3, 3, 3, 3, 2, 2, 2, 2],
      [5, 4, 4, 4, 4, 4, 5, 4, 3, 3, 3, 3, 3, 3, 3, 3],
      [4, 4, 4, 4, 4, 5, 4, 4, 3, 3, 3, 3, 2, 2, 2, 5],
      [4, 4, 5, 4, 5, 4, 4, 4, 3, 3, 3, 3, 2, 2, 2, 2],
      [1, 1, 1, 5, 3, 3, 3, 3, 2, 2, 2, 2, 3, 5, 3, 5],
      [1, 1, 1, 1, 3, 3, 3, 3, 2, 2, 2, 2, 5, 3, 5, 3],
      [1, 1, 1, 1, 3, 3, 3, 3, 2, 2, 2, 2, 3, 5, 3, 5],
      [1, 1, 1, 1, 3, 3, 3, 3, 2, 2, 2, 2, 5, 3, 5, 3],
      [1, 1, 1, 1, 2, 3, 2, 2, 3, 5, 3, 5, 4, 4, 4, 4],
      [1, 1, 1, 1, 2, 3, 2, 2, 5, 3, 5, 3, 4, 4, 4, 4],
      [1, 1, 1, 1, 2, 3, 2, 2, 3, 5, 3, 5, 4, 4, 4, 4],
      [1, 1, 1, 1, 2, 3, 5, 2, 5, 3, 5, 3, 4, 4, 4, 4]
    ];

    return {
      x: x,
      matrix: matrix
    };
  },

  getEnneagramCompatibility: () => {
    return [
      [8, 7, 6, 5, 4, 3, 2, 1, 10],
      [7, 6, 5, 4, 3, 2, 1, 10, 9],
      [6, 5, 4, 3, 2, 1, 10, 9, 8],
      [5, 4, 3, 2, 1, 10, 9, 8, 7],
      [4, 3, 2, 1, 10, 9, 8, 7, 6],
      [3, 2, 1, 10, 9, 8, 7, 6, 5],
      [2, 1, 10, 9, 8, 7, 6, 5, 4],
      [1, 10, 9, 8, 7, 6, 5, 4, 3],
      [10, 9, 8, 7, 6, 5, 4, 3, 2]
    ];
  }
};
