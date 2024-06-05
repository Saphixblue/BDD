// Import the functions you need from the SDKs you need
/* eslint-disable */
import { initializeApp } from "firebase/app";
import { getAnalytics } from "firebase/analytics";
import { getFirestore } from "firebase/firestore";
// TODO: Add SDKs for Firebase products that you want to use
// https://firebase.google.com/docs/web/setup#available-libraries

// Your web app's Firebase configuration
// For Firebase JS SDK v7.20.0 and later, measurementId is optional
const firebaseConfig = {
  apiKey: "AIzaSyAoDTEz5J-ZtBnMWpbPzgKTRRfxWaSzs4Y",
  authDomain: "presentationbddsecurity.firebaseapp.com",
  projectId: "presentationbddsecurity",
  storageBucket: "presentationbddsecurity.appspot.com",
  messagingSenderId: "561136589743",
  appId: "1:561136589743:web:c8f37763705dcc5235ad5a",
  measurementId: "G-M6SC6N1L75"
};

// Initialize Firebase
const app = initializeApp(firebaseConfig);
const analytics = getAnalytics(app);

//obtention de l'instance de Firestore
const db = getFirestore(app);

//
export default db;
