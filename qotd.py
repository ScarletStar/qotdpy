import socket
import random

quotes = "./quotes.txt"
server = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
server.bind(("0.0.0.0", 17)) # Bind to port 17
server.listen(5)


def read_random_line(file_path):
    with open(file_path, 'r') as file:
        lines = file.readlines()
        random_index = random.randint(0, len(lines) - 1)
        print("getting line" + random_index + "from file")
        return lines[random_index].strip()



while True:
    print("server up")
    sock, addr = server.accept()
    print("connecting to socket".join(addr))
    quote = read_random_line(quotes)    
    sock.send(f"{quote}\n".encode("utf-8"))
    sock.close()
    print("close connection")


