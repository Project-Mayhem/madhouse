/**
 * UserController
 *
 * @description :: Server-side logic for managing users
 * @help        :: See http://sailsjs.org/#!/documentation/concepts/Controllers
 */

module.exports = {

	//It will render the “Views\employee\index.ejs”
	index: function (req, res) {
    res.view(null, {
        title: "User"
    });
	}	
};
