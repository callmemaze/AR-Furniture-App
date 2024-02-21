class Exceptions {
  final String message;

  const Exceptions([this.message = "Something went wrong!"]);

  factory Exceptions.code(String code) {
    switch (code) {
      case 'email-already-in-use':
        return const Exceptions('User already exist');
      case 'weak-password':
        return const Exceptions('Please use strong password');
      default:
        return const Exceptions();
    }
  }
}
