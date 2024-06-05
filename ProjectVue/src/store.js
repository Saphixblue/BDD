import { createStore } from "vuex";
import db from './firebase.js';
import { collection, getDocs } from "firebase/firestore";

const store = createStore({
    state: {
        participants: [],
    },
    mutations: {
        setParticipantsData(state, data) {
            state.participants = data;
        },
    },
    actions: {
        async fetchParticipantsData({ commit }) {
            try {
                const querySnapshot = await getDocs(collection(db, "Utilisateurs"));
                const data = querySnapshot.docs.map(doc => doc.data());
                commit('setParticipantsData', data);
            } catch (error) {
                console.error('Error fetching data:', error);
            }
        },
    },
});

export default store;