
class LoginFilters {
	def filters = {
		loginCheck() {
			before = {
				if (session.user)
				{
					return true;
				}
				if (actionName.equals('login'))
				{
					return true;
				}
				if (actionName.equals('auth'))
				{
					return true;
				}
				
				// not authorized
				redirect(controller: 'login', action: 'login')
				return false
			}
		}
	}
}
