class Token {
    isValidToken(token) {
        const payload = this.payload(token)
            // console.log(payload.iss)
        if (payload) {
            return payload.iss == "http://localhost:8000/api/auth/login" || "http://localhost:8000/api/auth/signup" ? true : false
        }
        return false
    }
    payload(token) {
        const payload = token.split('.')[1]
            //console.log(token);
        return this.decode(payload);
    }
    decode(payload) {
        return JSON.parse(atob(payload)) //atob = base 64 decoded
    }
}

export default Token = new Token();