import Token from "./Token";
import AppStorage from './AppStorage'

class User {
    login(formdata) {
        axios.post('/api/auth/login', formdata)
            .then(res => this.responseAfterLogin(res))
            .catch(error => console.log(error.response.data))
    }
    responseAfterLogin(res) {
        const username = res.data.user
        const access_token = res.data.access_token
        console.log(access_token)
        if (Token.isValidToken(access_token)) {
            AppStorage.store(username, access_token)
                //redirect and reload 
            window.location = '/forum';
        }

    }
    hasToken() {
        const storedToken = AppStorage.getToken();
        if (storedToken) {
            return Token.isValidToken(storedToken) ? true : false
        }
        return false
    }
    loggedIn() {
        return this.hasToken()
    }
    logout() {
        AppStorage.clear()
            //reload page and redirect 
        window.location = '/forum';
    }
    name() {
        if (this.loggedIn) {
            return AppStorage.getUser()
        }
    }
    id() {
        if (this.loggedIn) {
            const payload = Token.payload(AppStorage.getToken)
            return payload.sub
        }
    }

}

export default User = new User();