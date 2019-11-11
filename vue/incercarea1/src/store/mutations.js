export default {
  login: (state, user) => {
    state.loginUser = user;
  },
  logout: state => {
    state.loginUser = {};
  },
  addUser: (state, user) => {
    state.users.push(user);
  },

  changeUsernameError: (state, usernameExists) => {
    state.userError = usernameExists;
  },

  changeCodeError: (state, codeExists) => {
    state.codeError = codeExists;
  },

  setBelbinTestCompleted: (state, status) => {
    state.belbinCompleted = status;
  },

  setBelbinRoles: (state, roles) => {
    state.belbinRoles = roles;
  },

  changeloginUserError: (state, status) => {
    state.loginUserError = status;
  },

  changeloginPassError: (state, status) => {
    state.loginPassError = status;
  },

  setIsUserAdded: (state, isUserAdded) => {
    state.isUserAdded = isUserAdded;
  },

  setLoginSuccess: (state, status) => {
    state.loginSuccess = status;
  },

  setToken: (state, token) => {
    state.token = token;
  },

  updateUser: (state, user) => {
    state.users.filter(su => su.id === user.id)[0] = user;
  },

  setGlobalError(state, error) {
    state.globalError = error;
  },
  setBeforeRouterPath(state, path) {
    state.beforePath = path;
  },
  changeToast(state, toast) {
    state.toast = toast;
  },

  clearToaster: state => {
    state.toast = {};
  },

  setUserBeblinSequance: state => {
    state.userBelbinSequance++;
  },

  setUserMbtiSequance: state => {
    state.userMbtiSequance++;
  },

  setUserEnneagramSequance: state => {
    state.userEnneagramSequance++;
  },

  setUserDatasetSequance: state => {
    state.userDataSetSequance++;
  },

  addUserBelbin: (state, userBelbin) => {
    state.userBelbin.push(userBelbin);
  },

  addUserMbti: (state, userMbti) => {
    state.userMbti.push(userMbti);
  },

  addUserEnneagram: (state, userEnneagram) => {
    state.userEnneagram.push(userEnneagram);
  },

  updateUserDataSet: (state, userDataset) => {
    state.userDataset.forEach(uds => {
      if (uds.id === userDataset.id) {
        uds = userDataset;
      }
    });
  },

  addUserDataSet: (state, userDataset) => {
    state.userDataset.push(userDataset);
  },

  testBelbinCompleted: state => {
    state.belbinCompleted = true;
  },

  testMbtiCompleted: state => {
    state.mbtiCompleted = true;
  },

  testEnneagramCompleted: state => {
    state.enneagramCompleted = true;
  },

  setNewTeam: (state, team) => {
    state.teams.push(team);
  },

  setMbtiRole: (state, role) => {
    state.userMbtiRole = role;
  }
};
