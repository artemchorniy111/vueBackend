class User {
    // #id = 0;
    constructor(dbRes) {
        this._id = dbRes.id;
        this.fname = dbRes.fname;
        this.lname = dbRes.lname;
        this.username = dbRes.username;
        this.email = dbRes.email;
        this._mypassword = dbRes.mypassword;
    }

    getInfo(idFlag = false) {
        const responseData = {
            fname: this.fname,
            lname: this.lname,
            email: this.email,
            username: this.username
        };
        if (idFlag) {
            responseData.id = this._id;
        }
        return responseData;
    }

    getId() {
        return this._id;
    }
}

module.exports = { User };