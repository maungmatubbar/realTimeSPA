import Token from "./Token";
import AppStorage from './AppStorage'


class User {
    login(formdata) {
        axios.post('/api/auth/login', formdata)
            .then(res => this.responseAfterLogin(res))
            .catch(error => console.log(error.response.data))
    }
    responseAfterLogin(res) {
        const access_token = res.data.access_token
        const username = res.data.user

        if (Token.isValidToken(access_token)) {
            AppStorage.store(username, access_token)
                //redirect and reload 
            window.location = '/forum';
        }

    }
    hasToken() {
        const storedToken = AppStorage.getToken();
        if (storedToken) {
            return Token.isValidToken(storedToken) ? true : this.logout()
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
        if (this.loggedIn()) {
            return AppStorage.getUser()
        }
    }
    id() {
        if (this.loggedIn()) {
            const payload = Token.payload(AppStorage.getToken())
            return payload.sub
        }

    }
    ownId(id) {
        return this.id() == id
    }
    admin() {
        return this.id() == 20
    }



}

export default User = new User();