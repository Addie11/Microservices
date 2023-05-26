import pathlib
import secrets
import string

print(pathlib.Path(__file__).parent)

print(string.ascii_letters)
print(string.digits)
print(string.punctuation)
password_generator = string.ascii_letters + string.digits + string.punctuation
print(secrets.choice(string.ascii_letters))
print("".join(secrets.choice(password_generator) for _ in range(20)))

if secrets.compare_digest("abc", "abc"):
    print("same")
