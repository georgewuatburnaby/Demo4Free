package demo4free

class LoginController {

	def index() {
	}

	def login() {
	}

	def auth() {
		String username = params.username;
		String password = params["password"];

		if (username.equals("michael") && password.equals("michael"))
		{
			session.user = "michael";
			redirect(controller: 'headingList', action: 'show');
		}
		else
			redirect(controller: 'login', action: 'login')
	}
}
